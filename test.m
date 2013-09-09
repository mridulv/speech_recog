    clear all; close all; clc;  

    load('data.mat');
    
    % Define variables
    Tw = 25;                % analysis frame duration (ms)
    Ts = 10;                % analysis frame shift (ms)
    alpha = 0.97;           % preemphasis coefficient
    M = 20;                 % number of filterbank channels 
    C = 12;                 % number of cepstral coefficients
    L = 22;                 % cepstral sine lifter parameter
    LF = 300;               % lower frequency limit (Hz)
    HF = 3700;              % upper frequency limit (Hz)
    a = [];
    for i = 1:length(k)
            wav_file = k{i,2};  % input audio filename
            fprintf('iteration is %d' , i);

            % Read speech samples, sampling rate and precision from file
            [ speech, fs, nbits ] = wavread( wav_file );


            % Feature extraction (feature vectors as columns)
            [ MFCCs, FBEs, frames ] = ...
                            mfcc( speech, fs, Tw, Ts, alpha, @hamming, [LF HF], M, C+1, L );
                        
            calc = sum(MFCCs,2)/length(MFCCs)
            a = [a calc];

    end
            


% EOF
