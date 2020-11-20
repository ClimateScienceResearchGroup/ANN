%%%%% David Reed
%%%%% March 2019

%%%%% Analysis function for ANN results



%%%%% function inputs:  observation time series (3 by ??? matrix)
%%%%%                   modeled output time seires (3 by ??? matrix)
%%%%%                   timestep code (1 for daily, 48 for 30-min)

%%%%% function outputs: R^2 value at annual range
%%%%%                   R^2 value at GS range
%%%%%                   R^2 value at monthly range (1 by 12 matrix)
%%%%%                   % difference value at annual range
%%%%%                   % difference value at GS range
%%%%%                   % difference value at monthly range (1 by 12 matrix)


function [R_annual,R_GS,Per_annual,Per_GS,RMSE_annual,RMSE_GS,rho_annual,rho_GS] = analysisANN(Obs_ts,Model_ts,timestep_code)


%Obs_ts=T1_1_1Day_test_ts;
%Model_ts=T1_1_1Day_test_simOut;

%Obs_ts=T4_1_1Day_test_ts
%Model_ts=T4_1_1Day_test_simOut

Obs_mat=cell2mat(Obs_ts);
Obs_mat_NEE = Obs_mat(1,:);
Obs_mat_Reco = Obs_mat(2,:);
Obs_mat_GPP = Obs_mat(3,:);

Model_mat=cell2mat(Model_ts);
Model_mat_NEE = Model_mat(1,:);
Model_mat_Reco = Model_mat(2,:);
Model_mat_GPP = Model_mat(3,:);


