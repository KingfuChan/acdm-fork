function [reliability] = Tab3_reliableCP(CImg, O, A1, A2, B1, B2, ss, st, checkReliability)
%reliableMP: checks wether a Crack Point is reliable or not

if ~checkReliability
    reliability = NaN;
    return
end
% reliablility = 1, no intersections

% reliablility = nan, at least on kinematic points contains nan as
% coordinates

% reliablility = 0, there exist intersections of the connection line A2-A1-B1-B2 with
% the crack pattern

% reliablility > 0 && reliablility < 1, there exist NO intersections of theconnection line A2-A1-B1-B2 with
% the crack pattern, however with the subsets of the kinematic points
% (negativ integer indicates how many intersections exists)


%CImg: Crack Image,
%O: considered Crack Point [matrix row, matrix column]
%A1-B2: Measuring Points [matrix row, matrix column]
%ss: subset size
%st: step size

% if sum(A2 == B2) < 2
%     figure(5)
%     clf
%     cdata = repmat(CImg,[1,1,3]);
%     cdata(O(1),O(2),2:3) = 0;
%     im = imagesc(cdata);
%     axis equal
% end

if sum(isnan([O,A1,A2,B1,B2]))>0 % check if kinematic points are valid
    reliability = nan;
    return
end

ImgSS = zeros(length(CImg(:,1)), length(CImg(1,:))); % Img with subsets of measuring points A1-B2
ImgSS(A1(1), A1(2)) = 1;
ImgSS(A2(1), A2(2)) = 1;
ImgSS(B1(1), B1(2)) = 1;
ImgSS(B2(1), B2(2)) = 1;
ImgSS = imdilate(ImgSS, ones(2*floor((ss/st)/2)+1));

ImgOA = zeros(length(CImg(:,1)), length(CImg(1,:))); % Img with connection line between O and A1
ImgOA(O(1),O(2)) = 1;
ImgOA(A1(1), A1(2)) = 1;
ImgOA = bwconvhull(ImgOA);
ImgOA(O(1),O(2)) = 0;

ImgAA = zeros(length(CImg(:,1)), length(CImg(1,:))); % Img with connection line between A1 and A2
ImgAA(A1(1), A1(2)) = 1;
ImgAA(A2(1), A2(2)) = 1;
ImgAA = bwconvhull(ImgAA);

ImgOB = zeros(length(CImg(:,1)), length(CImg(1,:))); % Img with connection line between O and B1
ImgOB(O(1),O(2)) = 1;
ImgOB(B1(1), B1(2)) = 1;
ImgOB = bwconvhull(ImgOB);
ImgOB(O(1),O(2)) = 0;

ImgBB = zeros(length(CImg(:,1)), length(CImg(1,:))); % Img with connection line between B1 and B2
ImgBB(B1(1), B1(2)) = 1;
ImgBB(B2(1), B2(2)) = 1;
ImgBB = bwconvhull(ImgBB);

SUM_1 = ImgSS + ImgOA + ImgAA + ImgOB + ImgBB;
for i = 1:length(SUM_1(:,1))
    for j = 1:length(SUM_1(1,:))
        if SUM_1(i,j) > 1
            SUM_1(i,j)=1;
        end
    end
end

SUM = SUM_1 + CImg;
if any(SUM(:)>1)
    r1 = (ImgSS + CImg)>1;
    r1 = 1-sum(r1(:)) / sum(ImgSS(:));
    ImgOAABB = (ImgOA + ImgAA + ImgOB + ImgBB)>0;
    r2 = (ImgOAABB + CImg)>1;
    r2 = 1-sum(r2(:)) / sum(ImgOAABB(:));
    if r2 < 1
        reliability = 0;
    else
        reliability = r1;
    end
else
    reliability = 1;
end

% if sum(A2 == B2) < 2
%     hold on
%     cdata = repmat(SUM_1,[1,1,3]);
%     cdata(:,:,1)=0;
%     cdata(A1(1), A1(2),1:2) = 0;
%     cdata(A2(1), A2(2),1:2) = 0;
%     cdata(B1(1), B1(2),1:2) = 0;
%     cdata(B2(1), B2(2),1:2) = 0;
%     cdata(O(1),O(2),2:3) = 0;
%     im2 = imagesc(cdata);
%     im2.AlphaData = 0.5;
%     axis equal
% end

end

