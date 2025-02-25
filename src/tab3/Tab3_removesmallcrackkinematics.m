function [clean_width, clean_slip] = Tab3_removesmallcrackkinematics(width,slip,minValue,minLength)
    width(isnan(width))=0;
    slip(isnan(slip))=0;
    
    w_bw=zeros(size(width));
    w_bw(width>minValue)=1;

    clean_width=nan(size(width));
    clean_slip=nan(size(width));

    for i=1:size(width,1) % per crack point
        xi=w_bw(i,:);

        %ensure x start with zero;
        xi=[0,xi];

        %ones
        f = find(diff([0,xi,0],1,2));
        one = f(:,2:2:end)-f(:,1:2:end-1);

        %zeros
        f = find(diff([0,1-xi,0],1,2));
        zero = f(2:2:end)-f(1:2:end-1);

        index=find(one>=minLength);
        first=sum(zero(1:index))+sum(one(1:index-1));

        if first>0
            clean_width(i,first:end)=width(i,first:end);
            clean_slip(i,first:end)=slip(i,first:end);
        end
    end
assignin('base','clean_width',clean_width);
assignin('base','clean_slip',clean_slip);