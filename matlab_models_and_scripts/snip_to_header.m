function snip_to_header(s)

cd('C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\models_and_scripts');

s = s/max(s);


fid = fopen('SOI.txt', 'wt');

% dlmwrite('SOI.txt', s, 'delimiter', ',');

fmt = [repmat('%f, ', size(s, 2)), '\n'];
fprintf(fid, fmt, s');

fclose(fid);
end
