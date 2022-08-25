public class TRI_2
{
 TriOsc tri_2 => dac;
 0 => tri_2.gain;

    public void stop()
    {
        0 => tri_2.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => tri_2.freq;
        if (gain > 1)
        {
            0.9 => tri_2.gain;
        }
        else
        {
            gain => tri_2.gain;
        }
    }
}