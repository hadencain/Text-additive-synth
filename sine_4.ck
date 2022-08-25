public class SINE_4
{
 SinOsc sine_4 => dac;
 0 => sine_4.gain;

    public void stop()
    {
        0 => sine_4.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => sine_4.freq;
        if (gain > 1)
        {
            0.9 => sine_4.gain;
        }
        else
        {
            gain => sine_4.gain;
        }
    }
}