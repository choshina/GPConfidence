classdef Parser < handle
    
    properties
        filename
        gpr
        
        vars 
        ranges
        
        lowRob
        trainX
    end
    
    methods
        function this = Parser(filename, num)
            this.filename = filename;
            load(filename, 'logs');
            load(filename, 'vars');
            load(filename, 'ranges');
            
            this.vars = vars;
            this.ranges = ranges;
            
            xd = logs.X_log(:, 1:num)';
            
            LBt = ranges(:, 1)';
            UBt = ranges(:, 2)';
            xd_n = (xd - LBt)./(UBt - LBt);
            
            this.trainX = xd_n;
            yd = logs.obj_log(1:num)';
            
            this.lowRob = min(yd);
            
            this.gpr = fitrgp(xd_n, yd, 'KernelFunction','squaredexponential', 'FitMethod', 'exact', 'PredictMethod', 'exact', 'sigma', 0.1, 'verbose',1);
            gpr = this.gpr;
            save(strrep(filename, '.mat', '_gpr.mat'), 'gpr');
        end
        
        
    end
    
end
