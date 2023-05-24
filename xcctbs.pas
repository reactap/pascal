function tim(num:array of integer; n, k: Integer):integer;
var a:array[0..1000] of Integer;
    i,j:Integer;
begin 
    a[0]:= 1;
    for i:= 1 to n do
        for j:= k downto num[i - 1] do if a[j - num[i - 1]] = 1 then a[j]:= 1;
    tim:=a[k];
end;


var n,k,i,j,t:Integer;
f:array[1..1000] of Integer;
BEGIN 
    readln(t);
    for i:=1 to t do 
        begin
            readln (n, k);
            for j:= 1 to n do read (f[j]);
        	if tim(f, n, k) = 1 then writeln ('YES') else writeln ('NO');
        end;
END.