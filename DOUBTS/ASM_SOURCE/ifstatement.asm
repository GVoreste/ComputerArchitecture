addi s2, zero, 1  // i=1;
addi s3, zero, 3  // j=3;
addi s4, zero, 80 // g=80;
addi s5, zero, 45 // h=45;
beq s2, s3, ELSE  // if(i==j){
sub s11, s4, s5   // 	f=g-h;
jal ra, END       // }else{
ELSE:
add s11,s4,s5     //	f=g+h;
END:
jal ra, END	  // }
