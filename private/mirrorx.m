function newskel = mirrorx(tdskel, skelldef)
newskel1 = tdskel;
newskel1(:,1) = -tdskel(:,1);
for i = [0 15]
    newskel(skelldef.bodyparts.HEAD+i,:) = newskel1(skelldef.bodyparts.HEAD+i,:);
    newskel(skelldef.bodyparts.NECK+i,:) = newskel1(skelldef.bodyparts.NECK+i,:);
    newskel(skelldef.bodyparts.TORSO+i,:) = newskel1(skelldef.bodyparts.TORSO+i,:);
    newskel(skelldef.bodyparts.LEFT_SHOULDER+i,:) = newskel1(skelldef.bodyparts.RIGHT_SHOULDER+i,:);
    newskel(skelldef.bodyparts.LEFT_ELBOW+i,:) = newskel1(skelldef.bodyparts.RIGHT_ELBOW+i,:);
    newskel(skelldef.bodyparts.RIGHT_SHOULDER+i,:) = newskel1(skelldef.bodyparts.LEFT_SHOULDER+i,:);
    newskel(skelldef.bodyparts.RIGHT_ELBOW+i,:) = newskel1(skelldef.bodyparts.LEFT_ELBOW+i,:);
    newskel(skelldef.bodyparts.LEFT_HIP+i,:) = newskel1(skelldef.bodyparts.RIGHT_HIP+i,:);
    newskel(skelldef.bodyparts.LEFT_KNEE+i,:) = newskel1(skelldef.bodyparts.RIGHT_KNEE+i,:);
    newskel(skelldef.bodyparts.RIGHT_HIP+i,:) = newskel1(skelldef.bodyparts.LEFT_HIP+i,:);
    newskel(skelldef.bodyparts.RIGHT_KNEE+i,:) = newskel1(skelldef.bodyparts.LEFT_KNEE+i,:);
    newskel(skelldef.bodyparts.LEFT_HAND+i,:) = newskel1(skelldef.bodyparts.RIGHT_HAND+i,:);
    newskel(skelldef.bodyparts.RIGHT_HAND+i,:) = newskel1(skelldef.bodyparts.LEFT_HAND+i,:);
    newskel(skelldef.bodyparts.LEFT_FOOT+i,:) = newskel1(skelldef.bodyparts.RIGHT_FOOT+i,:);
    newskel(skelldef.bodyparts.RIGHT_FOOT+i,:) = newskel1(skelldef.bodyparts.LEFT_FOOT+i,:);
end
end