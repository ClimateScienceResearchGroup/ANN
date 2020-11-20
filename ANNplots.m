clear all
close all




load('ANN results\T1')
load('ANN results\T2')
load('ANN results\T3')
load('ANN results\T4')
load('ANN results\T5')
load('ANN results\T6')

load('ANN results\T1_T6_day_300')


%cell2mat code
%1=NEE
%2=Reco
%3=GPP


%Dimensional code
%1 site code (1-to-6)
%2 carbon cycling (NEE, Reco, GPP)
%3 one-to-four training years
%4 one-to-four validation years
test_R_annual   = zeros(6,3,4,4);
test_Per_annual = zeros(6,3,4,4);
test_RMSE_annual   = zeros(6,3,4,4);
test_rho_annual = zeros(6,3,4,4);

test_day_R_annual   = zeros(6,3,4,4);
test_day_Per_annual = zeros(6,3,4,4);
test_day_RMSE_annual   = zeros(6,3,4,4);
test_day_rho_annual   = zeros(6,3,4,4);


%T1
[test_R_annual(1,:,1,1),~,test_Per_annual(1,:,1,1),~,test_RMSE_annual(1,:,1,1),~,test_rho_annual(1,:,1,1),~] = analysisANN(T1_1_1Hour_test_ts,T1_1_1Hour_test_simOut,48);
[test_R_annual(1,:,1,2),~,test_Per_annual(1,:,1,2),~,test_RMSE_annual(1,:,1,2),~,test_rho_annual(1,:,1,2),~] = analysisANN(T1_1_2Hour_test_ts,T1_1_2Hour_test_simOut,48);
[test_R_annual(1,:,1,3),~,test_Per_annual(1,:,1,3),~,test_RMSE_annual(1,:,1,3),~,test_rho_annual(1,:,1,3),~] = analysisANN(T1_1_3Hour_test_ts,T1_1_3Hour_test_simOut,48);
[test_R_annual(1,:,1,4),~,test_Per_annual(1,:,1,4),~,test_RMSE_annual(1,:,1,4),~,test_rho_annual(1,:,1,4),~] = analysisANN(T1_1_4Hour_test_ts,T1_1_4Hour_test_simOut,48);

[test_R_annual(1,:,2,1),~,test_Per_annual(1,:,2,1),~,test_RMSE_annual(1,:,2,1),~,test_rho_annual(1,:,2,1),~] = analysisANN(T1_2_1Hour_test_ts,T1_2_1Hour_test_simOut,48);
[test_R_annual(1,:,2,2),~,test_Per_annual(1,:,2,2),~,test_RMSE_annual(1,:,2,2),~,test_rho_annual(1,:,2,2),~] = analysisANN(T1_2_2Hour_test_ts,T1_2_2Hour_test_simOut,48);
[test_R_annual(1,:,2,3),~,test_Per_annual(1,:,2,3),~,test_RMSE_annual(1,:,2,3),~,test_rho_annual(1,:,2,3),~] = analysisANN(T1_2_3Hour_test_ts,T1_2_3Hour_test_simOut,48);
[test_R_annual(1,:,2,4),~,test_Per_annual(1,:,2,4),~,test_RMSE_annual(1,:,2,4),~,test_rho_annual(1,:,2,4),~] = analysisANN(T1_2_4Hour_test_ts,T1_2_4Hour_test_simOut,48);

[test_R_annual(1,:,3,1),~,test_Per_annual(1,:,3,1),~,test_RMSE_annual(1,:,3,1),~,test_rho_annual(1,:,3,1),~] = analysisANN(T1_3_1Hour_test_ts,T1_3_1Hour_test_simOut,48);
[test_R_annual(1,:,3,2),~,test_Per_annual(1,:,3,2),~,test_RMSE_annual(1,:,3,2),~,test_rho_annual(1,:,3,2),~] = analysisANN(T1_3_2Hour_test_ts,T1_3_2Hour_test_simOut,48);
[test_R_annual(1,:,3,3),~,test_Per_annual(1,:,3,3),~,test_RMSE_annual(1,:,3,3),~,test_rho_annual(1,:,3,3),~] = analysisANN(T1_3_3Hour_test_ts,T1_3_3Hour_test_simOut,48);
[test_R_annual(1,:,3,4),~,test_Per_annual(1,:,3,4),~,test_RMSE_annual(1,:,3,4),~,test_rho_annual(1,:,3,4),~] = analysisANN(T1_3_4Hour_test_ts,T1_3_4Hour_test_simOut,48);

[test_R_annual(1,:,4,1),~,test_Per_annual(1,:,4,1),~,test_RMSE_annual(1,:,4,1),~,test_rho_annual(1,:,4,1),~] = analysisANN(T1_4_1Hour_test_ts,T1_4_1Hour_test_simOut,48);
[test_R_annual(1,:,4,2),~,test_Per_annual(1,:,4,2),~,test_RMSE_annual(1,:,4,2),~,test_rho_annual(1,:,4,2),~] = analysisANN(T1_4_2Hour_test_ts,T1_4_2Hour_test_simOut,48);
[test_R_annual(1,:,4,3),~,test_Per_annual(1,:,4,3),~,test_RMSE_annual(1,:,4,3),~,test_rho_annual(1,:,4,3),~] = analysisANN(T1_4_3Hour_test_ts,T1_4_3Hour_test_simOut,48);
[test_R_annual(1,:,4,4),~,test_Per_annual(1,:,4,4),~,test_RMSE_annual(1,:,4,4),~,test_rho_annual(1,:,4,4),~] = analysisANN(T1_4_4Hour_test_ts,T1_4_4Hour_test_simOut,48);



%T2
[test_R_annual(2,:,1,1),~,test_Per_annual(2,:,1,1),~,test_RMSE_annual(2,:,1,1),~,test_rho_annual(2,:,1,1),~] = analysisANN(T2_1_1Hour_test_ts,T2_1_1Hour_test_simOut,48);
[test_R_annual(2,:,1,2),~,test_Per_annual(2,:,1,2),~,test_RMSE_annual(2,:,1,2),~,test_rho_annual(2,:,1,2),~] = analysisANN(T2_1_2Hour_test_ts,T2_1_2Hour_test_simOut,48);
[test_R_annual(2,:,1,3),~,test_Per_annual(2,:,1,3),~,test_RMSE_annual(2,:,1,3),~,test_rho_annual(2,:,1,3),~] = analysisANN(T2_1_3Hour_test_ts,T2_1_3Hour_test_simOut,48);
[test_R_annual(2,:,1,4),~,test_Per_annual(2,:,1,4),~,test_RMSE_annual(2,:,1,4),~,test_rho_annual(2,:,1,4),~] = analysisANN(T2_1_4Hour_test_ts,T2_1_4Hour_test_simOut,48);

[test_R_annual(2,:,2,1),~,test_Per_annual(2,:,2,1),~,test_RMSE_annual(2,:,2,1),~,test_rho_annual(2,:,2,1),~] = analysisANN(T2_2_1Hour_test_ts,T2_2_1Hour_test_simOut,48);
[test_R_annual(2,:,2,2),~,test_Per_annual(2,:,2,2),~,test_RMSE_annual(2,:,2,2),~,test_rho_annual(2,:,2,2),~] = analysisANN(T2_2_2Hour_test_ts,T2_2_2Hour_test_simOut,48);
[test_R_annual(2,:,2,3),~,test_Per_annual(2,:,2,3),~,test_RMSE_annual(2,:,2,3),~,test_rho_annual(2,:,2,3),~] = analysisANN(T2_2_3Hour_test_ts,T2_2_3Hour_test_simOut,48);
[test_R_annual(2,:,2,4),~,test_Per_annual(2,:,2,4),~,test_RMSE_annual(2,:,2,4),~,test_rho_annual(2,:,2,4),~] = analysisANN(T2_2_4Hour_test_ts,T2_2_4Hour_test_simOut,48);

[test_R_annual(2,:,3,1),~,test_Per_annual(2,:,3,1),~,test_RMSE_annual(2,:,3,1),~,test_rho_annual(2,:,3,1),~] = analysisANN(T2_3_1Hour_test_ts,T2_3_1Hour_test_simOut,48);
[test_R_annual(2,:,3,2),~,test_Per_annual(2,:,3,2),~,test_RMSE_annual(2,:,3,2),~,test_rho_annual(2,:,3,2),~] = analysisANN(T2_3_2Hour_test_ts,T2_3_2Hour_test_simOut,48);
[test_R_annual(2,:,3,3),~,test_Per_annual(2,:,3,3),~,test_RMSE_annual(2,:,3,3),~,test_rho_annual(2,:,3,3),~] = analysisANN(T2_3_3Hour_test_ts,T2_3_3Hour_test_simOut,48);
[test_R_annual(2,:,3,4),~,test_Per_annual(2,:,3,4),~,test_RMSE_annual(2,:,3,4),~,test_rho_annual(2,:,3,4),~] = analysisANN(T2_3_4Hour_test_ts,T2_3_4Hour_test_simOut,48);

[test_R_annual(2,:,4,1),~,test_Per_annual(2,:,4,1),~,test_RMSE_annual(2,:,4,1),~,test_rho_annual(2,:,4,1),~] = analysisANN(T2_4_1Hour_test_ts,T2_4_1Hour_test_simOut,48);
[test_R_annual(2,:,4,2),~,test_Per_annual(2,:,4,2),~,test_RMSE_annual(2,:,4,2),~,test_rho_annual(2,:,4,2),~] = analysisANN(T2_4_2Hour_test_ts,T2_4_2Hour_test_simOut,48);
[test_R_annual(2,:,4,3),~,test_Per_annual(2,:,4,3),~,test_RMSE_annual(2,:,4,3),~,test_rho_annual(2,:,4,3),~] = analysisANN(T2_4_3Hour_test_ts,T2_4_3Hour_test_simOut,48);
[test_R_annual(2,:,4,4),~,test_Per_annual(2,:,4,4),~,test_RMSE_annual(2,:,4,4),~,test_rho_annual(2,:,4,4),~] = analysisANN(T2_4_4Hour_test_ts,T2_4_4Hour_test_simOut,48);




%T3
[test_R_annual(3,:,1,1),~,test_Per_annual(3,:,1,1),~,test_RMSE_annual(3,:,1,1),~,test_rho_annual(3,:,1,1),~] = analysisANN(T3_1_1Hour_test_ts,T3_1_1Hour_test_simOut,48);
[test_R_annual(3,:,1,2),~,test_Per_annual(3,:,1,2),~,test_RMSE_annual(3,:,1,2),~,test_rho_annual(3,:,1,2),~] = analysisANN(T3_1_2Hour_test_ts,T3_1_2Hour_test_simOut,48);
[test_R_annual(3,:,1,3),~,test_Per_annual(3,:,1,3),~,test_RMSE_annual(3,:,1,3),~,test_rho_annual(3,:,1,3),~] = analysisANN(T3_1_3Hour_test_ts,T3_1_3Hour_test_simOut,48);
[test_R_annual(3,:,1,4),~,test_Per_annual(3,:,1,4),~,test_RMSE_annual(3,:,1,4),~,test_rho_annual(3,:,1,4),~] = analysisANN(T3_1_4Hour_test_ts,T3_1_4Hour_test_simOut,48);

[test_R_annual(3,:,2,1),~,test_Per_annual(3,:,2,1),~,test_RMSE_annual(3,:,2,1),~,test_rho_annual(3,:,2,1),~] = analysisANN(T3_2_1Hour_test_ts,T3_2_1Hour_test_simOut,48);
[test_R_annual(3,:,2,2),~,test_Per_annual(3,:,2,2),~,test_RMSE_annual(3,:,2,2),~,test_rho_annual(3,:,2,2),~] = analysisANN(T3_2_2Hour_test_ts,T3_2_2Hour_test_simOut,48);
[test_R_annual(3,:,2,3),~,test_Per_annual(3,:,2,3),~,test_RMSE_annual(3,:,2,3),~,test_rho_annual(3,:,2,3),~] = analysisANN(T3_2_3Hour_test_ts,T3_2_3Hour_test_simOut,48);
[test_R_annual(3,:,2,4),~,test_Per_annual(3,:,2,4),~,test_RMSE_annual(3,:,2,4),~,test_rho_annual(3,:,2,4),~] = analysisANN(T3_2_4Hour_test_ts,T3_2_4Hour_test_simOut,48);

[test_R_annual(3,:,3,1),~,test_Per_annual(3,:,3,1),~,test_RMSE_annual(3,:,3,1),~,test_rho_annual(3,:,3,1),~] = analysisANN(T3_3_1Hour_test_ts,T3_3_1Hour_test_simOut,48);
[test_R_annual(3,:,3,2),~,test_Per_annual(3,:,3,2),~,test_RMSE_annual(3,:,3,2),~,test_rho_annual(3,:,3,2),~] = analysisANN(T3_3_2Hour_test_ts,T3_3_2Hour_test_simOut,48);
[test_R_annual(3,:,3,3),~,test_Per_annual(3,:,3,3),~,test_RMSE_annual(3,:,3,3),~,test_rho_annual(3,:,3,3),~] = analysisANN(T3_3_3Hour_test_ts,T3_3_3Hour_test_simOut,48);
[test_R_annual(3,:,3,4),~,test_Per_annual(3,:,3,4),~,test_RMSE_annual(3,:,3,4),~,test_rho_annual(3,:,3,4),~] = analysisANN(T3_3_4Hour_test_ts,T3_3_4Hour_test_simOut,48);

[test_R_annual(3,:,4,1),~,test_Per_annual(3,:,4,1),~,test_RMSE_annual(3,:,4,1),~,test_rho_annual(3,:,4,1),~] = analysisANN(T3_4_1Hour_test_ts,T3_4_1Hour_test_simOut,48);
[test_R_annual(3,:,4,2),~,test_Per_annual(3,:,4,2),~,test_RMSE_annual(3,:,4,2),~,test_rho_annual(3,:,4,2),~] = analysisANN(T3_4_2Hour_test_ts,T3_4_2Hour_test_simOut,48);
[test_R_annual(3,:,4,3),~,test_Per_annual(3,:,4,3),~,test_RMSE_annual(3,:,4,3),~,test_rho_annual(3,:,4,3),~] = analysisANN(T3_4_3Hour_test_ts,T3_4_3Hour_test_simOut,48);
[test_R_annual(3,:,4,4),~,test_Per_annual(3,:,4,4),~,test_RMSE_annual(3,:,4,4),~,test_rho_annual(3,:,4,4),~] = analysisANN(T3_4_4Hour_test_ts,T3_4_4Hour_test_simOut,48);




%T4
[test_R_annual(4,:,1,1),~,test_Per_annual(4,:,1,1),~,test_RMSE_annual(4,:,1,1),~,test_rho_annual(4,:,1,1),~] = analysisANN(T4_1_1Hour_test_ts,T4_1_1Hour_test_simOut,48);
[test_R_annual(4,:,1,2),~,test_Per_annual(4,:,1,2),~,test_RMSE_annual(4,:,1,2),~,test_rho_annual(4,:,1,2),~] = analysisANN(T4_1_2Hour_test_ts,T4_1_2Hour_test_simOut,48);
[test_R_annual(4,:,1,3),~,test_Per_annual(4,:,1,3),~,test_RMSE_annual(4,:,1,3),~,test_rho_annual(4,:,1,3),~] = analysisANN(T4_1_3Hour_test_ts,T4_1_3Hour_test_simOut,48);
[test_R_annual(4,:,1,4),~,test_Per_annual(4,:,1,4),~,test_RMSE_annual(4,:,1,4),~,test_rho_annual(4,:,1,4),~] = analysisANN(T4_1_4Hour_test_ts,T4_1_4Hour_test_simOut,48);

