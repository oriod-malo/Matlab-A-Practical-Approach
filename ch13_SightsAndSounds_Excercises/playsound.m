function playsound(caind,varargin)

% The following function playsound below plays one of the built-in 
% sounds. The function has a cell array that stores the names. When the
% function is called, an integer is passed, which is an index into this  
% cell array indicating the sound to be played.

% The default is ‘train’, so if the 
% user passes an invalid index, the default is used. 
% The appropriate MAT-file is loaded.

% If the user passes a second argument, it is the frequency
% at which the sound should be played (otherwise, the default frequency 
% is used). The function prints what sound is about to be played and at 
% which frequency, and then actually plays this sound.

% You are to fill in 
% the rest of the following function. Here are examples of calling it (you 
% can’t hear it here, but the sound will be played!)
% >> playsound(-4)
% You are about to hear train at frequency 8192.0
% >> playsound(2)
% You are about to hear gong at frequency 8192.0
% >> playsound(3,8000)
% You are about to hear laughter at frequency 8000.0


    soundarray = {'chirp','gong','laughter','splat','train'};
    if caind < 1 || caind > length(soundarray)
        caind = length(soundarray);
    end
    mysound = soundarray{caind};
    eval(['load ' mysound])
    
    if nargin==2
        Fs = varargin{1};
    end
    fprintf('You are about to hear %s at frequency %.1f\n',...
        mysound,Fs);
    sound(y,Fs)
end