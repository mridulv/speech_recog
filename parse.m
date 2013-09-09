s = fileread('htk_crops_train.transcription.txt');
a = textscan(s,'%s','delimiter','\n');
po = 1;
i = 10;
k = {};
for i = po:length(a{1,1})
    m = textscan(a{1,1}{i,1},'%s','delimiter','_');
    n = textscan(a{1,1}{i,1},'%s','delimiter','.')
    st = strcat(n{1,1}{1,1},'.wav');
    str = '';
    for l = 1:(length(m{1,1})-2)
        str = strcat(str,'_',m{1,1}{l,1});
    end
    st
    str
    k{i,1} = str;
    k{i,2} = st;
end

    