[test_R_annual(4,:,2,1),~,test_Per_annual(4,:,2,1),~,test_RMSE_annual(4,:,2,1),~,test_rho_annual(4,:,2,1),~] = analysisANN(T4_2_1Hour_test_ts,T4_2_1Hour_test_simOut,48);
[test_R_annual(4,:,2,2),~,test_Per_annual(4,:,2,2),~,test_RMSE_annual(4,:,2,2),~,test_rho_annual(4,:,2,2),~] = analysisANN(T4_2_2Hour_test_ts,T4_2_2Hour_test_simOut,48);
[test_R_annual(4,:,2,3),~,test_Per_annual(4,:,2,3),~,test_RMSE_annual(4,:,2,3),~,test_rho_annual(4,:,2,3),~] = analysisANN(T4_2_3Hour_test_ts,T4_2_3Hour_test_simOut,48);
[test_R_annual(4,:,2,4),~,test_Per_annual(4,:,2,4),~,test_RMSE_annual(4,:,2,4),~,test_rho_annual(4,:,2,4),~] = analysisANN(T4_2_4Hour_test_ts,T4_2_4Hour_test_simOut,48);

[test_R_annual(4,:,3,1),~,test_Per_annual(4,:,3,1),~,test_RMSE_annual(4,:,3,1),~,test_rho_annual(4,:,3,1),~] = analysisANN(T4_3_1Hour_test_ts,T4_3_1Hour_test_simOut,48);
[test_R_annual(4,:,3,2),~,test_Per_annual(4,:,3,2),~,test_RMSE_annual(4,:,3,2),~,test_rho_annual(4,:,3,2),~] = analysisANN(T4_3_2Hour_test_ts,T4_3_2Hour_test_simOut,48);
[test_R_annual(4,:,3,3),~,test_Per_annual(4,:,3,3),~,test_RMSE_annual(4,:,3,3),~,test_rho_annual(4,:,3,3),~] = analysisANN(T4_3_3Hour_test_ts,T4_3_3Hour_test_simOut,48);
[test_R_annual(4,:,3,4),~,test_Per_annual(4,:,3,4),~,test_RMSE_annual(4,:,3,4),~,test_rho_annual(4,:,3,4),~] = analysisANN(T4_3_4Hour_test_ts,T4_3_4Hour_test_simOut,48);

[test_R_annual(4,:,4,1),~,test_Per_annual(4,:,4,1),~,test_RMSE_annual(4,:,4,1),~,test_rho_annual(4,:,4,1),~] = analysisANN(T4_4_1Hour_test_ts,T4_4_1Hour_test_simOut,48);
[test_R_annual(4,:,4,2),~,test_Per_annual(4,:,4,2),~,test_RMSE_annual(4,:,4,2),~,test_rho_annual(4,:,4,2),~] = analysisANN(T4_4_2Hour_test_ts,T4_4_2Hour_test_simOut,48);
[test_R_annual(4,:,4,3),~,test_Per_annual(4,:,4,3),~,test_RMSE_annual(4,:,4,3),~,test_rho_annual(4,:,4,3),~] = analysisANN(T4_4_3Hour_test_ts,T4_4_3Hour_test_simOut,48);
[test_R_annual(4,:,4,4),~,test_Per_annual(4,:,4,4),~,test_RMSE_annual(4,:,4,4),~,test_rho_annual(4,:,4,4),~] = analysisANN(T4_4_4Hour_test_ts,T4_4_4Hour_test_simOut,48);



%T5
[test_R_annual(5,:,1,1),~,test_Per_annual(5,:,1,1),~,test_RMSE_annual(5,:,1,1),~,test_rho_annual(5,:,1,1),~] = analysisANN(T5_1_1Hour_test_ts,T5_1_1Hour_test_simOut,48);
[test_R_annual(5,:,1,2),~,test_Per_annual(5,:,1,2),~,test_RMSE_annual(5,:,1,2),~,test_rho_annual(5,:,1,2),~] = analysisANN(T5_1_2Hour_test_ts,T5_1_2Hour_test_simOut,48);
[test_R_annual(5,:,1,3),~,test_Per_annual(5,:,1,3),~,test_RMSE_annual(5,:,1,3),~,test_rho_annual(5,:,1,3),~] = analysisANN(T5_1_3Hour_test_ts,T5_1_3Hour_test_simOut,48);
[test_R_annual(5,:,1,4),~,test_Per_annual(5,:,1,4),~,test_RMSE_annual(5,:,1,4),~,test_rho_annual(5,:,1,4),~] = analysisANN(T5_1_4Hour_test_ts,T5_1_4Hour_test_simOut,48);

[test_R_annual(5,:,2,1),~,test_Per_annual(5,:,2,1),~,test_RMSE_annual(5,:,2,1),~,test_rho_annual(5,:,2,1),~] = analysisANN(T5_2_1Hour_test_ts,T5_2_1Hour_test_simOut,48);
[test_R_annual(5,:,2,2),~,test_Per_annual(5,:,2,2),~,test_RMSE_annual(5,:,2,2),~,test_rho_annual(5,:,2,2),~] = analysisANN(T5_2_2Hour_test_ts,T5_2_2Hour_test_simOut,48);
[test_R_annual(5,:,2,3),~,test_Per_annual(5,:,2,3),~,test_RMSE_annual(5,:,2,3),~,test_rho_annual(5,:,2,3),~] = analysisANN(T5_2_3Hour_test_ts,T5_2_3Hour_test_simOut,48);
[test_R_annual(5,:,2,4),~,test_Per_annual(5,:,2,4),~,test_RMSE_annual(5,:,2,4),~,test_rho_annual(5,:,2,4),~] = analysisANN(T5_2_4Hour_test_ts,T5_2_4Hour_test_simOut,48);

[test_R_annual(5,:,3,1),~,test_Per_annual(5,:,3,1),~,test_RMSE_annual(5,:,3,1),~,test_rho_annual(5,:,3,1),~] = analysisANN(T5_3_1Hour_test_ts,T5_3_1Hour_test_simOut,48);
[test_R_annual(5,:,3,2),~,test_Per_annual(5,:,3,2),~,test_RMSE_annual(5,:,3,2),~,test_rho_annual(5,:,3,2),~] = analysisANN(T5_3_2Hour_test_ts,T5_3_2Hour_test_simOut,48);
[test_R_annual(5,:,3,3),~,test_Per_annual(5,:,3,3),~,test_RMSE_annual(5,:,3,3),~,test_rho_annual(5,:,3,3),~] = analysisANN(T5_3_3Hour_test_ts,T5_3_3Hour_test_simOut,48);
[test_R_annual(5,:,3,4),~,test_Per_annual(5,:,3,4),~,test_RMSE_annual(5,:,3,4),~,test_rho_annual(5,:,3,4),~] = analysisANN(T5_3_4Hour_test_ts,T5_3_4Hour_test_simOut,48);

[test_R_annual(5,:,4,1),~,test_Per_annual(5,:,4,1),~,test_RMSE_annual(5,:,4,1),~,test_rho_annual(5,:,4,1),~] = analysisANN(T5_4_1Hour_test_ts,T5_4_1Hour_test_simOut,48);
[test_R_annual(5,:,4,2),~,test_Per_annual(5,:,4,2),~,test_RMSE_annual(5,:,4,2),~,test_rho_annual(5,:,4,2),~] = analysisANN(T5_4_2Hour_test_ts,T5_4_2Hour_test_simOut,48);
[test_R_annual(5,:,4,3),~,test_Per_annual(5,:,4,3),~,test_RMSE_annual(5,:,4,3),~,test_rho_annual(5,:,4,3),~] = analysisANN(T5_4_3Hour_test_ts,T5_4_3Hour_test_simOut,48);
[test_R_annual(5,:,4,4),~,test_Per_annual(5,:,4,4),~,test_RMSE_annual(5,:,4,4),~,test_rho_annual(5,:,4,4),~] = analysisANN(T5_4_4Hour_test_ts,T5_4_4Hour_test_simOut,48);




%T6
[test_R_annual(6,:,1,1),~,test_Per_annual(6,:,1,1),~,test_RMSE_annual(6,:,1,1),~,test_rho_annual(6,:,1,1),~] = analysisANN(T6_1_1Hour_test_ts,T6_1_1Hour_test_simOut,48);
[test_R_annual(6,:,1,2),~,test_Per_annual(6,:,1,2),~,test_RMSE_annual(6,:,1,2),~,test_rho_annual(6,:,1,2),~] = analysisANN(T6_1_2Hour_test_ts,T6_1_2Hour_test_simOut,48);
[test_R_annual(6,:,1,3),~,test_Per_annual(6,:,1,3),~,test_RMSE_annual(6,:,1,3),~,test_rho_annual(6,:,1,3),~] = analysisANN(T6_1_3Hour_test_ts,T6_1_3Hour_test_simOut,48);
[test_R_annual(6,:,1,4),~,test_Per_annual(6,:,1,4),~,test_RMSE_annual(6,:,1,4),~,test_rho_annual(6,:,1,4),~] = analysisANN(T6_1_4Hour_test_ts,T6_1_4Hour_test_simOut,48);

[test_R_annual(6,:,2,1),~,test_Per_annual(6,:,2,1),~,test_RMSE_annual(6,:,2,1),~,test_rho_annual(6,:,2,1),~] = analysisANN(T6_2_1Hour_test_ts,T6_2_1Hour_test_simOut,48);
[test_R_annual(6,:,2,2),~,test_Per_annual(6,:,2,2),~,test_RMSE_annual(6,:,2,2),~,test_rho_annual(6,:,2,2),~] = analysisANN(T6_2_2Hour_test_ts,T6_2_2Hour_test_simOut,48);
[test_R_annual(6,:,2,3),~,test_Per_annual(6,:,2,3),~,test_RMSE_annual(6,:,2,3),~,test_rho_annual(6,:,2,3),~] = analysisANN(T6_2_3Hour_test_ts,T6_2_3Hour_test_simOut,48);
[test_R_annual(6,:,2,4),~,test_Per_annual(6,:,2,4),~,test_RMSE_annual(6,:,2,4),~,test_rho_annual(6,:,2,4),~] = analysisANN(T6_2_4Hour_test_ts,T6_2_4Hour_test_simOut,48);

[test_R_annual(6,:,3,1),~,test_Per_annual(6,:,3,1),~,test_RMSE_annual(6,:,3,1),~,test_rho_annual(6,:,3,1),~] = analysisANN(T6_3_1Hour_test_ts,T6_3_1Hour_test_simOut,48);
[test_R_annual(6,:,3,2),~,test_Per_annual(6,:,3,2),~,test_RMSE_annual(6,:,3,2),~,test_rho_annual(6,:,3,2),~] = analysisANN(T6_3_2Hour_test_ts,T6_3_2Hour_test_simOut,48);
[test_R_annual(6,:,3,3),~,test_Per_annual(6,:,3,3),~,test_RMSE_annual(6,:,3,3),~,test_rho_annual(6,:,3,3),~] = analysisANN(T6_3_3Hour_test_ts,T6_3_3Hour_test_simOut,48);
[test_R_annual(6,:,3,4),~,test_Per_annual(6,:,3,4),~,test_RMSE_annual(6,:,3,4),~,test_rho_annual(6,:,3,4),~] = analysisANN(T6_3_4Hour_test_ts,T6_3_4Hour_test_simOut,48);

[test_R_annual(6,:,4,1),~,test_Per_annual(6,:,4,1),~,test_RMSE_annual(6,:,4,1),~,test_rho_annual(6,:,4,1),~] = analysisANN(T6_4_1Hour_test_ts,T6_4_1Hour_test_simOut,48);
[test_R_annual(6,:,4,2),~,test_Per_annual(6,:,4,2),~,test_RMSE_annual(6,:,4,2),~,test_rho_annual(6,:,4,2),~] = analysisANN(T6_4_2Hour_test_ts,T6_4_2Hour_test_simOut,48);
[test_R_annual(6,:,4,3),~,test_Per_annual(6,:,4,3),~,test_RMSE_annual(6,:,4,3),~,test_rho_annual(6,:,4,3),~] = analysisANN(T6_4_3Hour_test_ts,T6_4_3Hour_test_simOut,48);
[test_R_annual(6,:,4,4),~,test_Per_annual(6,:,4,4),~,test_RMSE_annual(6,:,4,4),~,test_rho_annual(6,:,4,4),~] = analysisANN(T6_4_4Hour_test_ts,T6_4_4Hour_test_simOut,48);





%%%%%%% DAILY SCALE
%T1
[test_day_R_annual(1,:,1,1),~,test_day_Per_annual(1,:,1,1),~,test_day_RMSE_annual(1,:,1,1),~,test_day_rho_annual(1,:,1,1),~] = analysisANN(T1_1_1Day_test_ts,T1_1_1Day_test_simOut,1);
[test_day_R_annual(1,:,1,2),~,test_day_Per_annual(1,:,1,2),~,test_day_RMSE_annual(1,:,1,2),~,test_day_rho_annual(1,:,1,2),~] = analysisANN(T1_1_2Day_test_ts,T1_1_2Day_test_simOut,1);
[test_day_R_annual(1,:,1,3),~,test_day_Per_annual(1,:,1,3),~,test_day_RMSE_annual(1,:,1,3),~,test_day_rho_annual(1,:,1,3),~] = analysisANN(T1_1_3Day_test_ts,T1_1_3Day_test_simOut,1);
[test_day_R_annual(1,:,1,4),~,test_day_Per_annual(1,:,1,4),~,test_day_RMSE_annual(1,:,1,4),~,test_day_rho_annual(1,:,1,4),~] = analysisANN(T1_1_4Day_test_ts,T1_1_4Day_test_simOut,1);

[test_day_R_annual(1,:,2,1),~,test_day_Per_annual(1,:,2,1),~,test_day_RMSE_annual(1,:,2,1),~,test_day_rho_annual(1,:,2,1),~] = analysisANN(T1_2_1Day_test_ts,T1_2_1Day_test_simOut,1);
[test_day_R_annual(1,:,2,2),~,test_day_Per_annual(1,:,2,2),~,test_day_RMSE_annual(1,:,2,2),~,test_day_rho_annual(1,:,2,2),~] = analysisANN(T1_2_2Day_test_ts,T1_2_2Day_test_simOut,1);
[test_day_R_annual(1,:,2,3),~,test_day_Per_annual(1,:,2,3),~,test_day_RMSE_annual(1,:,2,3),~,test_day_rho_annual(1,:,2,3),~] = analysisANN(T1_2_3Day_test_ts,T1_2_3Day_test_simOut,1);
[test_day_R_annual(1,:,2,4),~,test_day_Per_annual(1,:,2,4),~,test_day_RMSE_annual(1,:,2,4),~,test_day_rho_annual(1,:,2,4),~] = analysisANN(T1_2_4Day_test_ts,T1_2_4Day_test_simOut,1);

