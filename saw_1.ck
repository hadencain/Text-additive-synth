public class SAW_1
{
 SawOsc saw_1 => dac;
 0 => saw_1.gain;

 int frequency;

    public void stop()
    {
        0 => saw_1.gain; 
    }

    public void play(float frequency,float gain)
    {
        frequency => saw_1.freq;
        if (gain > 1)
        {
            0.9 => saw_1.gain;
        }
        else
        {
            gain => saw_1.gain;
        }
    }
}