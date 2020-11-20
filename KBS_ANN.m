function [net,ts,simOut,train_ts,train_simOut,valid_ts,valid_simOut,test_ts,test_simOut] = KBS_ANN(Inputs,Targets,DayHour,ntrainning,training_years,validation_years)
                                    
%   Solve an Input-Output Time-Series Problem with a Time Delay Neural Network
%
%   Inputs - input time series.
%   Targets - feedback time series.

X = tonndata(Inputs,false,false);
T = tonndata(Targets,false,false);

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = 'trainlm';  % Levenberg-Marquardt backpropagation.

% Create a Time Delay Network
inputDelays = 1:3;
hiddenLayerSize = 20;
for i=1:ntrainning
        disp(i);
        net = timedelaynet(inputDelays,hiddenLayerSize,trainFcn);
        
        % Choose Input and Output Pre/Post-Processing Functions
        % For a list of all processing functions type: help nnprocess
        net.input.processFcns = {'removeconstantrows','mapminmax'};
        net.output.processFcns = {'removeconstantrows','mapminmax'};
        
        % Prepare the Data for Training and Simulation
        % The function PREPARETS prepares timeseries data for a particular network,
        % shifting time by the minimum amount to fill input states and layer
        % states. Using PREPARETS allows you to keep your original time series data
        % unchanged, while easily customizing it for networks with differing
        % numbers of delays, with open loop or closed loop feedback modes.
        [x,xi,ai,t] = preparets(net,X,T);
        
        % Setup Division of Data for Training, Validation, Testing
        % For a list of all data division functions type: help nndivide
        net.divideFcn = 'divideind';  % Divide data using specified indices
        net.divideMode = 'time';  % Divide up every sample
        %training_years=3;
        %validation_years=3;
        test_years=9-training_years-validation_years;
        if DayHour==1
            net.divideParam.trainInd = 1:training_years*365;
            net.divideParam.valInd = (training_years*365+1):((training_years+validation_years)*365);
            net.divideParam.testInd = ((training_years+validation_years)*365+1):((training_years+validation_years+test_years)*365)-2;
        elseif DayHour==2
            net.divideParam.trainInd = 1:training_years*365*48;
            net.divideParam.valInd = (training_years*365*48+1):((training_years+validation_years)*365)*48;
            net.divideParam.testInd = ((training_years+validation_years)*365*48+1):((training_years+validation_years+test_years)*365)*48-2;
        end
        % Choose a Performance Function
        % For a list of all performance functions type: help nnperformance
        net.performFcn = 'mse';  % Mean Squared Error
        
        % Choose Plot Functions
        % For a list of all plot functions type: help nnplot
        net.plotFcns = {'plotperform','plottrainstate', 'ploterrhist', ...
            'plotregression', 'plotresponse', 'ploterrcorr', 'plotinerrcorr'};
        
        % Train the Network
        net.trainParam.showWindow=0;
        [net,tr] = train(net,x,t,xi,ai);
        
        
        
        
        
        
        % Test the Network
        %y = net(x,xi,ai);
        y = sim(net,x,xi,ai);
        e = gsubtract(t,y);
        performance_loop(i) = perform(net,t,y);
        
        ts_loop{i}=t;
        simOut_loop{i}=y;
        
        train_ts_loop{i}=t(net.divideParam.trainInd);
        train_simOut_loop{i} =y(net.divideParam.trainInd);
        valid_ts_loop{i}=t(net.divideParam.valInd);
        valid_simOut_loop{i} =y(net.divideParam.valInd);
        test_ts_loop{i}=t(net.divideParam.testInd);
        test_simOut_loop{i}=y(net.divideParam.testInd);

end

[performance,I] = min(performance_loop);
performance
ts             =ts_loop{I};
simOut         =simOut_loop{I};
train_ts       = train_ts_loop{I};
train_simOut   = train_simOut_loop{I};
valid_ts       = valid_ts_loop{I} ;
valid_simOut   = valid_simOut_loop{I};
test_ts        = test_ts_loop{I};
test_simOut    = test_simOut_loop{I};


%figure, plotresponse(t,y)

%figure, plotresponse(t(net.divideParam.trainInd),'Training',y(net.divideParam.trainInd))
%figure, plotresponse(t(net.divideParam.valInd),'Validation',y(net.divideParam.valInd))
%figure, plotresponse(t(net.divideParam.testInd),'Test',y(net.divideParam.testInd))


end