[test_day_R_annual(1,:,3,1),~,test_day_Per_annual(1,:,3,1),~,test_day_RMSE_annual(1,:,3,1),~,test_day_rho_annual(1,:,3,1),~] = analysisANN(T1_3_1Day_test_ts,T1_3_1Day_test_simOut,1);
[test_day_R_annual(1,:,3,2),~,test_day_Per_annual(1,:,3,2),~,test_day_RMSE_annual(1,:,3,2),~,test_day_rho_annual(1,:,3,2),~] = analysisANN(T1_3_2Day_test_ts,T1_3_2Day_test_simOut,1);
[test_day_R_annual(1,:,3,3),~,test_day_Per_annual(1,:,3,3),~,test_day_RMSE_annual(1,:,3,3),~,test_day_rho_annual(1,:,3,3),~] = analysisANN(T1_3_3Day_test_ts,T1_3_3Day_test_simOut,1);
[test_day_R_annual(1,:,3,4),~,test_day_Per_annual(1,:,3,4),~,test_day_RMSE_annual(1,:,3,4),~,test_day_rho_annual(1,:,3,4),~] = analysisANN(T1_3_4Day_test_ts,T1_3_4Day_test_simOut,1);

[test_day_R_annual(1,:,4,1),~,test_day_Per_annual(1,:,4,1),~,test_day_RMSE_annual(1,:,4,1),~,test_day_rho_annual(1,:,4,1),~] = analysisANN(T1_4_1Day_test_ts,T1_4_1Day_test_simOut,1);
[test_day_R_annual(1,:,4,2),~,test_day_Per_annual(1,:,4,2),~,test_day_RMSE_annual(1,:,4,2),~,test_day_rho_annual(1,:,4,2),~] = analysisANN(T1_4_2Day_test_ts,T1_4_2Day_test_simOut,1);
[test_day_R_annual(1,:,4,3),~,test_day_Per_annual(1,:,4,3),~,test_day_RMSE_annual(1,:,4,3),~,test_day_rho_annual(1,:,4,3),~] = analysisANN(T1_4_3Day_test_ts,T1_4_3Day_test_simOut,1);
[test_day_R_annual(1,:,4,4),~,test_day_Per_annual(1,:,4,4),~,test_day_RMSE_annual(1,:,4,4),~,test_day_rho_annual(1,:,4,4),~] = analysisANN(T1_4_4Day_test_ts,T1_4_4Day_test_simOut,1);



%T2
[test_day_R_annual(2,:,1,1),~,test_day_Per_annual(2,:,1,1),~,test_day_RMSE_annual(2,:,1,1),~,test_day_rho_annual(2,:,1,1),~] = analysisANN(T2_1_1Day_test_ts,T2_1_1Day_test_simOut,1);
[test_day_R_annual(2,:,1,2),~,test_day_Per_annual(2,:,1,2),~,test_day_RMSE_annual(2,:,1,2),~,test_day_rho_annual(2,:,1,2),~] = analysisANN(T2_1_2Day_test_ts,T2_1_2Day_test_simOut,1);
[test_day_R_annual(2,:,1,3),~,test_day_Per_annual(2,:,1,3),~,test_day_RMSE_annual(2,:,1,3),~,test_day_rho_annual(2,:,1,3),~] = analysisANN(T2_1_3Day_test_ts,T2_1_3Day_test_simOut,1);
[test_day_R_annual(2,:,1,4),~,test_day_Per_annual(2,:,1,4),~,test_day_RMSE_annual(2,:,1,4),~,test_day_rho_annual(2,:,1,4),~] = analysisANN(T2_1_4Day_test_ts,T2_1_4Day_test_simOut,1);

[test_day_R_annual(2,:,2,1),~,test_day_Per_annual(2,:,2,1),~,test_day_RMSE_annual(2,:,2,1),~,test_day_rho_annual(2,:,2,1),~] = analysisANN(T2_2_1Day_test_ts,T2_2_1Day_test_simOut,1);
[test_day_R_annual(2,:,2,2),~,test_day_Per_annual(2,:,2,2),~,test_day_RMSE_annual(2,:,2,2),~,test_day_rho_annual(2,:,2,2),~] = analysisANN(T2_2_2Day_test_ts,T2_2_2Day_test_simOut,1);
[test_day_R_annual(2,:,2,3),~,test_day_Per_annual(2,:,2,3),~,test_day_RMSE_annual(2,:,2,3),~,test_day_rho_annual(2,:,2,3),~] = analysisANN(T2_2_3Day_test_ts,T2_2_3Day_test_simOut,1);
[test_day_R_annual(2,:,2,4),~,test_day_Per_annual(2,:,2,4),~,test_day_RMSE_annual(2,:,2,4),~,test_day_rho_annual(2,:,2,4),~] = analysisANN(T2_2_4Day_test_ts,T2_2_4Day_test_simOut,1);

[test_day_R_annual(2,:,3,1),~,test_day_Per_annual(2,:,3,1),~,test_day_RMSE_annual(2,:,3,1),~,test_day_rho_annual(2,:,3,1),~] = analysisANN(T2_3_1Day_test_ts,T2_3_1Day_test_simOut,1);
[test_day_R_annual(2,:,3,2),~,test_day_Per_annual(2,:,3,2),~,test_day_RMSE_annual(2,:,3,2),~,test_day_rho_annual(2,:,3,2),~] = analysisANN(T2_3_2Day_test_ts,T2_3_2Day_test_simOut,1);
[test_day_R_annual(2,:,3,3),~,test_day_Per_annual(2,:,3,3),~,test_day_RMSE_annual(2,:,3,3),~,test_day_rho_annual(2,:,3,3),~] = analysisANN(T2_3_3Day_test_ts,T2_3_3Day_test_simOut,1);
[test_day_R_annual(2,:,3,4),~,test_day_Per_annual(2,:,3,4),~,test_day_RMSE_annual(2,:,3,4),~,test_day_rho_annual(2,:,3,4),~] = analysisANN(T2_3_4Day_test_ts,T2_3_4Day_test_simOut,1);

[test_day_R_annual(2,:,4,1),~,test_day_Per_annual(2,:,4,1),~,test_day_RMSE_annual(2,:,4,1),~,test_day_rho_annual(2,:,4,1),~] = analysisANN(T2_4_1Day_test_ts,T2_4_1Day_test_simOut,1);
[test_day_R_annual(2,:,4,2),~,test_day_Per_annual(2,:,4,2),~,test_day_RMSE_annual(2,:,4,2),~,test_day_rho_annual(2,:,4,2),~] = analysisANN(T2_4_2Day_test_ts,T2_4_2Day_test_simOut,1);
[test_day_R_annual(2,:,4,3),~,test_day_Per_annual(2,:,4,3),~,test_day_RMSE_annual(2,:,4,3),~,test_day_rho_annual(2,:,4,3),~] = analysisANN(T2_4_3Day_test_ts,T2_4_3Day_test_simOut,1);
[test_day_R_annual(2,:,4,4),~,test_day_Per_annual(2,:,4,4),~,test_day_RMSE_annual(2,:,4,4),~,test_day_rho_annual(2,:,4,4),~] = analysisANN(T2_4_4Day_test_ts,T2_4_4Day_test_simOut,1);




%T3
[test_day_R_annual(3,:,1,1),~,test_day_Per_annual(3,:,1,1),~,test_day_RMSE_annual(3,:,1,1),~,test_day_rho_annual(3,:,1,1),~] = analysisANN(T3_1_1Day_test_ts,T3_1_1Day_test_simOut,1);
[test_day_R_annual(3,:,1,2),~,test_day_Per_annual(3,:,1,2),~,test_day_RMSE_annual(3,:,1,2),~,test_day_rho_annual(3,:,1,2),~] = analysisANN(T3_1_2Day_test_ts,T3_1_2Day_test_simOut,1);
[test_day_R_annual(3,:,1,3),~,test_day_Per_annual(3,:,1,3),~,test_day_RMSE_annual(3,:,1,3),~,test_day_rho_annual(3,:,1,3),~] = analysisANN(T3_1_3Day_test_ts,T3_1_3Day_test_simOut,1);
[test_day_R_annual(3,:,1,4),~,test_day_Per_annual(3,:,1,4),~,test_day_RMSE_annual(3,:,1,4),~,test_day_rho_annual(3,:,1,4),~] = analysisANN(T3_1_4Day_test_ts,T3_1_4Day_test_simOut,1);

[test_day_R_annual(3,:,2,1),~,test_day_Per_annual(3,:,2,1),~,test_day_RMSE_annual(3,:,2,1),~,test_day_rho_annual(3,:,2,1),~] = analysisANN(T3_2_1Day_test_ts,T3_2_1Day_test_simOut,1);
[test_day_R_annual(3,:,2,2),~,test_day_Per_annual(3,:,2,2),~,test_day_RMSE_annual(3,:,2,2),~,test_day_rho_annual(3,:,2,2),~] = analysisANN(T3_2_2Day_test_ts,T3_2_2Day_test_simOut,1);
[test_day_R_annual(3,:,2,3),~,test_day_Per_annual(3,:,2,3),~,test_day_RMSE_annual(3,:,2,3),~,test_day_rho_annual(3,:,2,3),~] = analysisANN(T3_2_3Day_test_ts,T3_2_3Day_test_simOut,1);
[test_day_R_annual(3,:,2,4),~,test_day_Per_annual(3,:,2,4),~,test_day_RMSE_annual(3,:,2,4),~,test_day_rho_annual(3,:,2,4),~] = analysisANN(T3_2_4Day_test_ts,T3_2_4Day_test_simOut,1);

[test_day_R_annual(3,:,3,1),~,test_day_Per_annual(3,:,3,1),~,test_day_RMSE_annual(3,:,3,1),~,test_day_rho_annual(3,:,3,1),~] = analysisANN(T3_3_1Day_test_ts,T3_3_1Day_test_simOut,1);
[test_day_R_annual(3,:,3,2),~,test_day_Per_annual(3,:,3,2),~,test_day_RMSE_annual(3,:,3,2),~,test_day_rho_annual(3,:,3,2),~] = analysisANN(T3_3_2Day_test_ts,T3_3_2Day_test_simOut,1);
[test_day_R_annual(3,:,3,3),~,test_day_Per_annual(3,:,3,3),~,test_day_RMSE_annual(3,:,3,3),~,test_day_rho_annual(3,:,3,3),~] = analysisANN(T3_3_3Day_test_ts,T3_3_3Day_test_simOut,1);
[test_day_R_annual(3,:,3,4),~,test_day_Per_annual(3,:,3,4),~,test_day_RMSE_annual(3,:,3,4),~,test_day_rho_annual(3,:,3,4),~] = analysisANN(T3_3_4Day_test_ts,T3_3_4Day_test_simOut,1);

[test_day_R_annual(3,:,4,1),~,test_day_Per_annual(3,:,4,1),~,test_day_RMSE_annual(3,:,4,1),~,test_day_rho_annual(3,:,4,1),~] = analysisANN(T3_4_1Day_test_ts,T3_4_1Day_test_simOut,1);
[test_day_R_annual(3,:,4,2),~,test_day_Per_annual(3,:,4,2),~,test_day_RMSE_annual(3,:,4,2),~,test_day_rho_annual(3,:,4,2),~] = analysisANN(T3_4_2Day_test_ts,T3_4_2Day_test_simOut,1);
[test_day_R_annual(3,:,4,3),~,test_day_Per_annual(3,:,4,3),~,test_day_RMSE_annual(3,:,4,3),~,test_day_rho_annual(3,:,4,3),~] = analysisANN(T3_4_3Day_test_ts,T3_4_3Day_test_simOut,1);
[test_day_R_annual(3,:,4,4),~,test_day_Per_annual(3,:,4,4),~,test_day_RMSE_annual(3,:,4,4),~,test_day_rho_annual(3,:,4,4),~] = analysisANN(T3_4_4Day_test_ts,T3_4_4Day_test_simOut,1);




%T4
[test_day_R_annual(4,:,1,1),~,test_day_Per_annual(4,:,1,1),~,test_day_RMSE_annual(4,:,1,1),~,test_day_rho_annual(4,:,1,1),~] = analysisANN(T4_1_1Day_test_ts,T4_1_1Day_test_simOut,1);
[test_day_R_annual(4,:,1,2),~,test_day_Per_annual(4,:,1,2),~,test_day_RMSE_annual(4,:,1,2),~,test_day_rho_annual(4,:,1,2),~] = analysisANN(T4_1_2Day_test_ts,T4_1_2Day_test_simOut,1);
[test_day_R_annual(4,:,1,3),~,test_day_Per_annual(4,:,1,3),~,test_day_RMSE_annual(4,:,1,3),~,test_day_rho_annual(4,:,1,3),~] = analysisANN(T4_1_3Day_test_ts,T4_1_3Day_test_simOut,1);
[test_day_R_annual(4,:,1,4),~,test_day_Per_annual(4,:,1,4),~,test_day_RMSE_annual(4,:,1,4),~,test_day_rho_annual(4,:,1,4),~] = analysisANN(T4_1_4Day_test_ts,T4_1_4Day_test_simOut,1);

[test_day_R_annual(4,:,2,1),~,test_day_Per_annual(4,:,2,1),~,test_day_RMSE_annual(4,:,2,1),~,test_day_rho_annual(4,:,2,1),~] = analysisANN(T4_2_1Day_test_ts,T4_2_1Day_test_simOut,1);
[test_day_R_annual(4,:,2,2),~,test_day_Per_annual(4,:,2,2),~,test_day_RMSE_annual(4,:,2,2),~,test_day_rho_annual(4,:,2,2),~] = analysisANN(T4_2_2Day_test_ts,T4_2_2Day_test_simOut,1);
[test_day_R_annual(4,:,2,3),~,test_day_Per_annual(4,:,2,3),~,test_day_RMSE_annual(4,:,2,3),~,test_day_rho_annual(4,:,2,3),~] = analysisANN(T4_2_3Day_test_ts,T4_2_3Day_test_simOut,1);
[test_day_R_annual(4,:,2,4),~,test_day_Per_annual(4,:,2,4),~,test_day_RMSE_annual(4,:,2,4),~,test_day_rho_annual(4,:,2,4),~] = analysisANN(T4_2_4Day_test_ts,T4_2_4Day_test_simOut,1);

[test_day_R_annual(4,:,3,1),~,test_day_Per_annual(4,:,3,1),~,test_day_RMSE_annual(4,:,3,1),~,test_day_rho_annual(4,:,3,1),~] = analysisANN(T4_3_1Day_test_ts,T4_3_1Day_test_simOut,1);
[test_day_R_annual(4,:,3,2),~,test_day_Per_annual(4,:,3,2),~,test_day_RMSE_annual(4,:,3,2),~,test_day_rho_annual(4,:,3,2),~] = analysisANN(T4_3_2Day_test_ts,T4_3_2Day_test_simOut,1);
[test_day_R_annual(4,:,3,3),~,test_day_Per_annual(4,:,3,3),~,test_day_RMSE_annual(4,:,3,3),~,test_day_rho_annual(4,:,3,3),~] = analysisANN(T4_3_3Day_test_ts,T4_3_3Day_test_simOut,1);
[test_day_R_annual(4,:,3,4),~,test_day_Per_annual(4,:,3,4),~,test_day_RMSE_annual(4,:,3,4),~,test_day_rho_annual(4,:,3,4),~] = analysisANN(T4_3_4Day_test_ts,T4_3_4Day_test_simOut,1);

