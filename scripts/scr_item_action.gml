thiing=string(argument0)
switch(thiing){
case "Snek":
audio_play_sound(snd_claudia,11,0);
break;
case "100Tokens":
audio_play_sound(snd_coin,11,0);
give_credit( 100 );
break;
case "500Tokens":
audio_play_sound(snd_coin,11,0);
give_credit( 500 );
break;

default:
audio_play_sound(snd_coin,11,0);
give_credit( 100 );
break;

case "put on":
audio_play_sound(snd_claudia,11,0);
break;
}
