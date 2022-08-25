public class SAW_3
{
 SawOsc saw_3 => dac;
 0 => saw_3.gain; 

    public void stop()
    {
        0 => saw_3.gain; 
    }


    public void play(float frequency,float gain)
    {
        frequency => saw_3.freq;
        if (gain > 1)
        {
            0.9 => saw_3.gain;
        }
        else
        {
            gain => saw_3.gain;
        }
    }
}