[test_day_R_annual(4,:,4,1),~,test_day_Per_annual(4,:,4,1),~,test_day_RMSE_annual(4,:,4,1),~,test_day_rho_annual(4,:,4,1),~] = analysisANN(T4_4_1Day_test_ts,T4_4_1Day_test_simOut,1);
[test_day_R_annual(4,:,4,2),~,test_day_Per_annual(4,:,4,2),~,test_day_RMSE_annual(4,:,4,2),~,test_day_rho_annual(4,:,4,2),~] = analysisANN(T4_4_2Day_test_ts,T4_4_2Day_test_simOut,1);
[test_day_R_annual(4,:,4,3),~,test_day_Per_annual(4,:,4,3),~,test_day_RMSE_annual(4,:,4,3),~,test_day_rho_annual(4,:,4,3),~] = analysisANN(T4_4_3Day_test_ts,T4_4_3Day_test_simOut,1);
[test_day_R_annual(4,:,4,4),~,test_day_Per_annual(4,:,4,4),~,test_day_RMSE_annual(4,:,4,4),~,test_day_rho_annual(4,:,4,4),~] = analysisANN(T4_4_4Day_test_ts,T4_4_4Day_test_simOut,1);



%T5
[test_day_R_annual(5,:,1,1),~,test_day_Per_annual(5,:,1,1),~,test_day_RMSE_annual(5,:,1,1),~,test_day_rho_annual(5,:,1,1),~] = analysisANN(T5_1_1Day_test_ts,T5_1_1Day_test_simOut,1);
[test_day_R_annual(5,:,1,2),~,test_day_Per_annual(5,:,1,2),~,test_day_RMSE_annual(5,:,1,2),~,test_day_rho_annual(5,:,1,2),~] = analysisANN(T5_1_2Day_test_ts,T5_1_2Day_test_simOut,1);
[test_day_R_annual(5,:,1,3),~,test_day_Per_annual(5,:,1,3),~,test_day_RMSE_annual(5,:,1,3),~,test_day_rho_annual(5,:,1,3),~] = analysisANN(T5_1_3Day_test_ts,T5_1_3Day_test_simOut,1);
[test_day_R_annual(5,:,1,4),~,test_day_Per_annual(5,:,1,4),~,test_day_RMSE_annual(5,:,1,4),~,test_day_rho_annual(5,:,1,4),~] = analysisANN(T5_1_4Day_test_ts,T5_1_4Day_test_simOut,1);

[test_day_R_annual(5,:,2,1),~,test_day_Per_annual(5,:,2,1),~,test_day_RMSE_annual(5,:,2,1),~,test_day_rho_annual(5,:,2,1),~] = analysisANN(T5_2_1Day_test_ts,T5_2_1Day_test_simOut,1);
[test_day_R_annual(5,:,2,2),~,test_day_Per_annual(5,:,2,2),~,test_day_RMSE_annual(5,:,2,2),~,test_day_rho_annual(5,:,2,2),~] = analysisANN(T5_2_2Day_test_ts,T5_2_2Day_test_simOut,1);
[test_day_R_annual(5,:,2,3),~,test_day_Per_annual(5,:,2,3),~,test_day_RMSE_annual(5,:,2,3),~,test_day_rho_annual(5,:,2,3),~] = analysisANN(T5_2_3Day_test_ts,T5_2_3Day_test_simOut,1);
[test_day_R_annual(5,:,2,4),~,test_day_Per_annual(5,:,2,4),~,test_day_RMSE_annual(5,:,2,4),~,test_day_rho_annual(5,:,2,4),~] = analysisANN(T5_2_4Day_test_ts,T5_2_4Day_test_simOut,1);

[test_day_R_annual(5,:,3,1),~,test_day_Per_annual(5,:,3,1),~,test_day_RMSE_annual(5,:,3,1),~,test_day_rho_annual(5,:,3,1),~] = analysisANN(T5_3_1Day_test_ts,T5_3_1Day_test_simOut,1);
[test_day_R_annual(5,:,3,2),~,test_day_Per_annual(5,:,3,2),~,test_day_RMSE_annual(5,:,3,2),~,test_day_rho_annual(5,:,3,2),~] = analysisANN(T5_3_2Day_test_ts,T5_3_2Day_test_simOut,1);
[test_day_R_annual(5,:,3,3),~,test_day_Per_annual(5,:,3,3),~,test_day_RMSE_annual(5,:,3,3),~,test_day_rho_annual(5,:,3,3),~] = analysisANN(T5_3_3Day_test_ts,T5_3_3Day_test_simOut,1);
[test_day_R_annual(5,:,3,4),~,test_day_Per_annual(5,:,3,4),~,test_day_RMSE_annual(5,:,3,4),~,test_day_rho_annual(5,:,3,4),~] = analysisANN(T5_3_4Day_test_ts,T5_3_4Day_test_simOut,1);

[test_day_R_annual(5,:,4,1),~,test_day_Per_annual(5,:,4,1),~,test_day_RMSE_annual(5,:,4,1),~,test_day_rho_annual(5,:,4,1),~] = analysisANN(T5_4_1Day_test_ts,T5_4_1Day_test_simOut,1);
[test_day_R_annual(5,:,4,2),~,test_day_Per_annual(5,:,4,2),~,test_day_RMSE_annual(5,:,4,2),~,test_day_rho_annual(5,:,4,2),~] = analysisANN(T5_4_2Day_test_ts,T5_4_2Day_test_simOut,1);
[test_day_R_annual(5,:,4,3),~,test_day_Per_annual(5,:,4,3),~,test_day_RMSE_annual(5,:,4,3),~,test_day_rho_annual(5,:,4,3),~] = analysisANN(T5_4_3Day_test_ts,T5_4_3Day_test_simOut,1);
[test_day_R_annual(5,:,4,4),~,test_day_Per_annual(5,:,4,4),~,test_day_RMSE_annual(5,:,4,4),~,test_day_rho_annual(5,:,4,4),~] = analysisANN(T5_4_4Day_test_ts,T5_4_4Day_test_simOut,1);




%T6
[test_day_R_annual(6,:,1,1),~,test_day_Per_annual(6,:,1,1),~,test_day_RMSE_annual(6,:,1,1),~,test_day_rho_annual(6,:,1,1),~] = analysisANN(T6_1_1Day_test_ts,T6_1_1Day_test_simOut,1);
[test_day_R_annual(6,:,1,2),~,test_day_Per_annual(6,:,1,2),~,test_day_RMSE_annual(6,:,1,2),~,test_day_rho_annual(6,:,1,2),~] = analysisANN(T6_1_2Day_test_ts,T6_1_2Day_test_simOut,1);
[test_day_R_annual(6,:,1,3),~,test_day_Per_annual(6,:,1,3),~,test_day_RMSE_annual(6,:,1,3),~,test_day_rho_annual(6,:,1,3),~] = analysisANN(T6_1_3Day_test_ts,T6_1_3Day_test_simOut,1);
[test_day_R_annual(6,:,1,4),~,test_day_Per_annual(6,:,1,4),~,test_day_RMSE_annual(6,:,1,4),~,test_day_rho_annual(6,:,1,4),~] = analysisANN(T6_1_4Day_test_ts,T6_1_4Day_test_simOut,1);

[test_day_R_annual(6,:,2,1),~,test_day_Per_annual(6,:,2,1),~,test_day_RMSE_annual(6,:,2,1),~,test_day_rho_annual(6,:,2,1),~] = analysisANN(T6_2_1Day_test_ts,T6_2_1Day_test_simOut,1);
[test_day_R_annual(6,:,2,2),~,test_day_Per_annual(6,:,2,2),~,test_day_RMSE_annual(6,:,2,2),~,test_day_rho_annual(6,:,2,2),~] = analysisANN(T6_2_2Day_test_ts,T6_2_2Day_test_simOut,1);
[test_day_R_annual(6,:,2,3),~,test_day_Per_annual(6,:,2,3),~,test_day_RMSE_annual(6,:,2,3),~,test_day_rho_annual(6,:,2,3),~] = analysisANN(T6_2_3Day_test_ts,T6_2_3Day_test_simOut,1);
[test_day_R_annual(6,:,2,4),~,test_day_Per_annual(6,:,2,4),~,test_day_RMSE_annual(6,:,2,4),~,test_day_rho_annual(6,:,2,4),~] = analysisANN(T6_2_4Day_test_ts,T6_2_4Day_test_simOut,1);

[test_day_R_annual(6,:,3,1),~,test_day_Per_annual(6,:,3,1),~,test_day_RMSE_annual(6,:,3,1),~,test_day_rho_annual(6,:,3,1),~] = analysisANN(T6_3_1Day_test_ts,T6_3_1Day_test_simOut,1);
[test_day_R_annual(6,:,3,2),~,test_day_Per_annual(6,:,3,2),~,test_day_RMSE_annual(6,:,3,2),~,test_day_rho_annual(6,:,3,2),~] = analysisANN(T6_3_2Day_test_ts,T6_3_2Day_test_simOut,1);
[test_day_R_annual(6,:,3,3),~,test_day_Per_annual(6,:,3,3),~,test_day_RMSE_annual(6,:,3,3),~,test_day_rho_annual(6,:,3,3),~] = analysisANN(T6_3_3Day_test_ts,T6_3_3Day_test_simOut,1);
[test_day_R_annual(6,:,3,4),~,test_day_Per_annual(6,:,3,4),~,test_day_RMSE_annual(6,:,3,4),~,test_day_rho_annual(6,:,3,4),~] = analysisANN(T6_3_4Day_test_ts,T6_3_4Day_test_simOut,1);

[test_day_R_annual(6,:,4,1),~,test_day_Per_annual(6,:,4,1),~,test_day_RMSE_annual(6,:,4,1),~,test_day_rho_annual(6,:,4,1),~] = analysisANN(T6_4_1Day_test_ts,T6_4_1Day_test_simOut,1);
[test_day_R_annual(6,:,4,2),~,test_day_Per_annual(6,:,4,2),~,test_day_RMSE_annual(6,:,4,2),~,test_day_rho_annual(6,:,4,2),~] = analysisANN(T6_4_2Day_test_ts,T6_4_2Day_test_simOut,1);
[test_day_R_annual(6,:,4,3),~,test_day_Per_annual(6,:,4,3),~,test_day_RMSE_annual(6,:,4,3),~,test_day_rho_annual(6,:,4,3),~] = analysisANN(T6_4_3Day_test_ts,T6_4_3Day_test_simOut,1);
[test_day_R_annual(6,:,4,4),~,test_day_Per_annual(6,:,4,4),~,test_day_RMSE_annual(6,:,4,4),~,test_day_rho_annual(6,:,4,4),~] = analysisANN(T6_4_4Day_test_ts,T6_4_4Day_test_simOut,1);






%Color code NEE: rgb[105/255 105/255 105/255]
%Color code Reco: rgb[220/255 186/255 91/255]
%Color code GPP: rgb[91/255, 220/255, 186/255]




%%%%%%%% FIGURE ONE
%map


%%%%%%%% FIGURE TWO
%conceptual figure


train=cell2mat(T6_1_1Day_train_ts);
train_nee=train(1,:);
valid=cell2mat(T6_1_1Day_valid_ts);
valid_nee=valid(1,:);
test=cell2mat(T6_1_1Day_test_ts);
test_nee=test(1,:);

sim=cell2mat(T6_1_1Day_test_simOut);
sim_nee=sim(1,:);



hold on
plot(train_nee)
plot(cat(2,nan*train_nee,valid_nee))

plot(cat(2,nan*train_nee,nan*valid_nee,sim_nee+10),'color',[62/255 62/255 62/255])
plot(cat(2,nan*train_nee,nan*valid_nee,test_nee),'color',[105/255 105/255 105/255])

box on
axis([0 3285 -13 13])
yticks([-10 -5 0 5 10])
xticks([0 365 365*2 365*3 365*4 365*5 365*6 365*7 365*8 365*9])
xticklabels({'2010','2011','2012','2013','2014','2015','2016','2017','2018'})
ylabel('NEE [?mol m^-^2 s^-^1]')











%%%%%%%% FIGURE THREE
%train r2
subplot(4,2,1)
hold on
set(0,'DefaultLegendAutoUpdate','off')
plot(nan,nan,'o','color',[105/255 105/255 105/255],'MarkerFaceColor',[105/255 105/255 105/255])
plot(nan,nan,'v','color',[220/255 186/255 91/255],'MarkerFaceColor',[220/255 186/255 91/255])
plot(nan,nan,'^','color',[91/255 220/255 186/255],'MarkerFaceColor',[91/255 220/255 186/255])
lgn=legend({'GPP','R_e_c_o','NEE'},'Location','northwest','Orientation','horizontal')
legend('boxoff')
%title(lgn,'30-Min Data')


a=reshape(mean(mean(test_R_annual(:,1,:,:),3),1),[1,4]);
b=reshape(std(std(test_R_annual(:,1,:,:),1,3),1,1),[1,4]);
e1=errorbar([0.9,1.9,2.9,3.9],a,b)
e1.Color=[105/255 105/255 105/255]
e1.LineStyle='none'
e1.Marker='o'
e1.MarkerFaceColor=[105/255 105/255 105/255]

a=reshape(mean(mean(test_R_annual(:,2,:,:),3),1),[1,4]);
b=reshape(std(std(test_R_annual(:,2,:,:),1,3),1,1),[1,4]);
e2=errorbar(a,b)
e2.Color=[220/255 186/255 91/255]
e2.LineStyle='none'
e2.Marker='v'
e2.MarkerFaceColor=[220/255 186/255 91/255]

a=reshape(mean(mean(test_R_annual(:,3,:,:),3),1),[1,4]);
b=reshape(std(std(test_R_annual(:,3,:,:),1,3),1,1),[1,4]);
e3=errorbar([1.1,2.1,3.1,4.1],a,b)
e3.Color=[91/255 220/255 186/255]
e3.LineStyle='none'
e3.Marker='^'
e3.MarkerFaceColor=[91/255 220/255 186/255]


ylabel('r^2')
axis([0.75 4.25 .55 1.05])
xticks([1 2 3 4])
xticklabels([])
yticks([.6 .7 .8 .9])
title('Training Years')
box on
ntitle('(a) ','location','northeast');

%valid r2
subplot(4,2,2)
hold on
% set(0,'DefaultLegendAutoUpdate','off')



a=reshape(mean(mean(test_R_annual(:,1,:,:),4),1),[1,4]);
b=reshape(std(std(test_R_annual(:,1,:,:),1,4),1,1),[1,4]);
e1=errorbar([0.9,1.9,2.9,3.9],a,b)
e1.Color=[105/255 105/255 105/255]
e1.LineStyle='none'
e1.Marker='o'
e1.MarkerFaceColor=[105/255 105/255 105/255]

