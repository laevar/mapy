fid = fopen('dummy.csv','r');
i=1;
[a,b]=fscanf(fid,'%f,%f')
[a,b]=fscanf(fid,'%f,%f,%f')
while ~feof(fid)
  [dummy,n] = fscanf(fid,'%f,',[4 inf])
  A(i,:) = dummy(:);
  i = i+1;
end
fclose(fid);