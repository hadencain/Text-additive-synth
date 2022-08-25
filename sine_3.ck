public class SINE_3
{
 SinOsc sine_3 => dac;
 0 => sine_3.gain;

    public void stop()
    {
        0 => sine_3.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => sine_3.freq;
        if (gain > 1)
        {
            0.9 => sine_3.gain;
        }
        else
        {
            gain => sine_3.gain;
        }
    }
}