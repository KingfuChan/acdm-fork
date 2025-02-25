function CONNECTEDCRACKS = fun_branchconnection(THINCRACKS,e1_filled,BOUNDARYHOLES,e1_T_High,e1_T_Low)
% Search for Branch Points
BP=bwmorph(THINCRACKS,'branchpoints');
BP=bwmorph(BP,'dilate');
ISOBRANCH_labeled=bwlabel(THINCRACKS-BP>0);
BRANCH_labeled=bwlabel(THINCRACKS);

[m,n]=size(THINCRACKS);

CONNECTEDCRACKS=THINCRACKS;
for branch_i=1:max(BRANCH_labeled(:))
    BRANCH_i=(BRANCH_labeled==branch_i);
    EP_i=bwmorph(BRANCH_i,'endpoints');
    
    EP_i_labeled=bwlabel(EP_i);
    
    for ep_i=1:max(EP_i_labeled(:))  
        oo=0;
        [y_0,x_0]=find(EP_i_labeled==ep_i);
        if length(y_0)>1 % only occurs for crack with length==2
                break
        end
        
        
        if sum(sum(BOUNDARYHOLES((-1:1)+y_0,(-1:1)+x_0)))>0
            break
        end

        
        ISOBRANCH_i=(ISOBRANCH_labeled==ISOBRANCH_labeled(y_0,x_0));
        while oo<100
            oo=oo+1;
            [y_i,x_i]=find(EP_i_labeled==ep_i);
            if length(y_i)>1 % only occurs for crack with length==2
                break
            end
            nextmax=0;
            nextmax_x=x_i;
            nextmax_y=y_i;
            for i=-1:1
                for j=-1:1
                    if min((-1:1)+j+y_i)<1 || max((-1:1)+j+y_i)>m
                        break
                    end
                    if min((-1:1)+i+x_i)<1 || max((-1:1)+i+x_i)>n
                        break
                    end
                    
                    NEXTMAX_neighbour=BRANCH_i((-1:1)+j+y_i,(-1:1)+i+x_i);
                    connectivity=sum(NEXTMAX_neighbour(:));
                    conn4=NEXTMAX_neighbour(1,2)+NEXTMAX_neighbour(2,1)+NEXTMAX_neighbour(2,3)+NEXTMAX_neighbour(3,2);
%                     
%                     if e1_filled(y_i+j,x_i+i)>nextmax && BRANCH_i(y_i+j,x_i+i)==0 && connectivity<2
%                         nextmax=e1_filled(y_i+j,x_i+i);
%                         nextmax_x=x_i+i;
%                         nextmax_y=y_i+j;
%                     end
                    
                    if e1_filled(y_i+j,x_i+i)>nextmax && BRANCH_i(y_i+j,x_i+i)==0 %%&& connectivity<3 && conn4<2
                        nextmax=e1_filled(y_i+j,x_i+i);
                        nextmax_x=x_i+i;
                        nextmax_y=y_i+j;
                    
                    end
                end
            end

            NEXTMAX_neighbour=ISOBRANCH_i((-1:1)+nextmax_y,(-1:1)+nextmax_x);
            connectivity=sum(NEXTMAX_neighbour(:));
            conn4=NEXTMAX_neighbour(1,2)+NEXTMAX_neighbour(2,1)+NEXTMAX_neighbour(2,3)+NEXTMAX_neighbour(3,2);
           
            
            % pre-break conditions
            if connectivity>2 % check connectivity to same branches
                break
            end
            
            if e1_filled(nextmax_y,nextmax_x)<e1_filled(y_0,x_0) % connection points need to contain higher e1-values than the intial endpoint
                if e1_filled(nextmax_y,nextmax_x)<e1_T_High
                    break
                end
            end

            if e1_filled(nextmax_y,nextmax_x)<e1_T_Low % check T_Low
                break
            end
            
            cc=BOUNDARYHOLES((-1:1)+nextmax_y,(-1:1)+nextmax_x);
            if sum(cc(:))>0
                break
            end
            
            NEXTMAX_neighbour=CONNECTEDCRACKS((-1:1)+nextmax_y,(-1:1)+nextmax_x)-BRANCH_i((-1:1)+nextmax_y,(-1:1)+nextmax_x);
            NEXTMAX_neighbour=NEXTMAX_neighbour>0;
            connectivity=sum(NEXTMAX_neighbour(:));
            
            % Add pixel Crack
            ISOBRANCH_i(nextmax_y,nextmax_x)=1;
            BRANCH_i(nextmax_y,nextmax_x)=1;
            CONNECTEDCRACKS(nextmax_y,nextmax_x)=1;
            
            % Change Endpoint
            EP_i_labeled(y_i,x_i)=0;
            EP_i_labeled(nextmax_y,nextmax_x)=ep_i;
           
             
            % post-break conditions
            if connectivity>1 % check connectivity to other branches
                break
            end
            
            if nextmax_x<3 || nextmax_y<3 || nextmax_x>size(THINCRACKS,2)-3 || nextmax_y>size(THINCRACKS,1)-3
                break
            end
            
            
        end
    end
end
% figure(9)
% imshow(CONNECTEDCRACKS)
%CONNECTEDCRACKS=(CONNECTEDCRACKS+BP.*THINCRACKS>0);

end

