function oskel = translateskel(skel, inparts,outparts)
a = genbodyparts(inparts);
b = genbodyparts(outparts);
afi = fields(a);
bfi = fields(b);
for osi = 1:outparts
    for bi = 1:length(bfi)
        if b.(bfi{bi})==osi
            for ai = 1:length(afi)
                if strcmp(bfi{bi},afi{ai})
                    if size(skel,3)==1
                        oskel(osi,:) = skel(a.(afi{ai}),:);
                        %matlab is dumb...
                    else                        
                        oskel(osi,:,:) = skel(a.(afi{ai}),:,:);
                    end
                end
            end
        end
    end
end
