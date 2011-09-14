function anz = countstr(str,ch)
anz = 0;
for idx = 1:length(str)
    if str(idx) == ch
        anz = anz + 1;
    end
end

