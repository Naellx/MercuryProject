--  __    __   _______  __       __        ______  
-- |  |  |  | |   ____||  |     |  |      /  __  \ 
-- |  |__|  | |  |__   |  |     |  |     |  |  |  |
-- |   __   | |   __|  |  |     |  |     |  |  |  |
-- |  |  |  | |  |____ |  `----.|  `----.|  `--'  |
-- |__|  |__| |_______||_______||_______| \______/ 
--                                                 
--      _______. __  ___  __   _______             
--     /       ||  |/  / |  | |       \            
--    |   (----`|  '  /  |  | |  .--.  |           
--     \   \    |    <   |  | |  |  |  |           
-- .----)   |   |  .  \  |  | |  '--'  |           
-- |_______/    |__|\__\ |__| |_______/            

do
    local __skf_f94671 = 4
    local __skf_49ad85 = __skf_f94671
end
return(function(...)local U={"\108\073\049\111\104\083\072\082\080\077\120\053\104\119\061\061";"\104\121\078\081\104\051\061\061";"\068\106\049\115\089\119\061\061","\068\106\049\122\104\056\079\061","\051\052\078\072\108\088\078\052\102\043\097\055\072\052\072\115\113\051\061\061";"\071\083\076\082\080\083\069\075\084\116\049\077\108\073\049\050\089\068\097\082\071\067\048\053\104\068\051\100\047\090\107\100\108\073\049\111\104\073\097\116\080\116\114\121\069\090\107\050\104\077\107\106\104\077\078\057\069\113\047\120\072\056\066\077\104\090\111\111\069\088\080\121\072\121\072\090\104\090\107\106\069\113\087\106\089\102\048\122\047\056\107\061";"\102\083\076\082\080\107\047\120\047\087\061\061";"\068\106\049\105\108\077\076\120\112\087\061\061","\047\056\048\119\089\056\072\118"}local function p(p)return U[p+9810]end for p,C in ipairs({{1;9},{1,2},{3,9}})do while C[1]<C[2]do U[C[1]],U[C[2]],C[1],C[2]=U[C[2]],U[C[1]],C[1]+1,C[2]-1 end end do local p=table.concat local C=string.len local o=math.floor local g=string.sub local X=U local L=type local t=table.insert local P={G=26,E=12,D=23;B=9,T=11,V=59;s=39,e=1,k=4;N=5;u=15,R=52,l=27;m=10,y=54,a=21;["\051"]=16,["\048"]=57;L=17;["\043"]=51,v=43,["\052"]=20,W=0;d=47;t=50;r=60;n=14;I=6;J=8;["\055"]=42,i=41,c=36;f=18,q=19;["\047"]=29,P=28,Y=24,x=37,j=53;o=33;Q=45,H=13,z=44,["\056"]=22;["\057"]=34,g=40;X=3;O=56;w=48;["\054"]=63;S=7;b=62;Z=35,["\049"]=61;p=30;C=2;M=38,U=32;["\053"]=46,F=31;h=25;["\050"]=55,K=58;A=49}local T=string.char for U=1,#X,1 do local u=X[U]if L(u)=="\115\116\114\105\110\103"then local L=C(u)local E={}local W=1 local b=0 local d=0 while W<=L do local U=g(u,W,W)local p=P[U]if p then b=b+p*64^(3-d)d=d+1 if d==4 then d=0 local U=o(b/65536)local p=o((b%65536)/256)local C=b%256 t(E,T(U,p,C))b=0 end elseif U=="\061"then t(E,T(o(b/65536)))if W>=L or g(u,W+1,W+1)~="\061"then t(E,T(o((b%65536)/256)))end break end W=W+1 end X[U]=p(E)end end end return(function(U,o,g,X,L,t,P,b,E,T,W,C,d,u,V,a)u,d,C,a,V,b,T,W,E={},function(U)local p,C=1,U[1]while C do u[C],p=u[C]-1,p+1 if 0==u[C]then u[C],T[C]=nil,nil end C=U[p]end end,function(C,g,X,L)local b,W,E,u,P,T while C do W=p(-9802)T=g P=p(-9807)b=p(-9801)C=U[P]u=p(-9806)E=U[u]b=E[b]u={b(E,W)}P=C(o(u))C=P()P={}C=U[p(-9803)]end C=#L return o(P)end,function(U,p)local o=b(p)local g=function(...)return C(U,{...},p,o)end return g end,function(U)u[U]=u[U]-1 if u[U]==0 then u[U],T[U]=nil,nil end end,function(U)for p=1,#U,1 do u[U[p]]=1+u[U[p]]end if g then local C=g(true)local o=L(C)o[p(-9809)],o[p(-9805)],o[p(-9804)]=U,d,function()return-210569 end return C else return X({},{[p(-9805)]=d;[p(-9809)]=U;[p(-9804)]=function()return-210569 end})end end,{},0,function()W=1+W u[W]=1 return W end return(a(13728159,{}))(o(P))end)(getfenv and getfenv()or _ENV,unpack or table[p(-9808)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
--[[STANDARD-LANE-END:b11fe26e]]
