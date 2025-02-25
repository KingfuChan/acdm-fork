function [x,y,branchnumber,branchlength] = Tab1_getCrackLinePlotData(app,BRANCH,NODE)
            
            x=[];
            y=[];
            branchnumber=[];
            branchlength=[];
            for i=1:length(BRANCH)
                
                if ~isempty(BRANCH(i).nodes)
                    % node's coordinate of BRANCH(i)
                    nx=NODE(BRANCH(i).nodes(1)).x;
                    ny=NODE(BRANCH(i).nodes(1)).y;
                    if length(BRANCH(i).nodes)==2
                        nx=[nx;NODE(BRANCH(i).nodes(2)).x];
                        ny=[ny;NODE(BRANCH(i).nodes(2)).y];
                    end
                    
                    % node at FIRST coordinate of crack (only if there is a node)
                    nx1=[];
                    ny1=[];
                    d=zeros(length(nx),1);
                    for j=1:length(nx)
                        d(j)=pdist([BRANCH(i).x(1),BRANCH(i).y(1);nx(j),ny(j)],'euclidean');
                    end
                    
                    [dmin,ind]=min(d);
                    if dmin<=sqrt(2)*app.AppData.DICProperties.Step
                        nx1=nx(ind);
                        ny1=ny(ind);
                    end
                    
                    x=[x;nan;[nx1;BRANCH(i).x]];
                    y=[y;nan;[ny1;BRANCH(i).y]];
                    branchnumber=[branchnumber;nan;ones(length([nx1;BRANCH(i).x]),1)*BRANCH(i).no];
                    branchlength=[branchlength;nan;ones(length([nx1;BRANCH(i).x]),1)*length([nx1;BRANCH(i).x])];
                    
                    if length(BRANCH(i).x)==1 && length(BRANCH(i).nodes)>1
                        
                        nx1=[];
                        ny1=[];
                        d(ind)=inf;
                        
                        [dmin,ind]=min(d);
                        if dmin<=sqrt(2)*app.AppData.DICProperties.Step
                            nx1=nx(ind);
                            ny1=ny(ind);
                        end
                        x=[x;nx1];
                        y=[y;ny1];
                        branchnumber=[branchnumber;BRANCH(i).no];
                        branchlength=[branchlength;1];
                    elseif length(BRANCH(i).x)>1
                        % node at FIRST coordinate of crack (only if there is a node)
                        nx2=[];
                        ny2=[];
                        d=zeros(length(nx),1);
                        for j=1:length(nx)
                            d(j)=pdist([BRANCH(i).x(end),BRANCH(i).y(end);nx(j),ny(j)],'euclidean');
                        end
                        
                        [dmin,ind]=min(d);
                        if dmin<=sqrt(2)*app.AppData.DICProperties.Step
                            nx2=nx(ind);
                            ny2=ny(ind);
                        end
                        
                        x=[x;nan;[BRANCH(i).x;nx2]];
                        y=[y;nan;[BRANCH(i).y;ny2]];
                        branchnumber=[branchnumber;nan;ones(length([nx2;BRANCH(i).x]),1)*BRANCH(i).no];
                        branchlength=[branchlength;nan;ones(length([nx2;BRANCH(i).x]),1)*length([nx2;BRANCH(i).x])];
                    end
                else
                    x=[x;nan;[BRANCH(i).x]];
                    y=[y;nan;[BRANCH(i).y]];
                    branchnumber=[branchnumber;nan;ones(length([BRANCH(i).x]),1)*BRANCH(i).no];
                    branchlength=[branchlength;nan;ones(length([BRANCH(i).x]),1)*length([BRANCH(i).x])];
                end
            end
            
            for i=1:length(NODE)
                if length(NODE(i).x)>1
                    x=[x;nan;[NODE(i).x]];
                    y=[y;nan;[NODE(i).y]];
                    branchnumber=[branchnumber;nan;ones(length(NODE(i).x),1)*0];
                    branchlength=[branchlength;nan;ones(length(NODE(i).x),1)*length(NODE(i).x)];
                end
            end
        end