%%%
%%%
%%% ??????? ?? ????????? ??:
%%% signalprobs(input1sp,input2sp)
%%%
%%% ????????????:
%%% >> signalprobs(0.5,0.5)
%%% AND Gate for input probabilities (0.500000 0.500000):
%%% ans =  0.25000
%%% OR Gate for input probabilities (0.500000 0.500000):
%%% ans =  0.75000
%%% XOR Gate for input probabilities (0.500000 0.500000):
%%% NAND Gate for input probabilities (0.500000 0.500000):
%%% NOR Gate for input probabilities (0.500000 0.500000):
%%%
%%%
%%% >> signalprobs(0,0)
%%% AND Gate for input probabilities (0.00000 0.00000):
%%% ans =  0
%%% OR Gate for input probabilities (0.00000 0.00000):
%%% ans =  0
%%% XOR Gate for input probabilities (0.00000 0.00000):
%%% NAND Gate for input probabilities (0.00000 0.00000):
%%% NOR Gate for input probabilities (0.00000 0.00000):
%%%
%%% >> signalprobs(1,1)
%%% AND Gate for input probabilities (1.00000 1.00000):
%%% ans =  1
%%% OR Gate for input probabilities (1.00000 1.00000):
%%% ans =  1
%%% XOR Gate for input probabilities (1.00000 1.00000):
%%% NAND Gate for input probabilities (1.00000 1.00000):
%%% NOR Gate for input probabilities (1.00000 1.00000):
%%%
%%%
%%%
%%% ?? ??????????? ??? ??????????? ?? signal probabilities 
%%% AND ??? OR ????? ??? ??????? ????? ??? ?????????? ????????.
%%% ?? ??????????? ??? ??????????? ?? signal probabilities 
%%% XOR, NAND ??? NOR ????? ??? ??????? ????? ????????.
%%% (?) ??? ??????? ?? ???????????? ??? ????????? ???????? ??????????? ??? ??? ??????????
%%% ??? signal probabilities XOR,NAND ??? NOR 2 ??????? ?????.
%%% (?) ?????? ??????????? ??? ??? ?????????? ??? signal probabilities 
%%% AND, OR, XOR, NAND, NOR ????? 3 ???????
%%% (?) ?????? ??????????? ??? ??? ?????????? ??? signal probabilities 
%%% AND, OR, XOR, NAND, NOR ????? ? ???????


function s=signalprobs(input1sp, input2sp)
  sp2AND(input1sp, input2sp)
  sp2OR(input1sp, input2sp)
  
  % ?? ???????? ??????????? ?????? ?? ???????????? ??? ?? (?)
  sp2XOR(input1sp, input2sp);
  sp2NAND(input1sp, input2sp);
  sp2NOR(input1sp, input2sp);
  
  % ?? ???????? ??????????? ?????? ?? ??????? ??'????????? ??? ?? (?)
  %sp3AND(input1sp, input2sp, input3sp)
  %sp3OR(input1sp, input2sp, input3sp)
  %sp3XOR(input1sp, input2sp, input3sp);
  %sp3NAND(input1sp, input2sp, input3sp);
  %sp3NOR(input1sp, input2sp, input3sp);
  
  % ?? ???????? ??????????? ?????? ?? ??????? ??'????????? ??? ?? (?)
  %% ???????: ?????? ?? ??????? ?????????? ??? ????? ???????? ???? ??????
  %spAND(input1sp, input2sp, input3sp, input4sp ...)
  %spOR(input1sp, input2sp, input3sp, input4sp ...)
  %spXOR(input1sp, input2sp, input3sp, input4sp, ...);
  %spNAND(input1sp, input2sp, input3sp, input4sp, ...);
  %spNOR(input1sp, input2sp, input3sp, input4sp, ...);
  
end
%

% 2-input AND gate truth table
% 0 0:0
% 0 1:0
% 1 0:0
% 1 1:1
%% signal probability calculator for a 2-input AND gate
%% input1sp: signal probability of first input signal
%% input2sp: signal probability of second input signal
%%        s: output signal probability
function s=sp2AND(input1sp, input2sp)
  printf("AND Gate for input probabilities (%f %f):\n",input1sp,input2sp)
  s = input1sp*input2sp;
  endfunction

