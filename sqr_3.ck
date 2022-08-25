public class SQR_3
{
 SqrOsc sqr_3 => dac;
 0 => sqr_3.gain;

 int frequency;

    public void stop()
    {
        0 => sqr_3.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => sqr_3.freq;
        if (gain > 1)
        {
            0.9 => sqr_3.gain;
        }
        else
        {
            gain => sqr_3.gain;
        }
    }
}