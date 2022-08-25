public class SAW_2
{
 SawOsc saw_2 => dac;
 0 => saw_2.gain;

 int frequency;

    public void stop()
    {
        0 => saw_2.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => saw_2.freq;
        if (gain > 1)
        {
            0.9 => saw_2.gain;
        }
        else
        {
            gain => saw_2.gain;
        }
    }
}