function intim = integralimage(im)
% ���ܣ���������ĻҶ�ͼ��Ļ���ͼ��
% ���룺im-�Ҷ�ͼ��
% �����intim-����ͼ��
    if ndims(im) == 3
        error('Image must be greyscale');
    end
 %��ͼ��������������ת����˫�����ͣ����ں�������
    if strcmp(class(im),'uint8')  
        im = double(im);
    end
    
    intim = cumsum(cumsum(im,1),2);