if timestep_code==1
    
    num_years = round(length(Model_mat_NEE)/363);

     %annual stats, daily timescale
     %NEE
    mdl = fitlm(Obs_mat_NEE,Model_mat_NEE);
    R_annual(1)=mdl.Rsquared.Ordinary;
    RMSE_annual(1)=mdl.RMSE;
    for i=1:num_years
        Per_annual_year(i)=(nansum(Obs_mat_NEE(363*i-362:362*i))-nansum(Model_mat_NEE(363*i-362:362*i)))/(nansum(Obs_mat_NEE(363*i-362:362*i)))*100;
    end
    Per_annual(1)=abs(nanmean(Per_annual_year));
    rho_annual(1)=corr(Obs_mat_NEE',Model_mat_NEE','Type','Spearman','Rows','complete');
    
    %Reco
    mdl = fitlm(Obs_mat_Reco,Model_mat_Reco);
    R_annual(2)=mdl.Rsquared.Ordinary;
    RMSE_annual(2)=mdl.RMSE;
    for i=1:num_years
        Per_annual_year(i)=(nansum(Obs_mat_Reco(363*i-362:362*i))-nansum(Model_mat_Reco(363*i-362:362*i)))/(nansum(Obs_mat_Reco(363*i-362:362*i)))*100;
    end
    Per_annual(2)=abs(nanmean(Per_annual_year));
    rho_annual(2)=corr(Obs_mat_Reco',Model_mat_Reco','Type','Spearman','Rows','complete');
    
    %GPP
    mdl = fitlm(Obs_mat_GPP,Model_mat_GPP);
    R_annual(3)=mdl.Rsquared.Ordinary;
    RMSE_annual(3)=mdl.RMSE;
    for i=1:num_years
        Per_annual_year(i)=(nansum(Obs_mat_GPP(363*i-362:362*i))-nansum(Model_mat_GPP(363*i-362:362*i)))/(nansum(Obs_mat_GPP(363*i-362:362*i)))*100;
    end
    Per_annual(3)=abs(nanmean(Per_annual_year));
    rho_annual(3)=corr(Obs_mat_GPP',Model_mat_GPP','Type','Spearman','Rows','complete');
    

    
   
    %growing season defintions, daily timescale
    %April 1 - Sept 30
    %DOY 91 - 273
    
    
    %define growing season, daily timescale

    
    
    if num_years == 1
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));

        Model_mat_NEE_gs(91:273)=Model_mat_NEE(91:273);
        Model_mat_Reco_gs(91:273)=Model_mat_Reco(91:273);
        Model_mat_GPP_gs(91:273)=Model_mat_GPP(91:273);
        
        Obs_mat_NEE_gs(91:273)=Obs_mat_NEE(91:273);
        Obs_mat_Reco_gs(91:273)=Obs_mat_Reco(91:273);
        Obs_mat_GPP_gs(91:273)=Obs_mat_GPP(91:273);
        
    elseif num_years == 2
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(91:273)=Model_mat_NEE(91:273);
        Model_mat_NEE_gs(91+365:273+365)=Model_mat_NEE(91+365:273+365);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(91:273)=Model_mat_Reco(91:273);
        Model_mat_Reco_gs(91+365:273+365)=Model_mat_Reco(91+365:273+365);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(91:273)=Model_mat_GPP(91:273);
        Model_mat_GPP_gs(91+365:273+365)=Model_mat_GPP(91+365:273+365);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(91:273)=Obs_mat_NEE(91:273);
        Obs_mat_NEE_gs(91+365:273+365)=Obs_mat_NEE(91+365:273+365);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(91:273)=Obs_mat_Reco(91:273);
        Obs_mat_Reco_gs(91+365:273+365)=Obs_mat_Reco(91+365:273+365);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(91:273)=Obs_mat_GPP(91:273);
        Obs_mat_GPP_gs(91+365:273+365)=Obs_mat_GPP(91+365:273+365);
        
    elseif num_years == 3
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(91:273)=Model_mat_NEE(91:273);
        Model_mat_NEE_gs(91+365:273+365)=Model_mat_NEE(91+365:273+365);
        Model_mat_NEE_gs(91+365+365:273+365+365)=Model_mat_NEE(91+365+365:273+365+365);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(91:273)=Model_mat_Reco(91:273);
        Model_mat_Reco_gs(91+365:273+365)=Model_mat_Reco(91+365:273+365);
        Model_mat_Reco_gs(91+365+365:273+365+365)=Model_mat_Reco(91+365+365:273+365+365);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(91:273)=Model_mat_GPP(91:273);
        Model_mat_GPP_gs(91+365:273+365)=Model_mat_GPP(91+365:273+365);
        Model_mat_GPP_gs(91+365+365:273+365+365)=Model_mat_GPP(91+365+365:273+365+365);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(91:273)=Obs_mat_NEE(91:273);
        Obs_mat_NEE_gs(91+365:273+365)=Obs_mat_NEE(91+365:273+365);
        Obs_mat_NEE_gs(91+365+365:273+365+365)=Obs_mat_NEE(91+365+365:273+365+365);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(91:273)=Obs_mat_Reco(91:273);
        Obs_mat_Reco_gs(91+365:273+365)=Obs_mat_Reco(91+365:273+365);
        Obs_mat_Reco_gs(91+365+365:273+365+365)=Obs_mat_Reco(91+365+365:273+365+365);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(91:273)=Obs_mat_GPP(91:273);
        Obs_mat_GPP_gs(91+365:273+365)=Obs_mat_GPP(91+365:273+365);
        Obs_mat_GPP_gs(91+365+365:273+365+365)=Obs_mat_GPP(91+365+365:273+365+365);
        
    elseif num_years == 4
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(91:273)=Model_mat_NEE(91:273);
        Model_mat_NEE_gs(91+365:273+365)=Model_mat_NEE(91+365:273+365);
        Model_mat_NEE_gs(91+365+365:273+365+365)=Model_mat_NEE(91+365+365:273+365+365);
        Model_mat_NEE_gs(91+365+365+365:273+365+365+365)=Model_mat_NEE(91+365+365+365:273+365+365+365);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(91:273)=Model_mat_Reco(91:273);
        Model_mat_Reco_gs(91+365:273+365)=Model_mat_Reco(91+365:273+365);
        Model_mat_Reco_gs(91+365+365:273+365+365)=Model_mat_Reco(91+365+365:273+365+365);
        Model_mat_Reco_gs(91+365+365+365:273+365+365+365)=Model_mat_Reco(91+365+365+365:273+365+365+365);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(91:273)=Model_mat_GPP(91:273);
        Model_mat_GPP_gs(91+365:273+365)=Model_mat_GPP(91+365:273+365);
        Model_mat_GPP_gs(91+365+365:273+365+365)=Model_mat_GPP(91+365+365:273+365+365);
        Model_mat_GPP_gs(91+365+365+365:273+365+365+365)=Model_mat_GPP(91+365+365+365:273+365+365+365);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(91:273)=Obs_mat_NEE(91:273);
        Obs_mat_NEE_gs(91+365:273+365)=Obs_mat_NEE(91+365:273+365);
        Obs_mat_NEE_gs(91+365+365:273+365+365)=Obs_mat_NEE(91+365+365:273+365+365);
        Obs_mat_NEE_gs(91+365+365+365:273+365+365+365)=Obs_mat_NEE(91+365+365+365:273+365+365+365);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(91:273)=Obs_mat_Reco(91:273);
        Obs_mat_Reco_gs(91+365:273+365)=Obs_mat_Reco(91+365:273+365);
        Obs_mat_Reco_gs(91+365+365:273+365+365)=Obs_mat_Reco(91+365+365:273+365+365);
        Obs_mat_Reco_gs(91+365+365+365:273+365+365+365)=Obs_mat_Reco(91+365+365+365:273+365+365+365);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(91:273)=Obs_mat_GPP(91:273);
        Obs_mat_GPP_gs(91+365:273+365)=Obs_mat_GPP(91+365:273+365);
        Obs_mat_GPP_gs(91+365+365:273+365+365)=Obs_mat_GPP(91+365+365:273+365+365);
        Obs_mat_GPP_gs(91+365+365+365:273+365+365+365)=Obs_mat_GPP(91+365+365+365:273+365+365+365);
        
    elseif num_years == 5
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(91:273)=Model_mat_NEE(91:273);
        Model_mat_NEE_gs(91+365:273+365)=Model_mat_NEE(91+365:273+365);
        Model_mat_NEE_gs(91+365+365:273+365+365)=Model_mat_NEE(91+365+365:273+365+365);
        Model_mat_NEE_gs(91+365+365+365:273+365+365+365)=Model_mat_NEE(91+365+365+365:273+365+365+365);
        Model_mat_NEE_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_NEE(91+365+365+365+365:273+365+365+365+365);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(91:273)=Model_mat_Reco(91:273);
        Model_mat_Reco_gs(91+365:273+365)=Model_mat_Reco(91+365:273+365);
        Model_mat_Reco_gs(91+365+365:273+365+365)=Model_mat_Reco(91+365+365:273+365+365);
        Model_mat_Reco_gs(91+365+365+365:273+365+365+365)=Model_mat_Reco(91+365+365+365:273+365+365+365);
        Model_mat_Reco_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_Reco(91+365+365+365+365:273+365+365+365+365);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(91:273)=Model_mat_GPP(91:273);
        Model_mat_GPP_gs(91+365:273+365)=Model_mat_GPP(91+365:273+365);
        Model_mat_GPP_gs(91+365+365:273+365+365)=Model_mat_GPP(91+365+365:273+365+365);
        Model_mat_GPP_gs(91+365+365+365:273+365+365+365)=Model_mat_GPP(91+365+365+365:273+365+365+365);
        Model_mat_GPP_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_GPP(91+365+365+365+365:273+365+365+365+365);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(91:273)=Obs_mat_NEE(91:273);
        Obs_mat_NEE_gs(91+365:273+365)=Obs_mat_NEE(91+365:273+365);
        Obs_mat_NEE_gs(91+365+365:273+365+365)=Obs_mat_NEE(91+365+365:273+365+365);
        Obs_mat_NEE_gs(91+365+365+365:273+365+365+365)=Obs_mat_NEE(91+365+365+365:273+365+365+365);
        Obs_mat_NEE_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_NEE(91+365+365+365+365:273+365+365+365+365);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(91:273)=Obs_mat_Reco(91:273);
        Obs_mat_Reco_gs(91+365:273+365)=Obs_mat_Reco(91+365:273+365);
        Obs_mat_Reco_gs(91+365+365:273+365+365)=Obs_mat_Reco(91+365+365:273+365+365);
        Obs_mat_Reco_gs(91+365+365+365:273+365+365+365)=Obs_mat_Reco(91+365+365+365:273+365+365+365);
        Obs_mat_Reco_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_Reco(91+365+365+365+365:273+365+365+365+365);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(91:273)=Obs_mat_GPP(91:273);
        Obs_mat_GPP_gs(91+365:273+365)=Obs_mat_GPP(91+365:273+365);
        Obs_mat_GPP_gs(91+365+365:273+365+365)=Obs_mat_GPP(91+365+365:273+365+365);
        Obs_mat_GPP_gs(91+365+365+365:273+365+365+365)=Obs_mat_GPP(91+365+365+365:273+365+365+365);
        Obs_mat_GPP_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_GPP(91+365+365+365+365:273+365+365+365+365);
        
    elseif num_years == 6
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(91:273)=Model_mat_NEE(91:273);
        Model_mat_NEE_gs(91+365:273+365)=Model_mat_NEE(91+365:273+365);
        Model_mat_NEE_gs(91+365+365:273+365+365)=Model_mat_NEE(91+365+365:273+365+365);
        Model_mat_NEE_gs(91+365+365+365:273+365+365+365)=Model_mat_NEE(91+365+365+365:273+365+365+365);
        Model_mat_NEE_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_NEE(91+365+365+365+365:273+365+365+365+365);
        Model_mat_NEE_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Model_mat_NEE(91+365+365+365+365+365:273+365+365+365+365+365);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(91:273)=Model_mat_Reco(91:273);
        Model_mat_Reco_gs(91+365:273+365)=Model_mat_Reco(91+365:273+365);
        Model_mat_Reco_gs(91+365+365:273+365+365)=Model_mat_Reco(91+365+365:273+365+365);
        Model_mat_Reco_gs(91+365+365+365:273+365+365+365)=Model_mat_Reco(91+365+365+365:273+365+365+365);
        Model_mat_Reco_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_Reco(91+365+365+365+365:273+365+365+365+365);
        Model_mat_Reco_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Model_mat_Reco(91+365+365+365+365+365:273+365+365+365+365+365);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(91:273)=Model_mat_GPP(91:273);
        Model_mat_GPP_gs(91+365:273+365)=Model_mat_GPP(91+365:273+365);
        Model_mat_GPP_gs(91+365+365:273+365+365)=Model_mat_GPP(91+365+365:273+365+365);
        Model_mat_GPP_gs(91+365+365+365:273+365+365+365)=Model_mat_GPP(91+365+365+365:273+365+365+365);
        Model_mat_GPP_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_GPP(91+365+365+365+365:273+365+365+365+365);
        Model_mat_GPP_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Model_mat_GPP(91+365+365+365+365+365:273+365+365+365+365+365);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(91:273)=Obs_mat_NEE(91:273);
        Obs_mat_NEE_gs(91+365:273+365)=Obs_mat_NEE(91+365:273+365);
        Obs_mat_NEE_gs(91+365+365:273+365+365)=Obs_mat_NEE(91+365+365:273+365+365);
        Obs_mat_NEE_gs(91+365+365+365:273+365+365+365)=Obs_mat_NEE(91+365+365+365:273+365+365+365);
        Obs_mat_NEE_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_NEE(91+365+365+365+365:273+365+365+365+365);
        Obs_mat_NEE_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Obs_mat_NEE(91+365+365+365+365+365:273+365+365+365+365+365);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(91:273)=Obs_mat_Reco(91:273);
        Obs_mat_Reco_gs(91+365:273+365)=Obs_mat_Reco(91+365:273+365);
        Obs_mat_Reco_gs(91+365+365:273+365+365)=Obs_mat_Reco(91+365+365:273+365+365);
        Obs_mat_Reco_gs(91+365+365+365:273+365+365+365)=Obs_mat_Reco(91+365+365+365:273+365+365+365);
        Obs_mat_Reco_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_Reco(91+365+365+365+365:273+365+365+365+365);
        Obs_mat_Reco_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Obs_mat_Reco(91+365+365+365+365+365:273+365+365+365+365+365);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(91:273)=Obs_mat_GPP(91:273);
        Obs_mat_GPP_gs(91+365:273+365)=Obs_mat_GPP(91+365:273+365);
        Obs_mat_GPP_gs(91+365+365:273+365+365)=Obs_mat_GPP(91+365+365:273+365+365);
        Obs_mat_GPP_gs(91+365+365+365:273+365+365+365)=Obs_mat_GPP(91+365+365+365:273+365+365+365);
        Obs_mat_GPP_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_GPP(91+365+365+365+365:273+365+365+365+365);
        Obs_mat_GPP_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Obs_mat_GPP(91+365+365+365+365+365:273+365+365+365+365+365);
        
    elseif num_years == 7
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(91:273)=Model_mat_NEE(91:273);
        Model_mat_NEE_gs(91+365:273+365)=Model_mat_NEE(91+365:273+365);
        Model_mat_NEE_gs(91+365+365:273+365+365)=Model_mat_NEE(91+365+365:273+365+365);
        Model_mat_NEE_gs(91+365+365+365:273+365+365+365)=Model_mat_NEE(91+365+365+365:273+365+365+365);
        Model_mat_NEE_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_NEE(91+365+365+365+365:273+365+365+365+365);
        Model_mat_NEE_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Model_mat_NEE(91+365+365+365+365+365:273+365+365+365+365+365);
        Model_mat_NEE_gs(91+365+365+365+365+365+365:273+365+365+365+365+365+365)=Model_mat_NEE(91+365+365+365+365+365+365:273+365+365+365+365+365+365);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(91:273)=Model_mat_Reco(91:273);
        Model_mat_Reco_gs(91+365:273+365)=Model_mat_Reco(91+365:273+365);
        Model_mat_Reco_gs(91+365+365:273+365+365)=Model_mat_Reco(91+365+365:273+365+365);
        Model_mat_Reco_gs(91+365+365+365:273+365+365+365)=Model_mat_Reco(91+365+365+365:273+365+365+365);
        Model_mat_Reco_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_Reco(91+365+365+365+365:273+365+365+365+365);
        Model_mat_Reco_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Model_mat_Reco(91+365+365+365+365+365:273+365+365+365+365+365);
        Model_mat_Reco_gs(91+365+365+365+365+365+365:273+365+365+365+365+365+365)=Model_mat_Reco(91+365+365+365+365+365+365:273+365+365+365+365+365+365);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(91:273)=Model_mat_GPP(91:273);
        Model_mat_GPP_gs(91+365:273+365)=Model_mat_GPP(91+365:273+365);
        Model_mat_GPP_gs(91+365+365:273+365+365)=Model_mat_GPP(91+365+365:273+365+365);
        Model_mat_GPP_gs(91+365+365+365:273+365+365+365)=Model_mat_GPP(91+365+365+365:273+365+365+365);
        Model_mat_GPP_gs(91+365+365+365+365:273+365+365+365+365)=Model_mat_GPP(91+365+365+365+365:273+365+365+365+365);
        Model_mat_GPP_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Model_mat_GPP(91+365+365+365+365+365:273+365+365+365+365+365);
        Model_mat_GPP_gs(91+365+365+365+365+365+365:273+365+365+365+365+365+365)=Model_mat_GPP(91+365+365+365+365+365+365:273+365+365+365+365+365+365);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(91:273)=Obs_mat_NEE(91:273);
        Obs_mat_NEE_gs(91+365:273+365)=Obs_mat_NEE(91+365:273+365);
        Obs_mat_NEE_gs(91+365+365:273+365+365)=Obs_mat_NEE(91+365+365:273+365+365);
        Obs_mat_NEE_gs(91+365+365+365:273+365+365+365)=Obs_mat_NEE(91+365+365+365:273+365+365+365);
        Obs_mat_NEE_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_NEE(91+365+365+365+365:273+365+365+365+365);
        Obs_mat_NEE_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Obs_mat_NEE(91+365+365+365+365+365:273+365+365+365+365+365);
        Obs_mat_NEE_gs(91+365+365+365+365+365+365:273+365+365+365+365+365+365)=Obs_mat_NEE(91+365+365+365+365+365+365:273+365+365+365+365+365+365);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(91:273)=Obs_mat_Reco(91:273);
        Obs_mat_Reco_gs(91+365:273+365)=Obs_mat_Reco(91+365:273+365);
        Obs_mat_Reco_gs(91+365+365:273+365+365)=Obs_mat_Reco(91+365+365:273+365+365);
        Obs_mat_Reco_gs(91+365+365+365:273+365+365+365)=Obs_mat_Reco(91+365+365+365:273+365+365+365);
        Obs_mat_Reco_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_Reco(91+365+365+365+365:273+365+365+365+365);
        Obs_mat_Reco_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Obs_mat_Reco(91+365+365+365+365+365:273+365+365+365+365+365);
        Obs_mat_Reco_gs(91+365+365+365+365+365+365:273+365+365+365+365+365+365)=Obs_mat_Reco(91+365+365+365+365+365+365:273+365+365+365+365+365+365);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(91:273)=Obs_mat_GPP(91:273);
        Obs_mat_GPP_gs(91+365:273+365)=Obs_mat_GPP(91+365:273+365);
        Obs_mat_GPP_gs(91+365+365:273+365+365)=Obs_mat_GPP(91+365+365:273+365+365);
        Obs_mat_GPP_gs(91+365+365+365:273+365+365+365)=Obs_mat_GPP(91+365+365+365:273+365+365+365);
        Obs_mat_GPP_gs(91+365+365+365+365:273+365+365+365+365)=Obs_mat_GPP(91+365+365+365+365:273+365+365+365+365);
        Obs_mat_GPP_gs(91+365+365+365+365+365:273+365+365+365+365+365)=Obs_mat_GPP(91+365+365+365+365+365:273+365+365+365+365+365);
        Obs_mat_GPP_gs(91+365+365+365+365+365+365:273+365+365+365+365+365+365)=Obs_mat_GPP(91+365+365+365+365+365+365:273+365+365+365+365+365+365);
        
    end
  
    
    %growing season stats
    %NEE
    mdl = fitlm(Obs_mat_NEE_gs,Model_mat_NEE_gs);
    R_GS(1)=mdl.Rsquared.Ordinary;
    RMSE_GS(1)=mdl.RMSE;
    for i=1:num_years
        Per_GS_year(i)=(nansum(Obs_mat_NEE_gs(363*i-362:362*i))-nansum(Model_mat_NEE_gs(363*i-362:362*i)))/(nansum(Obs_mat_NEE_gs(363*i-362:362*i)))*100;
    end
    Per_GS(1)=abs(nanmean(Per_GS_year));
    rho_GS(1)=corr(Obs_mat_NEE_gs',Model_mat_NEE_gs','Type','Spearman','Rows','complete');
    
    %Reco
    mdl = fitlm(Obs_mat_Reco_gs,Model_mat_Reco_gs);
    R_GS(2)=mdl.Rsquared.Ordinary;
    RMSE_GS(2)=mdl.RMSE;
    for i=1:num_years
        Per_GS_year(i)=(nansum(Obs_mat_Reco_gs(363*i-362:362*i))-nansum(Model_mat_Reco_gs(363*i-362:362*i)))/(nansum(Obs_mat_Reco_gs(363*i-362:362*i)))*100;
    end
    Per_GS(2)=abs(nanmean(Per_GS_year));
    rho_GS(2)=corr(Obs_mat_Reco_gs',Model_mat_Reco_gs','Type','Spearman','Rows','complete');
    
    %GPP
    mdl = fitlm(Obs_mat_GPP_gs,Model_mat_GPP_gs);
    R_GS(3)=mdl.Rsquared.Ordinary;
    RMSE_GS(3)=mdl.RMSE;
    for i=1:num_years
        Per_GS_year(i)=(nansum(Obs_mat_GPP_gs(363*i-362:362*i))-nansum(Model_mat_GPP_gs(363*i-362:362*i)))/(nansum(Obs_mat_GPP_gs(363*i-362:362*i)))*100;
    end
    Per_GS(3)=abs(nanmean(Per_GS_year));
    rho_GS(3)=corr(Obs_mat_GPP_gs',Model_mat_GPP_gs','Type','Spearman','Rows','complete');
    
    
    
    

