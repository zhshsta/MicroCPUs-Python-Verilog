#s = 0
#s=int(s)
#N = float(input("Enter a number for N : "))
def sw(N):
    sw = 2*s(1-s)
    return sw
    print("switching poing is = (%f):\n", sw)
    
def signalprobs(input1sp, input2sp,input3sp,*inputsp):
    sp2AND(input1sp, input2sp);
    sp2OR(input1sp, input2sp);
    sp2XOR(input1sp, input2sp);
    sp2NAND(input1sp, input2sp);
    sp2NOR(input1sp, input2sp);
    sp3AND(input1sp, input2sp, input3sp);
    sp3OR(input1sp, input2sp, input3sp);
    sp3XOR(input1sp, input2sp, input3sp);
    sp3NAND(input1sp, input2sp, input3sp);
    sp3NOR(input1sp, input2sp, input3sp);
    spnAND(inputsp);
    spnOR(inputsp);
    spnXOR(inputsp);
    spnNAND(inputsp);
    spnNOR(inputsp);

def sp2AND(input1sp, input2sp):
    
  print("AND Gate for input probabilities (%f %f):\n",input1sp,input2sp)
  s = input1sp*input2sp;
  sw(2)

def sp2OR(input1sp, input2sp):
  print("OR Gate for input probabilities (%f %f):\n",input1sp,input2sp)
  s = 1-(1-input1sp)*(1-input2sp);
  sw(2)

def sp2XOR(input1sp, input2sp):
    print("XOR Gate for input probabilities (%f %f):\n",input1sp,input2sp)
    #s = (1-input1sp)*input2sp + input1sp*(1-input2sp)
    if (input1sp == input2sp):
        s = 0
    else:
        s = 1
    sw(2)
    
def  sp2NAND(input1sp, input2sp):
    print("NAND Gate for input probabilities (%f %f):\n",input1sp,input2sp)
    s = 1 - input1sp*input2sp;
    sw(2)
    
def  sp2NOR(input1sp, input2sp):
    print("NOR Gate for input probabilities (%f %f):\n",input1sp,input2sp)
    s = (1-input1sp)*(1-input2sp);
    sw(2)

def sp3AND(input1sp, input2sp, input3sp):
    print("AND Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
    s = input1sp*input2sp*input3sp;
    sw(3)

def sp3OR(input1sp, input2sp, input3sp):
    print("OR Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
    s = 1-(1-input1sp)*(1-input2sp)*(1-input3sp);
    sw(3)

def sp3XOR(input1sp, input2sp, input3sp):
    print("XOR Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
    s = rem((input1sp + input2sp + input3sp),2)
    sw(3)

def sp3NAND(input1sp, input2sp, input3sp):
    print("NAND Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
    s = 1 - input1sp*input2sp*input3sp;
    sw(3)
  
def sp3NOR(input1sp, input2sp, input3sp):
    print("NOR Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
    s = (1-input1sp)*(1-input2sp)*(1-input3sp);
    sw(3)

def spnAND(*inputsp):
    #print("AND Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp )
    for i in range(1,N):
        if(i==1):
            s = input1sp
        else:
            s = inputsp[i] * inputsp[i-1]
    sw(N)

def spnOR(*inputsp):
    #print("OR Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp )
    for i in range(1,N):
        if(i==1):
            s = input1sp
        else:
            s = 1 - (1-inputsp[i]) * (1-inputsp[i-1])
    sw(N)

def spnXOR(*inputsp):
    #print("XOR Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp )
    for i in range(1,N):
        if(i==1):
            s = 1 - input1sp
        else:
            s = rem((inputsp[i] + inputsp[i-1]),2)
    sw(N)

def spnNAND(*inputsp):
    #print("NAND Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp )
    for i in range(1,N):
        if(i==1):
            s = 1 - input1sp
        else:
            s = 1 - inputsp[i] * inputsp[i-1]
    sw(N)

def spnNOR(*inputsp):
    #print("NOR Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp)
    for i in range(1,N):
        if(i==1):
            s = 1 - input1sp
        else:
            s = (1-inputsp[i]) * (1-inputsp[i-1])
    sw(N)
