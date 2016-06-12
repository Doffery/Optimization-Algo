function [min_ROR] = min_ringshift( size )
%min_ringshift 计算在1~size之间的整数进行循环移位的最小值
%   min_ROR[index]=min{ROR(index,i)|i=0,…，7},然后将min_ROR[index]编码到[2:35]
%   例如：index=4，则index循环移位得到最小值为1，那么min_ROR[4]=1,然后min_ROR一共有35种取值，
%   将这35种取值映射到（2，35）时min_ROR[4]=1被编码到2，所以min_ROR[4]=2;
    min_ROR=zeros(1,size);%将数组初始化
    for index=1:size
        if min_ROR(index)==0%如果data[index]还未求出循环移位最小值
            min_ROR(index)=index;%data(index)必为min{ROR(index,i)|i=0,…，7}，
            %因为在从小到大排列的数组中，min{ROR(index,i)|i=0,…，7}自身一定位于数列最前端
            for j=1:7
                temp=bitor(bitshift(index,j,'uint8'),bitshift(index,j-8,'uint8'));%找出所有index=min{ROR(temp,i)|i=0,…，7}的数temp
                min_ROR(temp)=index;%将data（temp）赋值为index                
            end
        end    
    end
    code=zeros(1,255);%code数组记录min_ROR到[2:35]的编码关系，
    code_current=2;%1保留给0作为其编码即code（min_ROR=0)=1
    for index=1:size
        if code(min_ROR(index))==0% 循环遍历min_ROR,如果minROR[index]没有作映射，
            code(min_ROR(index))=code_current;%则将其映射到code_current
            code_current=code_current+1;%code_current自增
        end
    end 
    for index=1:size%利用编码数组code[1:255]对min_ROR进行编码，保证min_ROR取值在[2:35]
        min_ROR(index)=code(min_ROR(index));
    end
    return 
end

