%�������콢��
function [F,InlierPoints1,InlierPoints2]=RansacMatch(MatchedPoints1,MatchedPoints2)
[F,EpipolarInliers]=estimateFundamentalMatrix(MatchedPoints1,MatchedPoints2,'Method',   'LMedS');%����RANSAC���˵�
InlierPoints1=MatchedPoints1(EpipolarInliers);%���»�ȡͼ��1��ƥ���
InlierPoints2=MatchedPoints2(EpipolarInliers);%���»�ȡͼ��2��ƥ���
end

