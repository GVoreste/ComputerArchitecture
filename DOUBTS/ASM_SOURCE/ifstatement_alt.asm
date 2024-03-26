addi x1, x0, 1  // i=1;
addi x2, x0, 3  // j=3;
addi x3, x0, 80 // g=80;
addi x4, x0, 45 // h=45;
beq x1, x2, ELSE  // if(i==j){
sub x6, x3, x4   // 	f=g-h;
jal x5, END       // }else{
ELSE:
add x6,x3,s5     //	f=g+h;
END:
jal x5, END	  // }
