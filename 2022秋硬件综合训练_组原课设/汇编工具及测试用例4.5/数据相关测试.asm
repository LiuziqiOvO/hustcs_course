#������������Բ��ԣ�����������ɵȲ�������Ͳ������㣬38��ָ��
.text

addi s1, a0, 4
sw s1, zero(s1)     
lw s2, zero(s1)    
addi s2,s2,-4   #s2 address      #load-use���
addi s0,a0,zero     #���г�ֵ
addi s1,s0,1     #������һ�������Ȳ�ֵΪ1    ������ָ�����
add s0,s0,s1    #���ۼӺ�   ��������ָ�����
add s2,s2,4      #��ַ�ۼ�    
sw s0,zero(s2)      #���ۼӺ�
addi s1,s1,1
add s0,s0,s1    #���ۼӺ�
add s2,s2,4      #��ַ�ۼ�    
sw s0,zero(s2)      #���ۼӺ�
addi s1,s1,1
add s0,s0,s1    #���ۼӺ�
add s2,s2,4      #��ַ�ۼ�    
sw s0,zero(s2)      #���ۼӺ�
addi s1,s1,1
add s0,s0,s1    #���ۼӺ�
add s2,s2,4      #��ַ�ۼ�    
sw s0,zero(s2)      #���ۼӺ�
addi s1,s1,1
add s0,s0,s1   #���ۼӺ�
add s2,s2,4      #��ַ�ۼ�    
sw s0,zero(s2)      #���ۼӺ�
addi s1,s1,1
add s0,s0,s1   #���ۼӺ�
add s2,s2,4      #��ַ�ۼ�    
sw s0,zero(s2)      #���ۼӺ�
addi s1,s1,1
add s0,s0,s1   #���ۼӺ�
add s2,s2,4      #��ַ�ۼ�    
sw s0,zero(s2)      #���ۼӺ�

addi $v0,$zero,10         # system call for exit
addi s0,$zero, zero            #���������
addi s0,$zero, zero
addi s0,$zero, zero
syscall                   # we are out of here.   
