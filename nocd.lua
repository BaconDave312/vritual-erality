local d=string.byte;local r=string.char;local c=string.sub;local u=table.concat;local h=math.ldexp;local W=getfenv or function()return _ENV end;local l=setmetatable;local s=select;local a=unpack;local f=tonumber;local function b(d)local e,n,t="","",{}local a=256;local o={}for l=0,a-1 do o[l]=r(l)end;local l=1;local function i()local e=f(c(d,l,l),36)l=l+1;local n=f(c(d,l,l+e-1),36)l=l+e;return n end;e=r(i())t[1]=e;while l<#d do local l=i()if o[l]then n=o[l]else n=e..c(e,1,1)end;o[a]=e..c(n,1,1)t[#t+1],e,a=n,n,a+1 end;return table.concat(t)end;local f=b('21X21W27527621W27427521Y27921W21121X22727621V22422C21W24T22421W25G21U27625127527P22C25025725127K25G21X22427W24M27N27528524L28527724X27628128328522027624P27727K21W24Z28K28A27621S28524R28521Z27627B27621121Y28G27521821721721B1Y21D21621321C21921721621Y21S27621F21121921C21W27Q27521T27V25724M28K21X22K28322K27522121W27W24U28P22K22S21W24N29W21W21T28225724I28528Q27528S275');local o=bit and bit.bxor or function(l,e)local n,o=1,0 while l>0 and e>0 do local a,c=l%2,e%2 if a~=c then o=o+n end l,e,n=(l-a)/2,(e-c)/2,n*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then o=o+n end l,n=(l-e)/2,n*2 end return o end local function l(e,l,n)if n then local l=(e/2^(l-1))%2^((n-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local e=1;local function n()local n,c,a,l=d(f,e,e+3);n=o(n,68)c=o(c,68)a=o(a,68)l=o(l,68)e=e+4;return(l*16777216)+(a*65536)+(c*256)+n;end;local function t()local l=o(d(f,e,e),68);e=e+1;return l;end;local function i()local e=n();local o=n();local c=1;local n=(l(o,1,20)*(2^32))+e;local e=l(o,21,31);local l=((-1)^l(o,32));if(e==0)then if(n==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return h(l,e-1023)*(c+(n/(2^52)));end;local h=n;local function b(l)local n;if(not l)then l=h();if(l==0)then return'';end;end;n=c(f,e,e+l-1);e=e+l;local e={}for l=1,#n do e[l]=r(o(d(c(n,l,l)),68))end return u(e);end;local e=n;local function f(...)return{...},s('#',...)end local function u()local d={0,0,0,0,0,0,0,0,0,0,0};local e={0};local c={};local a={d,nil,e,nil,c};for l=1,n()do e[l-1]=u();end;local e=n()local c={0,0,0};for n=1,e do local e=t();local l;if(e==0)then l=(t()~=0);elseif(e==3)then l=i();elseif(e==2)then l=b();end;c[n]=l;end;a[2]=c a[4]=t();for a=1,n()do local c=o(n(),4);local n=o(n(),229);local o=l(c,1,2);local e=l(n,1,11);local e={e,l(c,3,11),nil,nil,n};if(o==0)then e[3]=l(c,12,20);e[5]=l(c,21,29);elseif(o==1)then e[3]=l(n,12,33);elseif(o==2)then e[3]=l(n,12,32)-1048575;elseif(o==3)then e[3]=l(n,12,32)-1048575;e[5]=l(c,21,29);end;d[a]=e;end;return a;end;local function r(l,e,c)local o=l[1];local n=l[2];local e=l[3];local l=l[4];return function(...)local u=o;local t=n;local h=e;local n=l;local l=f local o=1;local d=-1;local W={};local i={...};local f=s('#',...)-1;local l={};local e={};for l=0,f do if(l>=n)then W[l-n]=i[l+1];else e[l]=i[l+1];end;end;local l=f-n+1 local l;local n;while true do l=u[o];n=l[1];if n<=10 then if n<=4 then if n<=1 then if n==0 then o=o+l[3];else local o=l[2];local t={};local n=0;local c=o+l[3]-1;for l=o+1,c do n=n+1;t[n]=e[l];end;local c={e[o](a(t,1,c-o))};local l=o+l[5]-2;n=0;for l=o,l do n=n+1;e[l]=c[n];end;d=l;end;elseif n<=2 then do return end;elseif n>3 then local l=l[2];do return e[l]();end;else c[t[l[3]]]=e[l[2]];end;elseif n<=7 then if n<=5 then if not e[l[2]]then o=o+1;else o=o+l[3];end;elseif n>6 then e[l[2]]=c[t[l[3]]];else local o=l[2];local c={};local n=0;local t=o+l[3]-1;for l=o+1,t do n=n+1;c[n]=e[l];end;local c={e[o](a(c,1,t-o))};local l=o+l[5]-2;n=0;for l=o,l do n=n+1;e[l]=c[n];end;d=l;end;elseif n<=8 then e[l[2]]=e[l[3]];elseif n==9 then e[l[2]]=r(h[l[3]],nil,c);else do return end;end;elseif n<=15 then if n<=12 then if n==11 then local c=l[2];local o=d;local n={};local l=0;for o=c,o do l=l+1;n[l]=e[o];end;do return a(n,1,l)end;else if not e[l[2]]then o=o+1;else o=o+l[3];end;end;elseif n<=13 then e[l[2]]=c[t[l[3]]];elseif n>14 then e[l[2]]=r(h[l[3]],nil,c);else local n=l[2];local o={};local l=n+l[3]-1;for l=n+1,l do o[#o+1]=e[l];end;do return e[n](a(o,1,l-n))end;end;elseif n<=18 then if n<=16 then local o=l[2];local c=d;local n={};local l=0;for o=o,c do l=l+1;n[l]=e[o];end;do return a(n,1,l)end;elseif n==17 then local l=l[2];do return e[l]();end;else local n=l[2];local o={};local l=n+l[3]-1;for l=n+1,l do o[#o+1]=e[l];end;do return e[n](a(o,1,l-n))end;end;elseif n<=19 then c[t[l[3]]]=e[l[2]];elseif n>20 then e[l[2]]=e[l[3]];else o=o+l[3];end;o=o+1;end;end;end;return r(u(),{},W())();
x1.00
