public class SINE_1
{
 SinOsc sine_1 => dac;
 
 0 => sine_1.gain;

 
    public void fall(int frequency, int Rangein)
    {
        1::ms => dur moment;
        (Rangein-frequency) => int range;
        {
            for (range  => int i; i > 0; i--)
            {
                (frequency + i) => sine_1.freq;
                0.1 => sine_1.gain;
                moment => now;
            }
        }
    }

    public void stop()
    {
        0 => sine_1.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => sine_1.freq;
        if (gain > 1)
        {
            0.9 => sine_1.gain;
        }
        else
        {
            gain => sine_1.gain;
        }
    }

}