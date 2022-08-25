public class SAW_4
{
 SawOsc saw_4 => dac;
 0 => saw_4.gain;

    public void stop()
    {
        0 => saw_4.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => saw_4.freq;
        if (gain > 1)
        {
            0.9 => saw_4.gain;
        }
        else
        {
            gain => saw_4.gain;
        }
    }
}