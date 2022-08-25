public class SQR_1
{
 SqrOsc sqr_1 => dac;
 0 => sqr_1.gain;

    public void stop()
    {
        0 => sqr_1.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => sqr_1.freq;
        if (gain > 1)
        {
            0.9 => sqr_1.gain;
        }
        else
        {
            gain => sqr_1.gain;
        }
    }
}