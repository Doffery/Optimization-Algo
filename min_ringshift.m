function [min_ROR] = min_ringshift( size )
%min_ringshift ������1~size֮�����������ѭ����λ����Сֵ
%   min_ROR[index]=min{ROR(index,i)|i=0,����7},Ȼ��min_ROR[index]���뵽[2:35]
%   ���磺index=4����indexѭ����λ�õ���СֵΪ1����ômin_ROR[4]=1,Ȼ��min_RORһ����35��ȡֵ��
%   ����35��ȡֵӳ�䵽��2��35��ʱmin_ROR[4]=1�����뵽2������min_ROR[4]=2;
    min_ROR=zeros(1,size);%�������ʼ��
    for index=1:size
        if min_ROR(index)==0%���data[index]��δ���ѭ����λ��Сֵ
            min_ROR(index)=index;%data(index)��Ϊmin{ROR(index,i)|i=0,����7}��
            %��Ϊ�ڴ�С�������е������У�min{ROR(index,i)|i=0,����7}����һ��λ��������ǰ��
            for j=1:7
                temp=bitor(bitshift(index,j,'uint8'),bitshift(index,j-8,'uint8'));%�ҳ�����index=min{ROR(temp,i)|i=0,����7}����temp
                min_ROR(temp)=index;%��data��temp����ֵΪindex                
            end
        end    
    end
    code=zeros(1,255);%code�����¼min_ROR��[2:35]�ı����ϵ��
    code_current=2;%1������0��Ϊ����뼴code��min_ROR=0)=1
    for index=1:size
        if code(min_ROR(index))==0% ѭ������min_ROR,���minROR[index]û����ӳ�䣬
            code(min_ROR(index))=code_current;%����ӳ�䵽code_current
            code_current=code_current+1;%code_current����
        end
    end 
    for index=1:size%���ñ�������code[1:255]��min_ROR���б��룬��֤min_RORȡֵ��[2:35]
        min_ROR(index)=code(min_ROR(index));
    end
    return 
end

