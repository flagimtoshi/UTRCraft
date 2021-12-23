file_ = file_text_open_read(argument0);
var i_ = 0;
var numbers_=0;
while !file_text_eof(file_)
{
    tmpspls_[i_++] = file_text_read_string(file_);
    file_text_readln(file_);
    numbers_+=1;
}
randomize();
file_text_close(file_);
Text_=tmpspls_[irandom(array_length_1d(tmpspls_) - 1)];
return  Text_;
