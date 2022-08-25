public class SQR_4
{
 SqrOsc sqr_4 => dac;
 0 => sqr_4.gain;

 int frequency;

    public void stop()
    {
        0 => sqr_4.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => sqr_4.freq;
        if (gain > 1)
        {
            0.9 => sqr_4.gain;
        }
        else
        {
            gain => sqr_4.gain;
        }
    }
}