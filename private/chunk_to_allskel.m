function [allsub,chunk] = chunk_to_allskel(chunk)
first_is_zero = zeros(size(translateskel(chunk(1).chunk(:,:,1),20,15)));

for i = 1:length(chunk)
    chunk(i).skel =  translateskel(chunk(i).chunk,20,15);
    chunk(i).vel = cat(3,first_is_zero, diff(chunk(i).skel,1,3));
    chunk(i).subject = chunk(i).subject + 4;
    allsub(i) = chunk(i).subject;
end
allsub = unique(allsub);
end