function [e1EDGES_bw] = fun_e1edgedetection(e1,gamma,BOUNDARYHOLES,e1_T_High,e1_T_Low)

dimv=size(e1,1);
dimh=size(e1,2); 

% Adjusting directions to nearest 0, 45, 90, or 135 degree
arah2=zeros(dimv, dimh);
gamma_degree=gamma*180/pi;

for i = 1  : dimv
    for j = 1 : dimh
        if (gamma_degree(i, j) >= -22.5 ) && (gamma_degree(i, j) < 22.5)
            arah2(i, j) = 0;
        elseif (gamma_degree(i, j) >= 22.5) && (gamma_degree(i, j) < 67.5)
            arah2(i, j) = 45;
        elseif (gamma_degree(i, j) >= 67.5 || gamma_degree(i, j) < -67.5) 
            arah2(i, j) = 90;
        elseif (gamma_degree(i, j) >= -67.5 && gamma_degree(i, j) < -22.5)
            arah2(i, j) = -45;
        end
    end
end

% Non-Maximum Supression
NMS = zeros (dimv, dimh);

for i=2:dimv-1
    for j=2:dimh-1
        if (arah2(i,j)==0)
            NMS(i,j) = (e1(i,j) == max([e1(i,j), e1(i,j+1), e1(i,j-1)]));
        elseif (arah2(i,j)==45)
            NMS(i,j) = (e1(i,j) == max([e1(i,j), e1(i+1,j-1), e1(i-1,j+1)]));
        elseif (arah2(i,j)==90)
            NMS(i,j) = (e1(i,j) == max([e1(i,j), e1(i+1,j), e1(i-1,j)]));
        elseif (arah2(i,j)==-45)
            NMS(i,j) = (e1(i,j) == max([e1(i,j), e1(i+1,j+1), e1(i-1,j-1)]));
        end
        
        % Check boundary connection
        conn=BOUNDARYHOLES((-1:1)+i,(-1:1)+j);
        if sum(conn(:))~=0
            NMS(i,j)=0;
        end
    end
end

NMS=NMS.*e1;

%Hysteresis Thresholding (Double-Threshold)
e1EDGES_bw=(NMS>=e1_T_High);
CRACKS_old=e1EDGES_bw*0;
check=e1EDGES_bw-CRACKS_old;
check=sum(check(:));
while check~=0
    CRACKS_old=e1EDGES_bw;
    for i = 1  : dimv
        for j = 1 : dimh
            if NMS(i,j)>=e1_T_Low
                
                % 8-connected neighbourhood
                if ( e1EDGES_bw(i+1,j)==1 || e1EDGES_bw(i-1,j)==1 || e1EDGES_bw(i,j+1)==1 || e1EDGES_bw(i,j-1)==1 || e1EDGES_bw(i-1, j-1)==1 || e1EDGES_bw(i-1, j+1)==1 || e1EDGES_bw(i+1, j+1)==1 || e1EDGES_bw(i+1, j-1)==1)
                    e1EDGES_bw(i,j) = 1;
                end
            end
        end
    end
    check=e1EDGES_bw-CRACKS_old;
    check=sum(check(:));
end

end

