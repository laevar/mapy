fid = fopen('dummy.csv','r')
i=1;
while ~feof(fid)
  dummy = fscanf(fid,'%f,');
  A(i,:) = dummy(:);
  i = i+1;
end
fclose(fid)