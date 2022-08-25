public class SINE_2
{
 SinOsc sine_2 => dac;
 0 => sine_2.gain;

    public void stop()
    {
        0 => sine_2.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => sine_2.freq;
        if (gain > 1)
        {
            0.9 => sine_2.gain;
        }
        else
        {
            gain => sine_2.gain;
        }
    }
}