end

if timestep_code==48
    
    %define growing season
    num_years = round(length(Model_mat_NEE)/365/48);
    
    
    %annual stats, 30-min timescale
    %NEE
    mdl = fitlm(Obs_mat_NEE,Model_mat_NEE);
    R_annual(1)=mdl.Rsquared.Ordinary;
    RMSE_annual(1)=mdl.RMSE;
    for i=1:num_years
        Per_annual_year(i)=(nansum(Obs_mat_NEE(17520*i-17472:17472*i))-nansum(Model_mat_NEE(17520*i-17472:17472*i)))/(nansum(Obs_mat_NEE(17520*i-17472:17472*i)))*100;
    end
    Per_annual(1)=abs(nanmean(Per_annual_year));
    rho_annual(1)=corr(Obs_mat_NEE',Model_mat_NEE','Type','Spearman','Rows','complete');
    
    
    %Reco
    mdl = fitlm(Obs_mat_Reco,Model_mat_Reco);
    R_annual(2)=mdl.Rsquared.Ordinary;
    RMSE_annual(2)=mdl.RMSE;
    for i=1:num_years
        Per_annual_year(i)=(nansum(Obs_mat_Reco(17520*i-17472:17472*i))-nansum(Model_mat_Reco(17520*i-17472:17472*i)))/(nansum(Obs_mat_Reco(17520*i-17472:17472*i)))*100;
    end
    Per_annual(2)=abs(nanmean(Per_annual_year));
    rho_annual(2)=corr(Obs_mat_Reco',Model_mat_Reco','Type','Spearman','Rows','complete');
    
    %GPP
    mdl = fitlm(Obs_mat_GPP,Model_mat_GPP);
    R_annual(3)=mdl.Rsquared.Ordinary;
    RMSE_annual(3)=mdl.RMSE;
    for i=1:num_years
        Per_annual_year(i)=(nansum(Obs_mat_GPP(17520*i-17472:17472*i))-nansum(Model_mat_GPP(17520*i-17472:17472*i)))/(nansum(Obs_mat_GPP(17520*i-17472:17472*i)))*100;
    end
    Per_annual(3)=abs(nanmean(Per_annual_year));
    rho_annual(3)=corr(Obs_mat_GPP',Model_mat_GPP','Type','Spearman','Rows','complete');
    
        
    
    %growing season defintions
    %April 1 - Sept 30
    %DOY 91 - 273
    %30-min position 4368 - 13152
    

    
    if num_years == 1
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        
        Model_mat_NEE_gs(4368:13152)=Model_mat_NEE(4368:13152);
        Model_mat_Reco_gs(4368:13152)=Model_mat_Reco(4368:13152);
        Model_mat_GPP_gs(4368:13152)=Model_mat_GPP(4368:13152);
        
        Obs_mat_NEE_gs(4368:13152)=Obs_mat_NEE(4368:13152);
        Obs_mat_Reco_gs(4368:13152)=Obs_mat_Reco(4368:13152);
        Obs_mat_GPP_gs(4368:13152)=Obs_mat_GPP(4368:13152);
             
    elseif num_years == 2
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(4368:13152)=Model_mat_NEE(4368:13152);
        Model_mat_NEE_gs(4368+17520:13152+17520)=Model_mat_NEE(4368+17520:13152+17520);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(4368:13152)=Model_mat_Reco(4368:13152);
        Model_mat_Reco_gs(4368+17520:13152+17520)=Model_mat_Reco(4368+17520:13152+17520);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(4368:13152)=Model_mat_GPP(4368:13152);
        Model_mat_GPP_gs(4368+17520:13152+17520)=Model_mat_GPP(4368+17520:13152+17520);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(4368:13152)=Obs_mat_NEE(4368:13152);
        Obs_mat_NEE_gs(4368+17520:13152+17520)=Obs_mat_NEE(4368+17520:13152+17520);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(4368:13152)=Obs_mat_Reco(4368:13152);
        Obs_mat_Reco_gs(4368+17520:13152+17520)=Obs_mat_Reco(4368+17520:13152+17520);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(4368:13152)=Obs_mat_GPP(4368:13152);
        Obs_mat_GPP_gs(4368+17520:13152+17520)=Obs_mat_GPP(4368+17520:13152+17520);
        
    elseif num_years == 3
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(4368:13152)=Model_mat_NEE(4368:13152);
        Model_mat_NEE_gs(4368+17520:13152+17520)=Model_mat_NEE(4368+17520:13152+17520);
        Model_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Model_mat_NEE(4368+17520+17520:13152+17520+17520);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(4368:13152)=Model_mat_Reco(4368:13152);
        Model_mat_Reco_gs(4368+17520:13152+17520)=Model_mat_Reco(4368+17520:13152+17520);
        Model_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Model_mat_Reco(4368+17520+17520:13152+17520+17520);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(4368:13152)=Model_mat_GPP(4368:13152);
        Model_mat_GPP_gs(4368+17520:13152+17520)=Model_mat_GPP(4368+17520:13152+17520);
        Model_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Model_mat_GPP(4368+17520+17520:13152+17520+17520);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(4368:13152)=Obs_mat_NEE(4368:13152);
        Obs_mat_NEE_gs(4368+17520:13152+17520)=Obs_mat_NEE(4368+17520:13152+17520);
        Obs_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_NEE(4368+17520+17520:13152+17520+17520);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(4368:13152)=Obs_mat_Reco(4368:13152);
        Obs_mat_Reco_gs(4368+17520:13152+17520)=Obs_mat_Reco(4368+17520:13152+17520);
        Obs_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_Reco(4368+17520+17520:13152+17520+17520);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(4368:13152)=Obs_mat_GPP(4368:13152);
        Obs_mat_GPP_gs(4368+17520:13152+17520)=Obs_mat_GPP(4368+17520:13152+17520);
        Obs_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_GPP(4368+17520+17520:13152+17520+17520);
        
    elseif num_years == 4
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(4368:13152)=Model_mat_NEE(4368:13152);
        Model_mat_NEE_gs(4368+17520:13152+17520)=Model_mat_NEE(4368+17520:13152+17520);
        Model_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Model_mat_NEE(4368+17520+17520:13152+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520:13152+17520+17520+17520);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(4368:13152)=Model_mat_Reco(4368:13152);
        Model_mat_Reco_gs(4368+17520:13152+17520)=Model_mat_Reco(4368+17520:13152+17520);
        Model_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Model_mat_Reco(4368+17520+17520:13152+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520:13152+17520+17520+17520);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(4368:13152)=Model_mat_GPP(4368:13152);
        Model_mat_GPP_gs(4368+17520:13152+17520)=Model_mat_GPP(4368+17520:13152+17520);
        Model_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Model_mat_GPP(4368+17520+17520:13152+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520:13152+17520+17520+17520);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(4368:13152)=Obs_mat_NEE(4368:13152);
        Obs_mat_NEE_gs(4368+17520:13152+17520)=Obs_mat_NEE(4368+17520:13152+17520);
        Obs_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_NEE(4368+17520+17520:13152+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520:13152+17520+17520+17520);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(4368:13152)=Obs_mat_Reco(4368:13152);
        Obs_mat_Reco_gs(4368+17520:13152+17520)=Obs_mat_Reco(4368+17520:13152+17520);
        Obs_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_Reco(4368+17520+17520:13152+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520:13152+17520+17520+17520);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(4368:13152)=Obs_mat_GPP(4368:13152);
        Obs_mat_GPP_gs(4368+17520:13152+17520)=Obs_mat_GPP(4368+17520:13152+17520);
        Obs_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_GPP(4368+17520+17520:13152+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520:13152+17520+17520+17520);
        
    elseif num_years == 5
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(4368:13152)=Model_mat_NEE(4368:13152);
        Model_mat_NEE_gs(4368+17520:13152+17520)=Model_mat_NEE(4368+17520:13152+17520);
        Model_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Model_mat_NEE(4368+17520+17520:13152+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(4368:13152)=Model_mat_Reco(4368:13152);
        Model_mat_Reco_gs(4368+17520:13152+17520)=Model_mat_Reco(4368+17520:13152+17520);
        Model_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Model_mat_Reco(4368+17520+17520:13152+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(4368:13152)=Model_mat_GPP(4368:13152);
        Model_mat_GPP_gs(4368+17520:13152+17520)=Model_mat_GPP(4368+17520:13152+17520);
        Model_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Model_mat_GPP(4368+17520+17520:13152+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(4368:13152)=Obs_mat_NEE(4368:13152);
        Obs_mat_NEE_gs(4368+17520:13152+17520)=Obs_mat_NEE(4368+17520:13152+17520);
        Obs_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_NEE(4368+17520+17520:13152+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(4368:13152)=Obs_mat_Reco(4368:13152);
        Obs_mat_Reco_gs(4368+17520:13152+17520)=Obs_mat_Reco(4368+17520:13152+17520);
        Obs_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_Reco(4368+17520+17520:13152+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(4368:13152)=Obs_mat_GPP(4368:13152);
        Obs_mat_GPP_gs(4368+17520:13152+17520)=Obs_mat_GPP(4368+17520:13152+17520);
        Obs_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_GPP(4368+17520+17520:13152+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        
    elseif num_years == 6
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(4368:13152)=Model_mat_NEE(4368:13152);
        Model_mat_NEE_gs(4368+17520:13152+17520)=Model_mat_NEE(4368+17520:13152+17520);
        Model_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Model_mat_NEE(4368+17520+17520:13152+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(4368:13152)=Model_mat_Reco(4368:13152);
        Model_mat_Reco_gs(4368+17520:13152+17520)=Model_mat_Reco(4368+17520:13152+17520);
        Model_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Model_mat_Reco(4368+17520+17520:13152+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(4368:13152)=Model_mat_GPP(4368:13152);
        Model_mat_GPP_gs(4368+17520:13152+17520)=Model_mat_GPP(4368+17520:13152+17520);
        Model_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Model_mat_GPP(4368+17520+17520:13152+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(4368:13152)=Obs_mat_NEE(4368:13152);
        Obs_mat_NEE_gs(4368+17520:13152+17520)=Obs_mat_NEE(4368+17520:13152+17520);
        Obs_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_NEE(4368+17520+17520:13152+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(4368:13152)=Obs_mat_Reco(4368:13152);
        Obs_mat_Reco_gs(4368+17520:13152+17520)=Obs_mat_Reco(4368+17520:13152+17520);
        Obs_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_Reco(4368+17520+17520:13152+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(4368:13152)=Obs_mat_GPP(4368:13152);
        Obs_mat_GPP_gs(4368+17520:13152+17520)=Obs_mat_GPP(4368+17520:13152+17520);
        Obs_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_GPP(4368+17520+17520:13152+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        
    elseif num_years == 7
        Model_mat_NEE_gs=nan(1,length(Model_mat_NEE));
        Model_mat_NEE_gs(4368:13152)=Model_mat_NEE(4368:13152);
        Model_mat_NEE_gs(4368+17520:13152+17520)=Model_mat_NEE(4368+17520:13152+17520);
        Model_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Model_mat_NEE(4368+17520+17520:13152+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        Model_mat_NEE_gs(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520)=Model_mat_NEE(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520);
        
        Model_mat_Reco_gs=nan(1,length(Model_mat_Reco));
        Model_mat_Reco_gs(4368:13152)=Model_mat_Reco(4368:13152);
        Model_mat_Reco_gs(4368+17520:13152+17520)=Model_mat_Reco(4368+17520:13152+17520);
        Model_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Model_mat_Reco(4368+17520+17520:13152+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        Model_mat_Reco_gs(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520)=Model_mat_Reco(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520);
        
        Model_mat_GPP_gs=nan(1,length(Model_mat_GPP));
        Model_mat_GPP_gs(4368:13152)=Model_mat_GPP(4368:13152);
        Model_mat_GPP_gs(4368+17520:13152+17520)=Model_mat_GPP(4368+17520:13152+17520);
        Model_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Model_mat_GPP(4368+17520+17520:13152+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520:13152+17520+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        Model_mat_GPP_gs(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520)=Model_mat_GPP(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520);
        
        Obs_mat_NEE_gs=nan(1,length(Obs_mat_NEE));
        Obs_mat_NEE_gs(4368:13152)=Obs_mat_NEE(4368:13152);
        Obs_mat_NEE_gs(4368+17520:13152+17520)=Obs_mat_NEE(4368+17520:13152+17520);
        Obs_mat_NEE_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_NEE(4368+17520+17520:13152+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        Obs_mat_NEE_gs(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520)=Obs_mat_NEE(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520);
        
        Obs_mat_Reco_gs=nan(1,length(Obs_mat_Reco));
        Obs_mat_Reco_gs(4368:13152)=Obs_mat_Reco(4368:13152);
        Obs_mat_Reco_gs(4368+17520:13152+17520)=Obs_mat_Reco(4368+17520:13152+17520);
        Obs_mat_Reco_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_Reco(4368+17520+17520:13152+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        Obs_mat_Reco_gs(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520)=Obs_mat_Reco(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520);
        
        Obs_mat_GPP_gs=nan(1,length(Obs_mat_GPP));
        Obs_mat_GPP_gs(4368:13152)=Obs_mat_GPP(4368:13152);
        Obs_mat_GPP_gs(4368+17520:13152+17520)=Obs_mat_GPP(4368+17520:13152+17520);
        Obs_mat_GPP_gs(4368+17520+17520:13152+17520+17520)=Obs_mat_GPP(4368+17520+17520:13152+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520:13152+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520:13152+17520+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520+17520:13152+17520+17520+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520);
        Obs_mat_GPP_gs(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520)=Obs_mat_GPP(4368+17520+17520+17520+17520+17520+17520:13152+17520+17520+17520+17520+17520+17520);
        
        end
        
    


 
    %growing season stats, 30-min timescale
    %NEE
    mdl = fitlm(Obs_mat_NEE_gs,Model_mat_NEE_gs);
    R_GS(1)=mdl.Rsquared.Ordinary;
    RMSE_GS(1)=mdl.RMSE;
    for i=1:num_years
        Per_GS_year(i)=(nansum(Obs_mat_NEE_gs(17520*i-17472:17472*i))-nansum(Model_mat_NEE_gs(17520*i-17472:17472*i)))/(nansum(Obs_mat_NEE_gs(17520*i-17472:17472*i)))*100;
    end
    Per_GS(1)=abs(nanmean(Per_GS_year));
    rho_GS(1)=corr(Obs_mat_NEE_gs',Model_mat_NEE_gs','Type','Spearman','Rows','complete');
    
    
    %Reco
    mdl = fitlm(Obs_mat_Reco_gs,Model_mat_Reco_gs);
    R_GS(2)=mdl.Rsquared.Ordinary;
    RMSE_GS(2)=mdl.RMSE;
    for i=1:num_years
        Per_GS_year(i)=(nansum(Obs_mat_Reco_gs(17520*i-17472:17472*i))-nansum(Model_mat_Reco_gs(17520*i-17472:17472*i)))/(nansum(Obs_mat_Reco_gs(17520*i-17472:17472*i)))*100;
    end
    Per_GS(2)=abs(nanmean(Per_GS_year));
    rho_GS(2)=corr(Obs_mat_Reco_gs',Model_mat_Reco_gs','Type','Spearman','Rows','complete');
    
    %GPP
    mdl = fitlm(Obs_mat_GPP_gs,Model_mat_GPP_gs);
    R_GS(3)=mdl.Rsquared.Ordinary;
    RMSE_GS(3)=mdl.RMSE;
    for i=1:num_years
        Per_GS_year(i)=(nansum(Obs_mat_GPP_gs(17520*i-17472:17472*i))-nansum(Model_mat_GPP_gs(17520*i-17472:17472*i)))/(nansum(Obs_mat_GPP_gs(17520*i-17472:17472*i)))*100;
    end
    Per_GS(3)=abs(nanmean(Per_GS_year));
    rho_GS(3)=corr(Obs_mat_GPP_gs',Model_mat_GPP_gs','Type','Spearman','Rows','complete');
    
      
end



end





