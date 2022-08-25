public class TRI_3
{
 TriOsc tri_3 => dac;
 0 => tri_3.gain;

    public void stop()
    {
        0 => tri_3.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => tri_3.freq;
        if (gain > 1)
        {
            0.9 => tri_3.gain;
        }
        else
        {
            gain => tri_3.gain;
        }
    }
}