a=reshape(mean(mean(test_R_annual(:,2,:,:),4),1),[1,4]);
b=reshape(std(std(test_R_annual(:,2,:,:),1,4),1,1),[1,4]);
e2=errorbar(a,b)
e2.Color=[220/255 186/255 91/255]
e2.LineStyle='none'
e2.Marker='v'
e2.MarkerFaceColor=[220/255 186/255 91/255]

a=reshape(mean(mean(test_R_annual(:,3,:,:),4),1),[1,4]);
b=reshape(std(std(test_R_annual(:,3,:,:),1,4),1,1),[1,4]);
e3=errorbar([1.1,2.1,3.1,4.1],a,b)
e3.Color=[91/255 220/255 186/255]
e3.LineStyle='none'
e3.Marker='^'
e3.MarkerFaceColor=[91/255 220/255 186/255]

axis([0.75 4.25 .55 1.05])
xticks([1 2 3 4])
xticklabels([])
yticks([.6 .7 .8 .9])
title('Validation Years')
box on
ntitle('(b) ','location','northeast');



%train RMSE
subplot(4,2,3)
hold on


a=reshape(mean(mean(test_RMSE_annual(:,1,:,:),3),1),[1,4]);
b=reshape(std(std(test_RMSE_annual(:,1,:,:),1,3),1,1),[1,4]);
e1=errorbar([0.9,1.9,2.9,3.9],a,b)
e1.Color=[105/255 105/255 105/255]
e1.LineStyle='none'
e1.Marker='o'
e1.MarkerFaceColor=[105/255 105/255 105/255]

a=reshape(mean(mean(test_RMSE_annual(:,2,:,:),3),1),[1,4]);
b=reshape(std(std(test_RMSE_annual(:,2,:,:),1,3),1,1),[1,4]);
e2=errorbar(a,b)
e2.Color=[220/255 186/255 91/255]
e2.LineStyle='none'
e2.Marker='v'
e2.MarkerFaceColor=[220/255 186/255 91/255]

a=reshape(mean(mean(test_RMSE_annual(:,3,:,:),3),1),[1,4]);
b=reshape(std(std(test_RMSE_annual(:,3,:,:),1,3),1,1),[1,4]);
e3=errorbar([1.1,2.1,3.1,4.1],a,b)
e3.Color=[91/255 220/255 186/255]
e3.LineStyle='none'
e3.Marker='^'
e3.MarkerFaceColor=[91/255 220/255 186/255]

ylabel('RMSE')
axis([0.75 4.25 0 5])
xticks([1 2 3 4])
xticklabels([])
yticks([1 2 3 4])
box on
ntitle('(c) ','location','northeast');

%valid RMSE
subplot(4,2,4)
hold on


a=reshape(mean(mean(test_RMSE_annual(:,1,:,:),4),1),[1,4]);
b=reshape(std(std(test_RMSE_annual(:,1,:,:),1,4),1,1),[1,4]);
e1=errorbar([0.9,1.9,2.9,3.9],a,b)
e1.Color=[105/255 105/255 105/255]
e1.LineStyle='none'
e1.Marker='o'
e1.MarkerFaceColor=[105/255 105/255 105/255]

a=reshape(mean(mean(test_RMSE_annual(:,2,:,:),4),1),[1,4]);
b=reshape(std(std(test_RMSE_annual(:,2,:,:),1,4),1,1),[1,4]);
e2=errorbar(a,b)
e2.Color=[220/255 186/255 91/255]
e2.LineStyle='none'
e2.Marker='v'
e2.MarkerFaceColor=[220/255 186/255 91/255]

a=reshape(mean(mean(test_RMSE_annual(:,3,:,:),4),1),[1,4]);
b=reshape(std(std(test_RMSE_annual(:,3,:,:),1,4),1,1),[1,4]);
e3=errorbar([1.1,2.1,3.1,4.1],a,b)
e3.Color=[91/255 220/255 186/255]
e3.LineStyle='none'
e3.Marker='^'
e3.MarkerFaceColor=[91/255 220/255 186/255]


axis([0.75 4.25 0 5])
xticks([1 2 3 4])
xticklabels([])
yticks([1 2 3 4])
box on
ntitle('(d) ','location','northeast');

%train rho
subplot(4,2,5)
hold on


a=reshape(mean(mean(test_rho_annual(:,1,:,:),3),1),[1,4]);
b=reshape(std(std(test_rho_annual(:,1,:,:),1,3),1,1),[1,4]);
e1=errorbar([0.9,1.9,2.9,3.9],a,b)
e1.Color=[105/255 105/255 105/255]
e1.LineStyle='none'
e1.Marker='o'
e1.MarkerFaceColor=[105/255 105/255 105/255]

a=reshape(mean(mean(test_rho_annual(:,2,:,:),3),1),[1,4]);
b=reshape(std(std(test_rho_annual(:,2,:,:),1,3),1,1),[1,4]);
e2=errorbar(a,b)
e2.Color=[220/255 186/255 91/255]
e2.LineStyle='none'
e2.Marker='v'
e2.MarkerFaceColor=[220/255 186/255 91/255]

a=reshape(mean(mean(test_rho_annual(:,3,:,:),3),1),[1,4]);
b=reshape(std(std(test_rho_annual(:,3,:,:),1,3),1,1),[1,4]);
e3=errorbar([1.1,2.1,3.1,4.1],a,b)
e3.Color=[91/255 220/255 186/255]
e3.LineStyle='none'
e3.Marker='^'
e3.MarkerFaceColor=[91/255 220/255 186/255]



ylabel('Spearman''s \rho')
axis([0.75 4.25 0.7 .92])
xticks([1 2 3 4])
xticklabels([])
yticks([0.75 0.8 0.85 0.9])
box on
ntitle('(e) ','location','northeast');


%valid rho
subplot(4,2,6)
hold on

a=reshape(mean(mean(test_rho_annual(:,1,:,:),4),1),[1,4]);
b=reshape(std(std(test_rho_annual(:,1,:,:),1,4),1,1),[1,4]);
e1=errorbar([0.9,1.9,2.9,3.9],a,b)
e1.Color=[105/255 105/255 105/255]
e1.LineStyle='none'
e1.Marker='o'
e1.MarkerFaceColor=[105/255 105/255 105/255]

a=reshape(mean(mean(test_rho_annual(:,2,:,:),4),1),[1,4]);
b=reshape(std(std(test_rho_annual(:,2,:,:),1,4),1,1),[1,4]);
e2=errorbar(a,b)
e2.Color=[220/255 186/255 91/255]
e2.LineStyle='none'
e2.Marker='v'
e2.MarkerFaceColor=[220/255 186/255 91/255]

a=reshape(mean(mean(test_rho_annual(:,3,:,:),4),1),[1,4]);
b=reshape(std(std(test_rho_annual(:,3,:,:),1,4),1,1),[1,4]);
e3=errorbar([1.1,2.1,3.1,4.1],a,b)
e3.Color=[91/255 220/255 186/255]
e3.LineStyle='none'
e3.Marker='^'
e3.MarkerFaceColor=[91/255 220/255 186/255]


axis([0.75 4.25 0.7 .92])
xticks([1 2 3 4])
xticklabels([])
yticks([0.75 0.8 0.85 0.9])
box on
ntitle('(f) ','location','northeast');


%train per
subplot(4,2,7)
hold on


a=reshape(mean(mean(test_Per_annual(:,1,:,:),3),1),[1,4]);
b=reshape(std(std(test_Per_annual(:,1,:,:),1,3),1,1),[1,4]);
e1=errorbar([0.9,1.9,2.9,3.9],a,b)
e1.Color=[105/255 105/255 105/255]
e1.LineStyle='none'
e1.Marker='o'
e1.MarkerFaceColor=[105/255 105/255 105/255]

a=reshape(mean(mean(test_Per_annual(:,2,:,:),3),1),[1,4]);
b=reshape(std(std(test_Per_annual(:,2,:,:),1,3),1,1),[1,4]);
e2=errorbar(a,b)
e2.Color=[220/255 186/255 91/255]
e2.LineStyle='none'
e2.Marker='v'
e2.MarkerFaceColor=[220/255 186/255 91/255]

a=reshape(mean(mean(test_Per_annual(:,3,:,:),3),1),[1,4]);
b=reshape(std(std(test_Per_annual(:,3,:,:),1,3),1,1),[1,4]);
e3=errorbar([1.1,2.1,3.1,4.1],a,b)
e3.Color=[91/255 220/255 186/255]
e3.LineStyle='none'
e3.Marker='^'
e3.MarkerFaceColor=[91/255 220/255 186/255]


ylabel('Percent Error [%]')
axis([0.75 4.25 0 70])
xticks([1 2 3 4])
yticks([10 20 30 40 50 60])
xlabel('Number of Years')
box on
ntitle('(g) ','location','northeast');

%valid per
subplot(4,2,8)
hold on


a=reshape(mean(mean(test_Per_annual(:,1,:,:),4),1),[1,4]);
b=reshape(std(std(test_Per_annual(:,1,:,:),1,4),1,1),[1,4]);
e1=errorbar([0.9,1.9,2.9,3.9],a,b)
e1.Color=[105/255 105/255 105/255]
e1.LineStyle='none'
e1.Marker='o'
e1.MarkerFaceColor=[105/255 105/255 105/255]

a=reshape(mean(mean(test_Per_annual(:,2,:,:),4),1),[1,4]);
b=reshape(std(std(test_Per_annual(:,2,:,:),1,4),1,1),[1,4]);
e2=errorbar(a,b)
e2.Color=[220/255 186/255 91/255]
e2.LineStyle='none'
e2.Marker='v'
e2.MarkerFaceColor=[220/255 186/255 91/255]

a=reshape(mean(mean(test_Per_annual(:,3,:,:),4),1),[1,4]);
b=reshape(std(std(test_Per_annual(:,3,:,:),1,4),1,1),[1,4]);
e3=errorbar([1.1,2.1,3.1,4.1],a,b)
e3.Color=[91/255 220/255 186/255]
e3.LineStyle='none'
e3.Marker='^'
e3.MarkerFaceColor=[91/255 220/255 186/255]

%ylabel('Percent Error')
axis([0.75 4.25 0 70])
xticks([1 2 3 4])
yticks([10 20 30 40 50 60])
xlabel('Number of Years')
box on
ntitle('(h) ','location','northeast');







%%%%%%%% FIGURE FOUR


[R_annual_11(1,:),R_gs_11(1,:),Per_annual_11(1,:),Per_gs_11(1,:),RMSE_annual_11(1,:),RMSE_gs_11(1,:),rho_annual_11(1,:),rho_gs_11(1,:)] = analysisANN(T1_1_1Hour_test_ts,T1_1_1Hour_test_simOut,48);
[R_annual_11(2,:),R_gs_11(2,:),Per_annual_11(2,:),Per_gs_11(2,:),RMSE_annual_11(2,:),RMSE_gs_11(2,:),rho_annual_11(2,:),rho_gs_11(2,:)] = analysisANN(T2_1_1Hour_test_ts,T2_1_1Hour_test_simOut,48);
[R_annual_11(3,:),R_gs_11(3,:),Per_annual_11(3,:),Per_gs_11(3,:),RMSE_annual_11(3,:),RMSE_gs_11(3,:),rho_annual_11(3,:),rho_gs_11(3,:)] = analysisANN(T3_1_1Hour_test_ts,T3_1_1Hour_test_simOut,48);
[R_annual_11(4,:),R_gs_11(4,:),Per_annual_11(4,:),Per_gs_11(4,:),RMSE_annual_11(4,:),RMSE_gs_11(4,:),rho_annual_11(4,:),rho_gs_11(4,:)] = analysisANN(T4_1_1Hour_test_ts,T4_1_1Hour_test_simOut,48);
[R_annual_11(5,:),R_gs_11(5,:),Per_annual_11(5,:),Per_gs_11(5,:),RMSE_annual_11(5,:),RMSE_gs_11(5,:),rho_annual_11(5,:),rho_gs_11(5,:)] = analysisANN(T5_1_1Hour_test_ts,T5_1_1Hour_test_simOut,48);
[R_annual_11(6,:),R_gs_11(6,:),Per_annual_11(6,:),Per_gs_11(6,:),RMSE_annual_11(6,:),RMSE_gs_11(6,:),rho_annual_11(6,:),rho_gs_11(6,:)] = analysisANN(T6_1_1Hour_test_ts,T6_1_1Hour_test_simOut,48);


[R_annual_11_day(1,:),R_gs_11_day(1,:),Per_annual_11_day(1,:),Per_gs_11_day(1,:),RMSE_annual_11_day(1,:),RMSE_gs_11_day(1,:),rho_annual_11_day(1,:),rho_gs_11_day(1,:)] = analysisANN(T1_1_1Day_test_ts,T1_1_1Day_test_simOut,1);
[R_annual_11_day(2,:),R_gs_11_day(2,:),Per_annual_11_day(2,:),Per_gs_11_day(2,:),RMSE_annual_11_day(2,:),RMSE_gs_11_day(2,:),rho_annual_11_day(2,:),rho_gs_11_day(2,:)] = analysisANN(T2_1_1Day_test_ts,T2_1_1Day_test_simOut,1);
[R_annual_11_day(3,:),R_gs_11_day(3,:),Per_annual_11_day(3,:),Per_gs_11_day(3,:),RMSE_annual_11_day(3,:),RMSE_gs_11_day(3,:),rho_annual_11_day(3,:),rho_gs_11_day(3,:)] = analysisANN(T3_1_1Day_test_ts,T3_1_1Day_test_simOut,1);
[R_annual_11_day(4,:),R_gs_11_day(4,:),Per_annual_11_day(4,:),Per_gs_11_day(4,:),RMSE_annual_11_day(4,:),RMSE_gs_11_day(4,:),rho_annual_11_day(4,:),rho_gs_11_day(4,:)] = analysisANN(T4_1_1Day_test_ts,T4_1_1Day_test_simOut,1);
[R_annual_11_day(5,:),R_gs_11_day(5,:),Per_annual_11_day(5,:),Per_gs_11_day(5,:),RMSE_annual_11_day(5,:),RMSE_gs_11_day(5,:),rho_annual_11_day(5,:),rho_gs_11_day(5,:)] = analysisANN(T5_1_1Day_test_ts,T5_1_1Day_test_simOut,1);
[R_annual_11_day(6,:),R_gs_11_day(6,:),Per_annual_11_day(6,:),Per_gs_11_day(6,:),RMSE_annual_11_day(6,:),RMSE_gs_11_day(6,:),rho_annual_11_day(6,:),rho_gs_11_day(6,:)] = analysisANN(T6_1_1Day_test_ts,T6_1_1Day_test_simOut,1);



%growing season, 30-min     [166/255,206/255,227/255]
%annual, 30-min             [31/255,120/255,180/255]
%growing season, daily      [178/255,223/255,138/255]
%annual, daily              [51/255,160/255,44/255]


