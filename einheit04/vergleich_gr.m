function flag=vergleich_gr(string1, string2)
% vergleich_gr vergleicht die Strings string1 und string2.
%              Falls string1 lexikografisch vor string2 ist,
%              so ist flag=1, sonst flag=0
l1=length(string1);
l2=length(string2);
for k=1:min(l1,l2); 
    if string1(k)<string2(k)
        flag=1;
        return;
    end;
    if string1(k)>string2(k)
        flag=0;
        return;
    end;
end;
if l2>l1 
    flag=1;
else
    flag=0;
end

        