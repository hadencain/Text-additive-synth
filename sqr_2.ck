public class SQR_2
{
 SqrOsc sqr_2 => dac;
 0 => sqr_2.gain;


    public void stop()
    {
        0 => sqr_2.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => sqr_2.freq;
        if (gain > 1)
        {
            0.9 => sqr_2.gain;
        }
        else
        {
            gain => sqr_2.gain;
        }
    }
}