function [msg_binary,codebook,msg_length,unique_chars,num_unique_chars,chars_prop] = Transsmiter()

[msg,msg_length] = getMsg();

[unique_chars,num_unique_chars] = findChars(msg);

chars_prop = findMsgProps(msg,msg_length,unique_chars,num_unique_chars);

codebook=huffman_encoding(chars_prop);

% codebook=cell2mat(codebook)

msg_binary = msgInBinary(msg,msg_length,codebook,unique_chars);

end