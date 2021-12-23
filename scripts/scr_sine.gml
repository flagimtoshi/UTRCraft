#define scr_sine
/*function sine_wave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}

function sine_between(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum);
    var amplitude = maximum - midpoint;
    return sine_wave(time, period, amplitude, midpoint);
}

#define sine_wave
///sine_wave(time, period, amplitude, midpoint);
return sin(argument0 * 2 * pi / argument1) * argument2 + argument3;

#define sine_between
///sine_between(time, period, minimum, maximum);
var midpoint = mean(argument2, argument3);
var amplitude = argument2 - midpoint;
return sine_wave(argument0, argument1, amplitude, midpoint);