subplot(4,1,1)
%r^2
hold on
plot(nan,'o','color',[31/255,120/255,180/255],'MarkerFaceColor',[31/255,120/255,180/255])
plot(nan,'o','color',[166/255,206/255,227/255],'MarkerFaceColor',[166/255,206/255,227/255])
plot(nan,'o','color',[51/255,160/255,44/255],'MarkerFaceColor',[51/255,160/255,44/255])
plot(nan,'o','color',[178/255,223/255,138/255],'MarkerFaceColor',[178/255,223/255,138/255])

set(0,'DefaultLegendAutoUpdate','off')
lgn=legend({'Annual at 30-min','GS at 30-min','Annual at Daily','GS at Daily'},'Location','northwest','Orientation','horizontal')
legend('boxoff')


NEE = [R_annual_11(:,1),R_gs_11(:,1),R_annual_11_day(:,1),R_gs_11_day(:,1)];
Reco = [R_annual_11(:,2),R_gs_11(:,2),R_annual_11_day(:,2),R_gs_11_day(:,2)];
GPP = [R_annual_11(:,3),R_gs_11(:,3),R_annual_11_day(:,3),R_gs_11_day(:,3)];
gap = zeros(6,1);
data = [NEE,gap,gap,Reco,gap,gap,GPP];

violins = violinplot(data)
for i=1:16
violins(i).ShowData=1
end
violins(1).ViolinColor=[31/255,120/255,180/255]
violins(7).ViolinColor=[31/255,120/255,180/255]
violins(13).ViolinColor=[31/255,120/255,180/255]

violins(2).ViolinColor=[166/255,206/255,227/255]
violins(8).ViolinColor=[166/255,206/255,227/255]
violins(14).ViolinColor=[166/255,206/255,227/255]

violins(3).ViolinColor=[51/255,160/255,44/255]
violins(9).ViolinColor=[51/255,160/255,44/255]
violins(15).ViolinColor=[51/255,160/255,44/255]

violins(4).ViolinColor=[178/255,223/255,138/255]
violins(10).ViolinColor=[178/255,223/255,138/255]
violins(16).ViolinColor=[178/255,223/255,138/255]

xticks([2.5 8.5 14.5])
xticklabels('')
box on
ylabel('r^2')
axis([0 17 0.22 0.99])
ntitle('(a) ','location','northeast');



%RMSE
subplot(4,1,2)
hold on

NEE = [RMSE_annual_11(:,1),RMSE_gs_11(:,1),RMSE_annual_11_day(:,1),RMSE_gs_11_day(:,1)];
Reco = [RMSE_annual_11(:,2),RMSE_gs_11(:,2),RMSE_annual_11_day(:,2),RMSE_gs_11_day(:,2)];
GPP = [RMSE_annual_11(:,3),RMSE_gs_11(:,3),RMSE_annual_11_day(:,3),RMSE_gs_11_day(:,3)];
gap = zeros(6,1);
data = [NEE,gap,gap,Reco,gap,gap,GPP];

violins = violinplot(data)
for i=1:16
violins(i).ShowData=0
end
violins(1).ViolinColor=[31/255,120/255,180/255]
violins(7).ViolinColor=[31/255,120/255,180/255]
violins(13).ViolinColor=[31/255,120/255,180/255]

violins(2).ViolinColor=[166/255,206/255,227/255]
violins(8).ViolinColor=[166/255,206/255,227/255]
violins(14).ViolinColor=[166/255,206/255,227/255]

violins(3).ViolinColor=[51/255,160/255,44/255]
violins(9).ViolinColor=[51/255,160/255,44/255]
violins(15).ViolinColor=[51/255,160/255,44/255]

violins(4).ViolinColor=[178/255,223/255,138/255]
violins(10).ViolinColor=[178/255,223/255,138/255]
violins(16).ViolinColor=[178/255,223/255,138/255]


ylabel('RMSE')
axis([0 17 0.5 6.5])
xticks([2.5 8.5 14.5])
xticklabels('')
box on
ntitle('(b) ','location','northeast');




%rho
subplot(4,1,3)
hold on

NEE = [rho_annual_11(:,1),rho_gs_11(:,1),rho_annual_11_day(:,1),rho_gs_11_day(:,1)];
Reco = [rho_annual_11(:,2),rho_gs_11(:,2),rho_annual_11_day(:,2),rho_gs_11_day(:,2)];
GPP = [rho_annual_11(:,3),rho_gs_11(:,3),rho_annual_11_day(:,3),rho_gs_11_day(:,3)];
gap = zeros(6,1);
data = [NEE,gap,gap,Reco,gap,gap,GPP];

violins = violinplot(data)
for i=1:16
violins(i).ShowData=0
end
violins(1).ViolinColor=[31/255,120/255,180/255]
violins(7).ViolinColor=[31/255,120/255,180/255]
violins(13).ViolinColor=[31/255,120/255,180/255]

violins(2).ViolinColor=[166/255,206/255,227/255]
violins(8).ViolinColor=[166/255,206/255,227/255]
violins(14).ViolinColor=[166/255,206/255,227/255]

violins(3).ViolinColor=[51/255,160/255,44/255]
violins(9).ViolinColor=[51/255,160/255,44/255]
violins(15).ViolinColor=[51/255,160/255,44/255]

violins(4).ViolinColor=[178/255,223/255,138/255]
violins(10).ViolinColor=[178/255,223/255,138/255]
violins(16).ViolinColor=[178/255,223/255,138/255]


ylabel('Spearman''s \rho')
axis([0 17 0.35 0.95])
xticks([2.5 8.5 14.5])
xticklabels('')
box on
ntitle('(c) ','location','northeast');


%percent error
subplot(4,1,4)
hold on

NEE = [Per_annual_11(:,1),Per_gs_11(:,1),Per_annual_11_day(:,1),Per_gs_11_day(:,1)];
Reco = [Per_annual_11(:,2),Per_gs_11(:,2),Per_annual_11_day(:,2),Per_gs_11_day(:,2)];
GPP = [Per_annual_11(:,3),Per_gs_11(:,3),Per_annual_11_day(:,3),Per_gs_11_day(:,3)];
gap = zeros(6,1);
data = [NEE,gap,gap,Reco,gap,gap,GPP];

violins = violinplot(data)
for i=1:16
violins(i).ShowData=0
end
violins(1).ViolinColor=[31/255,120/255,180/255]
violins(7).ViolinColor=[31/255,120/255,180/255]
violins(13).ViolinColor=[31/255,120/255,180/255]

violins(2).ViolinColor=[166/255,206/255,227/255]
violins(8).ViolinColor=[166/255,206/255,227/255]
violins(14).ViolinColor=[166/255,206/255,227/255]

violins(3).ViolinColor=[51/255,160/255,44/255]
violins(9).ViolinColor=[51/255,160/255,44/255]
violins(15).ViolinColor=[51/255,160/255,44/255]

violins(4).ViolinColor=[178/255,223/255,138/255]
violins(10).ViolinColor=[178/255,223/255,138/255]
violins(16).ViolinColor=[178/255,223/255,138/255]


ylabel('Percent Error [%]')
axis([0 17 0.2 95])
xticks([2.5 8.5 14.5])
xticklabels('')
xticklabels({'NEE','R_e_c_o','GPP'})
box on
ntitle('(d) ','location','northeast');













%%%%%%%% FIGURE FIVE
R_annual_11 = zeros(6,3);
Per_annual_11 = zeros(6,3);
R_gs_11 = zeros(6,3);
Per_gs_11 = zeros(6,3);
RMSE_annual_11 = zeros(6,3);
rho_annual_11 = zeros(6,3);
RMSE_gs_11 = zeros(6,3);
rho_gs_11 = zeros(6,3);

R_annual_11_day = zeros(6,3);
Per_annual_11_day = zeros(6,3);
R_gs_11_day = zeros(6,3);
Per_gs_11_day = zeros(6,3);
RMSE_annual_11_day = zeros(6,3);
rho_annual_11_day = zeros(6,3);
RMSE_gs_11_day = zeros(6,3);
rho_gs_11_day = zeros(6,3);




[R_annual_11(1,:),R_gs_11(1,:),Per_annual_11(1,:),Per_gs_11(1,:),RMSE_annual_11(1,:),RMSE_gs_11(1,:),rho_annual_11(1,:),rho_gs_11(1,:)] = analysisANN(T1_1_1Hour_test_ts,T1_1_1Hour_test_simOut,48);
[R_annual_11(2,:),R_gs_11(2,:),Per_annual_11(2,:),Per_gs_11(2,:),RMSE_annual_11(2,:),RMSE_gs_11(2,:),rho_annual_11(2,:),rho_gs_11(2,:)] = analysisANN(T2_1_1Hour_test_ts,T2_1_1Hour_test_simOut,48);
[R_annual_11(3,:),R_gs_11(3,:),Per_annual_11(3,:),Per_gs_11(3,:),RMSE_annual_11(3,:),RMSE_gs_11(3,:),rho_annual_11(3,:),rho_gs_11(3,:)] = analysisANN(T3_1_1Hour_test_ts,T3_1_1Hour_test_simOut,48);
[R_annual_11(4,:),R_gs_11(4,:),Per_annual_11(4,:),Per_gs_11(4,:),RMSE_annual_11(4,:),RMSE_gs_11(4,:),rho_annual_11(4,:),rho_gs_11(4,:)] = analysisANN(T4_1_1Hour_test_ts,T4_1_1Hour_test_simOut,48);
[R_annual_11(5,:),R_gs_11(5,:),Per_annual_11(5,:),Per_gs_11(5,:),RMSE_annual_11(5,:),RMSE_gs_11(5,:),rho_annual_11(5,:),rho_gs_11(5,:)] = analysisANN(T5_1_1Hour_test_ts,T5_1_1Hour_test_simOut,48);
[R_annual_11(6,:),R_gs_11(6,:),Per_annual_11(6,:),Per_gs_11(6,:),RMSE_annual_11(6,:),RMSE_gs_11(6,:),rho_annual_11(6,:),rho_gs_11(3,:)] = analysisANN(T6_1_1Hour_test_ts,T6_1_1Hour_test_simOut,48);

[R_annual_11_day(1,:),R_gs_11_day(1,:),Per_annual_11_day(1,:),Per_gs_11_day(1,:),RMSE_annual_11_day(1,:),RMSE_gs_11_day(1,:),rho_annual_11_day(1,:),rho_gs_11_day(1,:)] = analysisANN(T1_1_1Day_test_ts,T1_1_1Day_test_simOut,1);
[R_annual_11_day(2,:),R_gs_11_day(2,:),Per_annual_11_day(2,:),Per_gs_11_day(2,:),RMSE_annual_11_day(2,:),RMSE_gs_11_day(2,:),rho_annual_11_day(2,:),rho_gs_11_day(2,:)] = analysisANN(T2_1_1Day_test_ts,T2_1_1Day_test_simOut,1);
[R_annual_11_day(3,:),R_gs_11_day(3,:),Per_annual_11_day(3,:),Per_gs_11_day(3,:),RMSE_annual_11_day(3,:),RMSE_gs_11_day(3,:),rho_annual_11_day(3,:),rho_gs_11_day(3,:)] = analysisANN(T3_1_1Day_test_ts,T3_1_1Day_test_simOut,1);
[R_annual_11_day(4,:),R_gs_11_day(4,:),Per_annual_11_day(4,:),Per_gs_11_day(4,:),RMSE_annual_11_day(4,:),RMSE_gs_11_day(4,:),rho_annual_11_day(4,:),rho_gs_11_day(4,:)] = analysisANN(T4_1_1Day_test_ts,T4_1_1Day_test_simOut,1);
[R_annual_11_day(5,:),R_gs_11_day(5,:),Per_annual_11_day(5,:),Per_gs_11_day(5,:),RMSE_annual_11_day(5,:),RMSE_gs_11_day(5,:),rho_annual_11_day(5,:),rho_gs_11_day(5,:)] = analysisANN(T5_1_1Day_test_ts,T5_1_1Day_test_simOut,1);
[R_annual_11_day(6,:),R_gs_11_day(6,:),Per_annual_11_day(6,:),Per_gs_11_day(6,:),RMSE_annual_11_day(6,:),RMSE_gs_11_day(6,:),rho_annual_11_day(6,:),rho_gs_11_day(6,:)] = analysisANN(T6_1_1Day_test_ts,T6_1_1Day_test_simOut,1);



%edit this block for Figure 5 and Table 1
bardata=[
    mean([Per_annual_11(1,1),Per_annual_11(5,1)]),mean([Per_annual_11(2,1),Per_annual_11(6,1)]),mean([Per_annual_11(3,1),Per_annual_11(4,1)])
    
    ;mean([Per_annual_11(1,2),Per_annual_11(5,2)]),mean([Per_annual_11(2,2),Per_annual_11(6,2)]),mean([Per_annual_11(3,2),Per_annual_11(4,2)])
    
    ;mean([Per_annual_11(1,3),Per_annual_11(5,3)]),mean([Per_annual_11(2,3),Per_annual_11(6,3)]),mean([Per_annual_11(3,3),Per_annual_11(4,3)])
    ]';


bardataday=[
    mean([Per_annual_11_day(1,1),Per_annual_11_day(5,1)]),mean([Per_annual_11_day(2,1),Per_annual_11_day(6,1)]),mean([Per_annual_11_day(3,1),Per_annual_11_day(4,1)])
    
    ;mean([Per_annual_11_day(1,2),Per_annual_11_day(5,2)]),mean([Per_annual_11_day(2,2),Per_annual_11_day(6,2)]),mean([Per_annual_11_day(3,2),Per_annual_11_day(4,2)])
    
    ;mean([Per_annual_11_day(1,3),Per_annual_11_day(5,3)]),mean([Per_annual_11_day(2,3),Per_annual_11_day(6,3)]),mean([Per_annual_11_day(3,3),Per_annual_11_day(4,3)])
    ]';



bardata_gs=[
    mean([Per_gs_11(1,1),Per_gs_11(5,1)]),mean([Per_gs_11(2,1),Per_gs_11(6,1)]),mean([Per_gs_11(3,1),Per_gs_11(4,1)])
    
    ;mean([Per_gs_11(1,2),Per_gs_11(5,2)]),mean([Per_gs_11(2,2),Per_gs_11(6,2)]),mean([Per_gs_11(3,2),Per_gs_11(4,2)])
    
    ;mean([Per_gs_11(1,3),Per_gs_11(5,3)]),mean([Per_gs_11(2,3),Per_gs_11(6,3)]),mean([Per_gs_11(3,3),Per_gs_11(4,3)])
    ]';


bardataday_gs=[
    mean([Per_gs_11_day(1,1),Per_gs_11_day(5,1)]),mean([Per_gs_11_day(2,1),Per_gs_11_day(6,1)]),mean([Per_gs_11_day(3,1),Per_gs_11_day(4,1)])
    
    ;mean([Per_gs_11_day(1,2),Per_gs_11_day(5,2)]),mean([Per_gs_11_day(2,2),Per_gs_11_day(6,2)]),mean([Per_gs_11_day(3,2),Per_gs_11_day(4,2)])
    
    ;mean([Per_gs_11_day(1,3),Per_gs_11_day(5,3)]),mean([Per_gs_11_day(2,3),Per_gs_11_day(6,3)]),mean([Per_gs_11_day(3,3),Per_gs_11_day(4,3)])
    ]';

%END edit this block for Figure 5 and Table 1
%Table 1 is bar data


