%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Save and close the Simulink model through Matlab command line.
% It also closes the associate GUI

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('[closeModel]: closing the model...')

save_system('torqueBalancingYoga.mdl');
close_system('torqueBalancingYoga.mdl');
close all

% remove paths
rmpath('../../library/matlab-gui');
rmpath('./src-gui');

disp('[closeModel]: done')