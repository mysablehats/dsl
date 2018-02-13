function [datavar_, runpars] = dsl

configs_d('reset');

currpwd = pwd;
cd ..
addpath('utils_matlab')
cd dsl

%addpath('precond')%,'poscond','measures','debug','utils');

runpars = setrunpars;

precon = runpars.precon;
scene = runpars.scene;
maxindexofscenes = length(runpars.scene);

for indexofscenes = 1:maxindexofscenes
    datavar = setdatavar(scene{indexofscenes},precon);
    datavar_(indexofscenes,:) = datavar.loop;
end
cd(currpwd)
%rmpath('precond')