subplot(2,2,1)
b=bar(bardata,'hist')
b(1).FaceColor = [105/255 105/255 105/255];
b(1).EdgeColor = 'none';
b(2).FaceColor = [220/255 186/255 91/255];
b(2).EdgeColor = 'none';
b(3).FaceColor = [91/255, 220/255, 186/255];
b(3).EdgeColor = 'none';

axis([.5 3.5 0 65])
xticklabels({'Switchgrass','Prairie','Corn'})
ylabel({'Annual','Percent Error [%]'})
ntitle('30-Min Data')
ntitle(' (a)','location','northwest');

subplot(2,2,2)
b=bar(bardataday,'hist')
b(1).FaceColor = [105/255 105/255 105/255];
b(2).FaceColor = [220/255 186/255 91/255];
b(3).FaceColor = [91/255, 220/255, 186/255];
b(1).EdgeColor = 'none';
b(2).EdgeColor = 'none';
b(3).EdgeColor = 'none';

set(0,'DefaultLegendAutoUpdate','off')
hLegend = legend({'NEE','R_e_c_o','GPP'},'Location','northeast')
legend('boxoff')


axis([.5 3.5 0 65])
xticklabels({'Switchgrass','Prairie','Corn'})
%ylabel('Absolute Percent Error [%]')
ntitle('Daily Data')
ntitle(' (b)','location','northwest');




subplot(2,2,3)
plot(1,1)
b=bar(bardata_gs,'hist')
b(1).FaceColor = [105/255 105/255 105/255];
b(1).EdgeColor = 'none';
b(2).FaceColor = [220/255 186/255 91/255];
b(2).EdgeColor = 'none';
b(3).FaceColor = [91/255, 220/255, 186/255];
b(3).EdgeColor = 'none';


axis([.5 3.5 0 65])
xticklabels({'Switchgrass','Prairie','Corn'})
ylabel({'Growing Season','Percent Error [%]'})
ntitle(' (c)','location','northwest');



subplot(2,2,4)
b=bar(bardataday_gs,'hist')
b(1).FaceColor = [105/255 105/255 105/255];
b(1).EdgeColor = 'none';
b(2).FaceColor = [220/255 186/255 91/255];
b(2).EdgeColor = 'none';
b(3).FaceColor = [91/255, 220/255, 186/255];
b(3).EdgeColor = 'none';

axis([.5 3.5 0 65])
xticklabels({'Switchgrass','Prairie','Corn'})
ntitle(' (d)','location','northwest');











%%%%%% Figure Six, Time-Series
%Color code NEE: rgb[105/255 105/255 105/255]
%Color code Reco: rgb[220/255 186/255 91/255]
%Color code GPP: rgb[91/255, 220/255, 186/255]

Obs_Hour_ts=T1_1_1Hour_test_ts;
Model_Hour_ts=T1_1_1Hour_test_simOut;

Obs_Hour_mat=cell2mat(Obs_Hour_ts);
Obs_Hour_mat_NEE(1,:) = Obs_Hour_mat(1,:);
Obs_Hour_mat_Reco(1,:) = Obs_Hour_mat(2,:);
Obs_Hour_mat_GPP(1,:) = Obs_Hour_mat(3,:);

Model_Hour_mat=cell2mat(Model_Hour_ts);
Model_Hour_mat_NEE(1,:) = Model_Hour_mat(1,:);
Model_Hour_mat_Reco(1,:) = Model_Hour_mat(2,:);
Model_Hour_mat_GPP(1,:) = Model_Hour_mat(3,:);

Obs_Hour_ts=T2_1_1Hour_test_ts;
Model_Hour_ts=T2_1_1Hour_test_simOut;

Obs_Hour_mat=cell2mat(Obs_Hour_ts);
Obs_Hour_mat_NEE(2,:) = Obs_Hour_mat(1,:);
Obs_Hour_mat_Reco(2,:) = Obs_Hour_mat(2,:);
Obs_Hour_mat_GPP(2,:) = Obs_Hour_mat(3,:);

Model_Hour_mat=cell2mat(Model_Hour_ts);
Model_Hour_mat_NEE(2,:) = Model_Hour_mat(1,:);
Model_Hour_mat_Reco(2,:) = Model_Hour_mat(2,:);
Model_Hour_mat_GPP(2,:) = Model_Hour_mat(3,:);

Obs_Hour_ts=T3_1_1Hour_test_ts;
Model_Hour_ts=T3_1_1Hour_test_simOut;

Obs_Hour_mat=cell2mat(Obs_Hour_ts);
Obs_Hour_mat_NEE(3,:) = Obs_Hour_mat(1,:);
Obs_Hour_mat_Reco(3,:) = Obs_Hour_mat(2,:);
Obs_Hour_mat_GPP(3,:) = Obs_Hour_mat(3,:);

Model_Hour_mat=cell2mat(Model_Hour_ts);
Model_Hour_mat_NEE(3,:) = Model_Hour_mat(1,:);
Model_Hour_mat_Reco(3,:) = Model_Hour_mat(2,:);
Model_Hour_mat_GPP(3,:) = Model_Hour_mat(3,:);

Obs_Hour_ts=T4_1_1Hour_test_ts;
Model_Hour_ts=T4_1_1Hour_test_simOut;

Obs_Hour_mat=cell2mat(Obs_Hour_ts);
Obs_Hour_mat_NEE(4,:) = Obs_Hour_mat(1,:);
Obs_Hour_mat_Reco(4,:) = Obs_Hour_mat(2,:);
Obs_Hour_mat_GPP(4,:) = Obs_Hour_mat(3,:);

Model_Hour_mat=cell2mat(Model_Hour_ts);
Model_Hour_mat_NEE(4,:) = Model_Hour_mat(1,:);
Model_Hour_mat_Reco(4,:) = Model_Hour_mat(2,:);
Model_Hour_mat_GPP(4,:) = Model_Hour_mat(3,:);

Obs_Hour_ts=T5_1_1Hour_test_ts;
Model_Hour_ts=T5_1_1Hour_test_simOut;

Obs_Hour_mat=cell2mat(Obs_Hour_ts);
Obs_Hour_mat_NEE(5,:) = Obs_Hour_mat(1,:);
Obs_Hour_mat_Reco(5,:) = Obs_Hour_mat(2,:);
Obs_Hour_mat_GPP(5,:) = Obs_Hour_mat(3,:);

Model_Hour_mat=cell2mat(Model_Hour_ts);
Model_Hour_mat_NEE(5,:) = Model_Hour_mat(1,:);
Model_Hour_mat_Reco(5,:) = Model_Hour_mat(2,:);
Model_Hour_mat_GPP(5,:) = Model_Hour_mat(3,:);

Obs_Hour_ts=T6_1_1Hour_test_ts;
Model_Hour_ts=T6_1_1Hour_test_simOut;

Obs_Hour_mat=cell2mat(Obs_Hour_ts);
Obs_Hour_mat_NEE(6,:) = Obs_Hour_mat(1,:);
Obs_Hour_mat_Reco(6,:) = Obs_Hour_mat(2,:);
Obs_Hour_mat_GPP(6,:) = Obs_Hour_mat(3,:);

Model_Hour_mat=cell2mat(Model_Hour_ts);
Model_Hour_mat_NEE(6,:) = Model_Hour_mat(1,:);
Model_Hour_mat_Reco(6,:) = Model_Hour_mat(2,:);
Model_Hour_mat_GPP(6,:) = Model_Hour_mat(3,:);




Obs_Day_ts=T1_1_1Day_test_ts;
Model_Day_ts=T1_1_1Day_test_simOut;

Obs_Day_mat=cell2mat(Obs_Day_ts);
Obs_Day_mat_NEE(1,:) = Obs_Day_mat(1,:);
Obs_Day_mat_Reco(1,:) = Obs_Day_mat(2,:);
Obs_Day_mat_GPP(1,:) = Obs_Day_mat(3,:);

Model_Day_mat=cell2mat(Model_Day_ts);
Model_Day_mat_NEE(1,:) = Model_Day_mat(1,:);
Model_Day_mat_Reco(1,:) = Model_Day_mat(2,:);
Model_Day_mat_GPP(1,:) = Model_Day_mat(3,:);

Obs_Day_ts=T2_1_1Day_test_ts;
Model_Day_ts=T2_1_1Day_test_simOut;

Obs_Day_mat=cell2mat(Obs_Day_ts);
Obs_Day_mat_NEE(2,:) = Obs_Day_mat(1,:);
Obs_Day_mat_Reco(2,:) = Obs_Day_mat(2,:);
Obs_Day_mat_GPP(2,:) = Obs_Day_mat(3,:);

Model_Day_mat=cell2mat(Model_Day_ts);
Model_Day_mat_NEE(2,:) = Model_Day_mat(1,:);
Model_Day_mat_Reco(2,:) = Model_Day_mat(2,:);
Model_Day_mat_GPP(2,:) = Model_Day_mat(3,:);

Obs_Day_ts=T3_1_1Day_test_ts;
Model_Day_ts=T3_1_1Day_test_simOut;

Obs_Day_mat=cell2mat(Obs_Day_ts);
Obs_Day_mat_NEE(3,:) = Obs_Day_mat(1,:);
Obs_Day_mat_Reco(3,:) = Obs_Day_mat(2,:);
Obs_Day_mat_GPP(3,:) = Obs_Day_mat(3,:);

Model_Day_mat=cell2mat(Model_Day_ts);
Model_Day_mat_NEE(3,:) = Model_Day_mat(1,:);
Model_Day_mat_Reco(3,:) = Model_Day_mat(2,:);
Model_Day_mat_GPP(3,:) = Model_Day_mat(3,:);

Obs_Day_ts=T4_1_1Day_test_ts;
Model_Day_ts=T4_1_1Day_test_simOut;

Obs_Day_mat=cell2mat(Obs_Day_ts);
Obs_Day_mat_NEE(4,:) = Obs_Day_mat(1,:);
Obs_Day_mat_Reco(4,:) = Obs_Day_mat(2,:);
Obs_Day_mat_GPP(4,:) = Obs_Day_mat(3,:);

Model_Day_mat=cell2mat(Model_Day_ts);
Model_Day_mat_NEE(4,:) = Model_Day_mat(1,:);
Model_Day_mat_Reco(4,:) = Model_Day_mat(2,:);
Model_Day_mat_GPP(4,:) = Model_Day_mat(3,:);

Obs_Day_ts=T5_1_1Day_test_ts;
Model_Day_ts=T5_1_1Day_test_simOut;

Obs_Day_mat=cell2mat(Obs_Day_ts);
Obs_Day_mat_NEE(5,:) = Obs_Day_mat(1,:);
Obs_Day_mat_Reco(5,:) = Obs_Day_mat(2,:);
Obs_Day_mat_GPP(5,:) = Obs_Day_mat(3,:);

Model_Day_mat=cell2mat(Model_Day_ts);
Model_Day_mat_NEE(5,:) = Model_Day_mat(1,:);
Model_Day_mat_Reco(5,:) = Model_Day_mat(2,:);
Model_Day_mat_GPP(5,:) = Model_Day_mat(3,:);

Obs_Day_ts=T6_1_1Day_test_ts;
Model_Day_ts=T6_1_1Day_test_simOut;

Obs_Day_mat=cell2mat(Obs_Day_ts);
Obs_Day_mat_NEE(6,:) = Obs_Day_mat(1,:);
Obs_Day_mat_Reco(6,:) = Obs_Day_mat(2,:);
Obs_Day_mat_GPP(6,:) = Obs_Day_mat(3,:);

Model_Day_mat=cell2mat(Model_Day_ts);
Model_Day_mat_NEE(6,:) = Model_Day_mat(1,:);
Model_Day_mat_Reco(6,:) = Model_Day_mat(2,:);
Model_Day_mat_GPP(6,:) = Model_Day_mat(3,:);





num_years = 7;
num_sites = 6;
for j =1:num_sites
    for i=1:num_years
        Per_NEE_Hour_annual_year(j,i)=(nansum(Obs_Hour_mat_NEE(j,17520*i-17472:17472*i))-nansum(Model_Hour_mat_NEE(j,17520*i-17472:17472*i)))/(nansum(Obs_Hour_mat_NEE(j,17520*i-17472:17472*i)))*100;
        Per_Reco_Hour_annual_year(j,i)=(nansum(Obs_Hour_mat_Reco(j,17520*i-17472:17472*i))-nansum(Model_Hour_mat_Reco(j,17520*i-17472:17472*i)))/(nansum(Obs_Hour_mat_Reco(j,17520*i-17472:17472*i)))*100;
        Per_GPP_Hour_annual_year(j,i)=(nansum(Obs_Hour_mat_GPP(j,17520*i-17472:17472*i))-nansum(Model_Hour_mat_GPP(j,17520*i-17472:17472*i)))/(nansum(Obs_Hour_mat_GPP(j,17520*i-17472:17472*i)))*100;
        
        Per_NEE_Hour_gs_year(j,i)=(nansum(Obs_Hour_mat_NEE(j,4368+17520*(i-1):13152+17520*(i-1)))-nansum(Model_Hour_mat_NEE(j,4368+17520*(i-1):13152+17520*(i-1))))/(nansum(Obs_Hour_mat_NEE(j,4368+17520*(i-1):13152+17520*(i-1))))*100;
        Per_Reco_Hour_gs_year(j,i)=(nansum(Obs_Hour_mat_Reco(j,4368+17520*(i-1):13152+17520*(i-1)))-nansum(Model_Hour_mat_Reco(j,4368+17520*(i-1):13152+17520*(i-1))))/(nansum(Obs_Hour_mat_Reco(j,4368+17520*(i-1):13152+17520*(i-1))))*100;
        Per_GPP_Hour_gs_year(j,i)=(nansum(Obs_Hour_mat_GPP(j,4368+17520*(i-1):13152+17520*(i-1)))-nansum(Model_Hour_mat_GPP(j,4368+17520*(i-1):13152+17520*(i-1))))/(nansum(Obs_Hour_mat_GPP(j,4368+17520*(i-1):13152+17520*(i-1))))*100;
    
        
        
        Per_NEE_Day_annual_year(j,i)=(nansum(Obs_Day_mat_NEE(j,363*i-362:362*i))-nansum(Model_Day_mat_NEE(j,363*i-362:362*i)))/(nansum(Obs_Day_mat_NEE(j,363*i-362:362*i)))*100;
        Per_Reco_Day_annual_year(j,i)=(nansum(Obs_Day_mat_Reco(j,363*i-362:362*i))-nansum(Model_Day_mat_Reco(j,363*i-362:362*i)))/(nansum(Obs_Day_mat_Reco(j,363*i-362:362*i)))*100;
        Per_GPP_Day_annual_year(j,i)=(nansum(Obs_Day_mat_GPP(j,363*i-362:362*i))-nansum(Model_Day_mat_GPP(j,363*i-362:362*i)))/(nansum(Obs_Day_mat_GPP(j,363*i-362:362*i)))*100;
        
        Per_NEE_Day_gs_year(j,i)=(nansum(Obs_Day_mat_NEE(j,91+365*(i-1):273+365*(i-1)))-nansum(Model_Day_mat_NEE(j,91+365*(i-1):273+365*(i-1))))/(nansum(Obs_Day_mat_NEE(j,91+365*(i-1):273+365*(i-1))))*100;
        Per_Reco_Day_gs_year(j,i)=(nansum(Obs_Day_mat_Reco(j,91+365*(i-1):273+365*(i-1)))-nansum(Model_Day_mat_Reco(j,91+365*(i-1):273+365*(i-1))))/(nansum(Obs_Day_mat_Reco(j,91+365*(i-1):273+365*(i-1))))*100;
        Per_GPP_Day_gs_year(j,i)=(nansum(Obs_Day_mat_GPP(j,91+365*(i-1):273+365*(i-1)))-nansum(Model_Day_mat_GPP(j,91+365*(i-1):273+365*(i-1))))/(nansum(Obs_Day_mat_GPP(j,91+365*(i-1):273+365*(i-1))))*100;
    
        
        %Info for Table 2

        