% 2-input OR gate truth table
% 0 0:0
% 0 1:1
% 1 0:1
% 1 1:1
%% signal probability calculator for a 2-input OR gate
%% input1sp: signal probability of first input signal
%% input2sp: signal probability of second input signal
%%        s: output signal probability
function s=sp2OR(input1sp, input2sp)
  printf("OR Gate for input probabilities (%f %f):\n",input1sp,input2sp)
  s = 1-(1-input1sp)*(1-input2sp);
endfunction


% 2-input XOR gate truth table
% 0 0:0
% 0 1:1
% 1 0:1
% 1 1:0
%% signal probability calculator for a 2-input XOR gate
%% input1sp: signal probability of first input signal
%% input2sp: signal probability of second input signal
%%        s: output signal probability
function s=sp2XOR(input1sp, input2sp)
  printf("XOR Gate for input probabilities (%f %f):\n",input1sp,input2sp)
  if (input1sp == input2sp)
	s = 0
  else
	s = 1
  endif
  %s = ??;
endfunction


% 2-input NAND gate truth table
% 0 0:1
% 0 1:1
% 1 0:1
% 1 1:0
%% signal probability calculator for a 2-input XOR gate
%% input1sp: signal probability of first input signal
%% input2sp: signal probability of second input signal
%%        s: output signal probability
function s=sp2NAND(input1sp, input2sp)
  printf("NAND Gate for input probabilities (%f %f):\n",input1sp,input2sp)
  s = 1 - input1sp*input2sp;
  %s = ??;
endfunction



% 2-input NOR gate truth table
% 0 0:1
% 0 1:0
% 1 0:0
% 1 1:0
%% signal probability calculator for a 2-input NOR gate
%% input1sp: signal probability of first input signal
%% input2sp: signal probability of second input signal
%%        s: output signal probability
function s=sp2NOR(input1sp, input2sp)
  printf("NOR Gate for input probabilities (%f %f):\n",input1sp,input2sp)
  s = (1-input1sp)*(1-input2sp);
  %s = ??;
endfunction

function s=sp3AND(input1sp, input2sp, input3sp)
  printf("AND Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
  s = input1sp*input2sp*input3sp;
endfunction

function s=sp3OR(input1sp, input2sp, input3sp)
  printf("OR Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
  s = 1-(1-input1sp)*(1-input2sp)*(1-input3sp);
endfunction

function s=sp3XOR(input1sp, input2sp, input3sp)
  printf("XOR Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
  s = rem((input1sp + input2sp + input3sp),2)
endfunction

function s=sp3NAND(input1sp, input2sp, input3sp)
  printf("NAND Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
  s = 1 - input1sp*input2sp*input3sp;
endfunction
  
function s=sp3NOR(input1sp, input2sp, input3sp)
  printf("NOR Gate for input probabilities (%f %f %f):\n",input1sp,input2sp,input3sp)
  s = (1-input1sp)*(1-input2sp)*(1-input3sp);
endfunction

function s=spAND(input1sp, input2sp, input3sp, input4sp ...)
  %printf("AND Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp )
  for i = 1:N
	if(i==1)
		s = input1sp
	else
		s = input[i]sp * input[i-1]sp
	end
  end
endfunction

function s=spOR(input1sp, input2sp, input3sp, input4sp ...)
  %printf("OR Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp )
  for i = 1:N
	if(i==1)
		s = input1sp
	else
		s = 1 - (1-input[i]sp) * (1-input[i-1]sp)
	endif
  end
endfunction

function s=spXOR(input1sp, input2sp, input3sp, input4sp ...)
  %printf("XOR Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp )
  for i = 1:N
	if(i==1)
		s = 1 - input1sp
	else
		s = rem((input[i]sp + input[i-1]sp),2)
	endif
  end
endfunction

function s=spNAND(input1sp, input2sp, input3sp, input4sp ...)
  %printf("NAND Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp )
  for i = 1:N
	if(i==1)
		s = 1 - input1sp
	else
		s = 1 - input[i]sp * input[i-1]sp
	end
  end
endfunction

function s=spNOR(input1sp, input2sp, input3sp, input4sp ...)
  %printf("NOR Gate for input probabilities (%f %f %f %f):\n",input1sp,input2sp,input3sp, input4sp)
  for i = 1:N
	if(i==1)
		s = 1 - input1sp
	else
		s = (1-input[i]sp) * (1-input[i-1]sp)
	endif
  end
endfunction