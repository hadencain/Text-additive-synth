public class TRI_4
{
 TriOsc tri_4 => dac;
 0 => tri_4.gain;

    public void stop()
    {
        0 => tri_4.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => tri_4.freq;
        if (gain > 1)
        {
            0.9 => tri_4.gain;
        }
        else
        {
            gain => tri_4.gain;
        }
    }
}