%         %annual, 30 min, NEE/Reco/GPP
%         mdl = fitlm(Obs_Hour_mat_GPP(j,17520*i-17472:17472*i),Model_Hour_mat_GPP(j,17520*i-17472:17472*i));
%         R_annual(1)=mdl.Rsquared.Ordinary;
%         R_NEE_Hour_annual_year(j,i)=R_annual(1);
%         RMSE_annual(1)=mdl.RMSE;
%         RMSE_NEE_Hour_annual_year(j,i)=RMSE_annual(1);
%         rho_annual(1)=corr(Obs_Hour_mat_GPP(j,17520*i-17472:17472*i)',Model_Hour_mat_GPP(j,17520*i-17472:17472*i)','Type','Spearman','Rows','complete');
%         rho_NEE_Hour_annual_year(j,i)=rho_annual(1);
        
%         %annual, daily, NEE/Reco/GPP
%         mdl = fitlm(Obs_Day_mat_GPP(j,363*i-362:362*i),Model_Day_mat_GPP(j,363*i-362:362*i));
%         R_annual(1)=mdl.Rsquared.Ordinary;
%         R_NEE_Hour_annual_year(j,i)=R_annual(1);
%         RMSE_annual(1)=mdl.RMSE;
%         RMSE_NEE_Hour_annual_year(j,i)=RMSE_annual(1);
%         rho_annual(1)=corr(Obs_Day_mat_GPP(j,363*i-362:362*i)',Model_Day_mat_GPP(j,363*i-362:362*i)','Type','Spearman','Rows','complete');
%         rho_NEE_Hour_annual_year(j,i)=rho_annual(1);

%         %GS, 30 min, NEE/Reco/GPP
%         mdl = fitlm(Obs_Hour_mat_GPP(j,4368+17520*(i-1):13152+17520*(i-1)),Model_Hour_mat_GPP(j,4368+17520*(i-1):13152+17520*(i-1)));
%         R_annual(1)=mdl.Rsquared.Ordinary;
%         R_NEE_Hour_annual_year(j,i)=R_annual(1);
%         RMSE_annual(1)=mdl.RMSE;
%         RMSE_NEE_Hour_annual_year(j,i)=RMSE_annual(1);
%         rho_annual(1)=corr(Obs_Hour_mat_GPP(j,4368+17520*(i-1):13152+17520*(i-1))',Model_Hour_mat_GPP(j,4368+17520*(i-1):13152+17520*(i-1))','Type','Spearman','Rows','complete');
%         rho_NEE_Hour_annual_year(j,i)=rho_annual(1);

%         %GS, daily, NEE/Reco/GPP
%         mdl = fitlm(Obs_Day_mat_GPP(j,91+365*(i-1):273+365*(i-1)),Model_Day_mat_GPP(j,91+365*(i-1):273+365*(i-1)));
%         R_annual(1)=mdl.Rsquared.Ordinary;
%         R_NEE_Hour_annual_year(j,i)=R_annual(1);
%         RMSE_annual(1)=mdl.RMSE;
%         RMSE_NEE_Hour_annual_year(j,i)=RMSE_annual(1);
%         rho_annual(1)=corr(Obs_Day_mat_GPP(j,91+365*(i-1):273+365*(i-1))',Model_Day_mat_GPP(j,91+365*(i-1):273+365*(i-1))','Type','Spearman','Rows','complete');
%         rho_NEE_Hour_annual_year(j,i)=rho_annual(1);
%         
%         %End info for Table 2
    end
end




subplot(3,2,1)
hold on
plot(abs(mean(Per_NEE_Hour_annual_year,1)),'Color',[105/255 105/255 105/255])
plot(abs(mean(Per_NEE_Hour_gs_year,1)),':','Color',[105/255 105/255 105/255])
title('30-Min Data')
ntitle('(a) ','location','northeast');
xticks([1,2,3,4,5,6,7])
xticklabels([])
axis([0.5 7.5 0 60])
box on
ylabel({'NEE','Percent Error [%]'})
set(0,'DefaultLegendAutoUpdate','off')
hLegend = legend({'Annual','Growing Season'},'Location','northwest')
legend('boxoff')

subplot(3,2,2)
hold on
plot(abs(mean(Per_NEE_Day_annual_year,1)),'Color',[105/255 105/255 105/255])
plot(abs(mean(Per_NEE_Day_gs_year,1)),':','Color',[105/255 105/255 105/255])
title('Daily Data')
ntitle('(b) ','location','northeast');
xticks([1,2,3,4,5,6,7])
xticklabels([])
axis([0.5 7.5 0 60])
box on

subplot(3,2,3)
hold on
plot(abs(mean(Per_Reco_Hour_annual_year,1)),'Color',[220/255 186/255 91/255])
plot(abs(mean(Per_Reco_Hour_gs_year,1)),':','Color',[220/255 186/255 91/255])
ntitle('(c) ','location','northeast');
xticks([1,2,3,4,5,6,7])
xticklabels([])
axis([0.5 7.5 0 175])
box on
ylabel({'R_e_c_o','Percent Error [%]'})


subplot(3,2,4)
hold on
plot(abs(mean(Per_Reco_Day_annual_year,1)),'Color',[220/255 186/255 91/255])
plot(abs(mean(Per_Reco_Day_gs_year,1)),':','Color',[220/255 186/255 91/255])
ntitle('(d) ','location','northeast');
xticks([1,2,3,4,5,6,7])
xticklabels([])
axis([0.5 7.5 0 175])
box on


subplot(3,2,5)
hold on
plot(abs(mean(Per_GPP_Hour_annual_year,1)),'Color',[91/255, 220/255, 186/255])
plot(abs(mean(Per_GPP_Hour_gs_year,1)),':','Color',[91/255, 220/255, 186/255])
ntitle('(e) ','location','northeast');
xticks([1,2,3,4,5,6,7])
xticklabels([2012,2013,2014,2015,2016,2017,2018])
axis([0.5 7.5 0 25])
box on
ylabel({'GPP','Percent Error [%]'})

subplot(3,2,6)
hold on
plot(abs(mean(Per_GPP_Day_annual_year,1)),'Color',[91/255, 220/255, 186/255])
plot(abs(mean(Per_GPP_Day_gs_year,1)),':','Color',[91/255, 220/255, 186/255])
ntitle('(f) ','location','northeast');
xticks([1,2,3,4,5,6,7])
xticklabels([2012,2013,2014,2015,2016,2017,2018])
axis([0.5 7.5 0 25])
box on









%%%%%% Figure Seven
clear all
close all

load('ANN results\T7')



[T7_R_annual(1,:),T7_R_GS(1,:),T7_Per_annual(1,:),T7_Per_GS(1,:),T7_RMSE_annual(1,:),T7_RMSE_GS(1,:),T7_rho_annual(1,:),T7_rho_GS(1,:)] = analysisANN(T71_test_ts,T71_test_simOut,1);
[T7_R_annual(2,:),T7_R_GS(2,:),T7_Per_annual(2,:),T7_Per_GS(2,:),T7_RMSE_annual(2,:),T7_RMSE_GS(2,:),T7_rho_annual(2,:),T7_rho_GS(2,:)] = analysisANN(T72_test_ts,T72_test_simOut,1);
[T7_R_annual(3,:),T7_R_GS(3,:),T7_Per_annual(3,:),T7_Per_GS(3,:),T7_RMSE_annual(3,:),T7_RMSE_GS(3,:),T7_rho_annual(3,:),T7_rho_GS(3,:)] = analysisANN(T73_test_ts,T73_test_simOut,1);
[T7_R_annual(4,:),T7_R_GS(4,:),T7_Per_annual(4,:),T7_Per_GS(4,:),T7_RMSE_annual(4,:),T7_RMSE_GS(4,:),T7_rho_annual(4,:),T7_rho_GS(4,:)] = analysisANN(T74_test_ts,T74_test_simOut,1);
[T7_R_annual(5,:),T7_R_GS(5,:),T7_Per_annual(5,:),T7_Per_GS(5,:),T7_RMSE_annual(5,:),T7_RMSE_GS(5,:),T7_rho_annual(5,:),T7_rho_GS(5,:)] = analysisANN(T75_test_ts,T75_test_simOut,1);
[T7_R_annual(6,:),T7_R_GS(6,:),T7_Per_annual(6,:),T7_Per_GS(6,:),T7_RMSE_annual(6,:),T7_RMSE_GS(6,:),T7_rho_annual(6,:),T7_rho_GS(6,:)] = analysisANN(T76_test_ts,T76_test_simOut,1);


%growing season, 30-min     [166/255,206/255,227/255]
%annual, 30-min             [31/255,120/255,180/255]
%growing season, daily      [178/255,223/255,138/255]
%annual, daily              [51/255,160/255,44/255]


subplot(4,1,1)
%r^2
hold on
plot(nan,'o','color',[51/255,160/255,44/255],'MarkerFaceColor',[51/255,160/255,44/255])
plot(nan,'o','color',[178/255,223/255,138/255],'MarkerFaceColor',[178/255,223/255,138/255])

set(0,'DefaultLegendAutoUpdate','off')
lgn=legend({'Annual','GS'},'Location','northwest','Orientation','horizontal')
legend('boxoff')


NEE = [T7_R_annual(:,1),T7_R_GS(:,1)];
Reco = [T7_R_annual(:,2),T7_R_GS(:,2)];
GPP = [T7_R_annual(:,3),T7_R_GS(:,3)];
gap = zeros(6,1);
data = [NEE,gap,gap,Reco,gap,gap,GPP];

violins = violinplot(data)
for i=1:10
violins(i).ShowData=0
end
violins(1).ViolinColor=[51/255,160/255,44/255]
violins(5).ViolinColor=[51/255,160/255,44/255]
violins(9).ViolinColor=[51/255,160/255,44/255]

violins(2).ViolinColor=[178/255,223/255,138/255]
violins(6).ViolinColor=[178/255,223/255,138/255]
violins(10).ViolinColor=[178/255,223/255,138/255]

violins(3).ViolinColor=[255/255,255/255,255/255]
violins(4).ViolinColor=[255/255,255/255,255/255]
violins(7).ViolinColor=[255/255,255/255,255/255]
violins(8).ViolinColor=[255/255,255/255,255/255]

xticks([1.5 5.5 9.5])
xticklabels('')
box on
ylabel('r^2')
axis([0 11 0.05 0.65])
ntitle('(b) ','location','northeast');



%RMSE
subplot(4,1,2)
hold on

NEE = [T7_RMSE_annual(:,1),T7_RMSE_GS(:,1)];
Reco = [T7_RMSE_annual(:,2),T7_RMSE_GS(:,2)];
GPP = [T7_RMSE_annual(:,3),T7_RMSE_GS(:,3)];
gap = zeros(6,1);
data = [NEE,gap,gap,Reco,gap,gap,GPP];

violins = violinplot(data)
for i=1:10
violins(i).ShowData=0
end
violins(1).ViolinColor=[51/255,160/255,44/255]
violins(5).ViolinColor=[51/255,160/255,44/255]
violins(9).ViolinColor=[51/255,160/255,44/255]

violins(2).ViolinColor=[178/255,223/255,138/255]
violins(6).ViolinColor=[178/255,223/255,138/255]
violins(10).ViolinColor=[178/255,223/255,138/255]

violins(3).ViolinColor=[255/255,255/255,255/255]
violins(4).ViolinColor=[255/255,255/255,255/255]
violins(7).ViolinColor=[255/255,255/255,255/255]
violins(8).ViolinColor=[255/255,255/255,255/255]



ylabel('RMSE')
axis([0 11 1 2.8])
xticks([1.5 5.5 9.5])
xticklabels('')
box on
ntitle('(c) ','location','northeast');




%rho
subplot(4,1,3)
hold on

NEE = [T7_rho_annual(:,1),T7_rho_GS(:,1)];
Reco = [T7_rho_annual(:,2),T7_rho_GS(:,2)];
GPP = [T7_rho_annual(:,3),T7_rho_GS(:,3)];
gap = zeros(6,1);
data = [NEE,gap,gap,Reco,gap,gap,GPP];

violins = violinplot(data)
for i=1:10
violins(i).ShowData=0
end
violins(1).ViolinColor=[51/255,160/255,44/255]
violins(5).ViolinColor=[51/255,160/255,44/255]
violins(9).ViolinColor=[51/255,160/255,44/255]

violins(2).ViolinColor=[178/255,223/255,138/255]
violins(6).ViolinColor=[178/255,223/255,138/255]
violins(10).ViolinColor=[178/255,223/255,138/255]

violins(3).ViolinColor=[255/255,255/255,255/255]
violins(4).ViolinColor=[255/255,255/255,255/255]
violins(7).ViolinColor=[255/255,255/255,255/255]
violins(8).ViolinColor=[255/255,255/255,255/255]


ylabel('Spearman''s \rho')
axis([0 11 0.2 0.9])
xticks([1.5 5.5 9.5])
xticklabels('')
box on
ntitle('(d) ','location','northeast');


%percent error
subplot(4,1,4)
hold on

NEE = [T7_Per_annual(:,1),T7_Per_GS(:,1)];
Reco = [T7_Per_annual(:,2),T7_Per_GS(:,2)];
GPP = [T7_Per_annual(:,3),T7_Per_GS(:,3)];
gap = zeros(6,1);
data = [NEE,gap,gap,Reco,gap,gap,GPP];

violins = violinplot(data)
for i=1:10
violins(i).ShowData=0
end
violins(1).ViolinColor=[51/255,160/255,44/255]
violins(5).ViolinColor=[51/255,160/255,44/255]
violins(9).ViolinColor=[51/255,160/255,44/255]

violins(2).ViolinColor=[178/255,223/255,138/255]
violins(6).ViolinColor=[178/255,223/255,138/255]
violins(10).ViolinColor=[178/255,223/255,138/255]

violins(3).ViolinColor=[255/255,255/255,255/255]
violins(4).ViolinColor=[255/255,255/255,255/255]
violins(7).ViolinColor=[255/255,255/255,255/255]
violins(8).ViolinColor=[255/255,255/255,255/255]



ylabel('Percent Error [%]')
axis([0 11 1 225])
xticks([1.5 5.5 9.5])
xticklabels('')
xticklabels({'NEE','R_e_c_o','GPP'})
box on
ntitle('(e) ','location','northeast');


