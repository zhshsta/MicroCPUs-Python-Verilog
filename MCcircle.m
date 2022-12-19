%%% ZISIS TALAMAGKAS AM 3340


function MCcircle(N)
  circle=0;
  C=input("Enter a number:");
  r=1;
  
  for i = 1:C
    x=rand();
    y=rand();
    
    if sqrt(x^2+y^2) <= r
      circle+=1;
    end
  end
  pi=(circle/C)*4
endfunction
