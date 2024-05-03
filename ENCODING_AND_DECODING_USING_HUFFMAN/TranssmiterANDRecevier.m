clc;clear ;close all;

%     OUT = instrhwinfo('Bluetooth','HC-05');
%     device = Bluetooth('HC-05', 1);
%     disp('Device is Connected ');

%     while(1)
    
    [msg_binary,codebook,msg_length,unique_chars,num_unique_chars,chars_prop] = Transsmiter();
    disp('Symbols Of The Message : ');
    disp(unique_chars);
    
    disp('Proppabilites Of Each Symbol : ');
    disp(chars_prop);
    
    disp('Code For Each Symbol : ');
    disp(codebook);

    disp('Message After Encoding In Binary : ');
    disp(msg_binary);
    
    decoded_msg = Recevier(msg_binary,codebook,unique_chars);
    disp('Message After Decoding In Binary : ');
    disp(decoded_msg);

    
%     
%     fopen(device);
%     for i=1:length(unique_chars)
%         fwrite(device,unique_chars(i));
%     end
%     fclose(device);
%     disp('Symbols Are Transmitted Successfully');
%     
%     fopen(device);
%     for i=1:length(codebook)
%         fwrite(device,cell2mat(codebook(i)));
%         fwrite(device,',')
%     end
%     fclose(device);
%     disp('Symbol Codes Are Transmitted Successfully');
%     
%     fopen(device);
%     fwrite(device,msg_binary);
%     fclose(device);
%     disp('Binary Message Are Transmitted Successfully');
%     
%     end