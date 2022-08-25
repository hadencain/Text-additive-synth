public class TRI_1
{
 TriOsc tri_1 => dac;
 0 => tri_1.gain;

    public void stop()
    {
        0 => tri_1.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => tri_1.freq;
        if (gain > 1)
        {
            0.9 => tri_1.gain;
        }
        else
        {
            gain => tri_1.gain;
        }
    }
}