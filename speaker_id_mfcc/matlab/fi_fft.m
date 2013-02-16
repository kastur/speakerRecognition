
function xc = fi_fft(x)
    assert(isfi(x));
    assert(isequal(numerictype(x), numerictype(1, 32, 24)));
    %assert(isequal(length(x), n))
    n = length(x);
    t = log2(n);
    w = fi_twiddles(n);
    x = fi_bitreverse(x,n);
    xc = complex(x, 0);
    for q=1:t
      L = 2^q;
      L2 = L/2;
      r = n/L; 
      for k=0:(r-1)
        for j=0:(L2-1)
          temp          = w(L2-1+j+1) * xc(k*L+j+L2+1);
          xc(k*L+j+L2+1) = bitsra(xc(k*L+j+1)  - temp, 1);
          xc(k*L+j+1)    = bitsra(xc(k*L+j+1)  + temp, 1);
        end
      end
    end

function w = fi_twiddles(n) %#codegen
    t = log2(n);
    if floor(t) ~= t
      error('N must be an exact power of two.');
    end
    w = complex(zeros(n-1,1), 0);
    k=1;
    L=2;
    while L<=n
      theta = 2*pi/L;
      for j=0:(L/2 - 1)
        w(k) = complex( cos(j*theta), -sin(j*theta) );
        k = k + 1;
      end
      L = L*2;
    end
    w = sfi(w, 32, 24);


function x = fi_bitreverse(x,n0) %#codegen
    n = int32(n0);
    nv2 = bitsra(n,1);
    j = int32(1);
    for i=1:(n-1)
      if i<j
        temp = x(j);
        x(j) = x(i);
        x(i) = temp;
      end
      k = nv2;
      while k<j
        j = j-k;
        k = bitsra(k,1);
      end
      j = j+k;
    end
