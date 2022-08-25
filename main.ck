//intiialize text area
ConsoleInput in;
StringTokenizer tok;
//start text area
spork ~ messageListen();


//Voice Classes
 SINE_1 sine_1;
 SINE_2 sine_2;
 SINE_3 sine_3;
 SINE_4 sine_4;
 TRI_1 tri_1;
 TRI_2 tri_2;
 TRI_3 tri_3;
 TRI_4 tri_4;
 SQR_1 sqr_1;
 SQR_2 sqr_2;
 SQR_3 sqr_3;
 SQR_4 sqr_4;
 SAW_1 saw_1;
 SAW_2 saw_2;
 SAW_3 saw_3;
 SAW_4 saw_4;


//adding files someday? hopefully to just run "main"
// Machine.add( "SINE_1" ) => class sine_1;
// Machine.add( "SINE_2" ) => class sine_2;
// Machine.add( "SINE_3" ) => class sine_3;
// Machine.add( "SINE_4" ) => class sine_4;
// Machine.add( "TRI_1" ) => class tri_1;
// Machine.add( "TRI_2" ) => class tri_2;
// Machine.add( "TRI_3" ) => class tri_3;
// Machine.add( "TRI_4" ) => class tri_4;
// Machine.add( "SQR_1" ) => class sqr_1;
// Machine.add( "SQR_2" ) => class sqr_2;
// Machine.add( "SQR_3" ) => class sqr_3;
// Machine.add( "SQR_4" ) => class sqr_4;
// Machine.add( "SAW_1" ) => class saw_1;
// Machine.add( "SAW_2" ) => class saw_2;
// Machine.add( "SAW_3" ) => class saw_3;
// Machine.add( "SAW_4" ) => class saw_4;


//---------------------------------Control Functions----------------------------------
//read user input. Identify then send to 'commandRouter'
fun void messageListen()
{
    while (true)
    {
        in.prompt("(voice, id, freq, gain%):") => now;
        while (in.more())
        {//parser
            tok.set(in.getLine());
            tok.next() => string voice;
            tok.next() => string id;
            tok.next() => string Infrequency;
            tok.next() => string Ingain;
            tok.next() => string Inrange;
            commandRouter(voice, id, Infrequency, Ingain, Inrange);
        }
    }
}

fun dur commandRouter(string voice, string id, string Infrequency, string Ingain, string Inrange)
{

    Std.atof(Infrequency) => float frequency;
    {//The most IF statements ever because I wanted note-octave strings for chord building (480 lines collapsed)
        if (Infrequency == "c0")
        {
            16.35 => frequency;
        }
        if (Infrequency == "c#0")
        {
            17.32 => frequency;
        }
        if (Infrequency == "d0")
        {
            17.35 => frequency;
        }
        if (Infrequency == "d#0")
        {
            19.45 => frequency;
        }
        if (Infrequency == "e0")
        {
            20.60 => frequency;
        }
        if (Infrequency == "f0")
        {
            21.83 => frequency;
        }
        if (Infrequency == "f#0")
        {
            23.12 => frequency;
        }
        if (Infrequency == "g0")
        {
            24.5 => frequency;
        }
        if (Infrequency == "g#0")
        {
            25.96 => frequency;
        }if (Infrequency == "a0")
        {
            27.5 => frequency;
        }
        if (Infrequency == "a#0")
        {
            29.14 => frequency;
        }
        if (Infrequency == "b0")
        {
            30.87 => frequency;
        }
        if (Infrequency == "c1")
        {
            32.7 => frequency;
        }
        if (Infrequency == "c#1")
        {
            34.65 => frequency;
        }
        if (Infrequency == "d1")
        {
            36.71 => frequency;
        }
        if (Infrequency == "d#1")
        {
            38.89 => frequency;
        }
        if (Infrequency == "e1")
        {
            41.2 => frequency;
        }
        if (Infrequency == "f1")
        {
            43.65 => frequency;
        }
        if (Infrequency == "f#1")
        {
            46.25 => frequency;
        }
        if (Infrequency == "g1")
        {
            49 => frequency;
        }
        if (Infrequency == "g#1")
        {
            51.91 => frequency;
        }
        if (Infrequency == "a1")
        {
            55 => frequency;
        }
        if (Infrequency == "a#1")
        {
            58.27 => frequency;
        }
        if (Infrequency == "b1")
        {
            61.74 => frequency;
        }
        if (Infrequency == "c2")
        {
            65.41 => frequency;
        }
        if (Infrequency == "c#2")
        {
            69.3 => frequency;
        }
        if (Infrequency == "d2")
        {
            73.42 => frequency;
        }
        if (Infrequency == "d#2")
        {
            77.8 => frequency;
        }
        if (Infrequency == "e2")
        {
            83.41 => frequency;
        }
        if (Infrequency == "f2")
        {
            87.31 => frequency;
        }
        if (Infrequency == "f#2")
        {
            92.5 => frequency;
        }
        if (Infrequency == "g2")
        {
            98 => frequency;
        }
        if (Infrequency == "g#2")
        {
            103.83 => frequency;
        }
        if (Infrequency == "a2")
        {
            110 => frequency;
        }
        if (Infrequency == "a#2")
        {
            116.54 => frequency;
        }
        if (Infrequency == "b2")
        {
            123.47 => frequency;
        }
        if (Infrequency == "c3")
        {
            130.81 => frequency;
        }
        if (Infrequency == "c#3")
        {
            138.59 => frequency;
        }
        if (Infrequency == "d3")
        {
            146.83 => frequency;
        }
        if (Infrequency == "d#3")
        {
            155.56 => frequency;
        }
        if (Infrequency == "e3")
        {
            164.81 => frequency;
        }
        if (Infrequency == "f3")
        {
            174.61 => frequency;
        }
        if (Infrequency == "f#3")
        {
            185 => frequency;
        }
        if (Infrequency == "g3")
        {
            196 => frequency;
        }
        if (Infrequency == "g#3")
        {
            207.65 => frequency;
        }
        if (Infrequency == "a3")
        {
            220 => frequency;
        }
        if (Infrequency == "a#3")
        {
            233.08 => frequency;
        }
        if (Infrequency == "b3")
        {
            246.94 => frequency;
        }
        if (Infrequency == "c4")
        {
            261.63 => frequency;
        }
        if (Infrequency == "c#4")
        {
            277.17 => frequency;
        }
        if (Infrequency == "d4")
        {
            293.66 => frequency;
        }
        if (Infrequency == "d#4")
        {
            311.13 => frequency;
        }
        if (Infrequency == "e4")
        {
            329.63 => frequency;
        }
        if (Infrequency == "f4")
        {
            349.23 => frequency;
        }
        if (Infrequency == "f#4")
        {
            369.99 => frequency;
        }
        if (Infrequency == "g4")
        {
            392 => frequency;
        }
        if (Infrequency == "g#4")
        {
            415.3 => frequency;
        }
        if (Infrequency == "a4")
        {
            440 => frequency;
        }
        if (Infrequency == "a#4")
        {
            466.16 => frequency;
        }
        if (Infrequency == "b4")
        {
            493.88 => frequency;
        }
        if (Infrequency == "c5")
        {
            523.25 => frequency;
        }
        if (Infrequency == "c#5")
        {
            554.37 => frequency;
        }
        if (Infrequency == "d5")
        {
            587.33 => frequency;
        }
        if (Infrequency == "d#5")
        {
            622.25 => frequency;
        }
        if (Infrequency == "e5")
        {
            659.25 => frequency;
        }
        if (Infrequency == "f5")
        {
            698.46 => frequency;
        }
        if (Infrequency == "f#5")
        {
            739.99 => frequency;
        }
        if (Infrequency == "g5")
        {
            783.99 => frequency;
        }
        if (Infrequency == "g#5")
        {
            830.61 => frequency;
        }
        if (Infrequency == "a5")
        {
            880 => frequency;
        }
        if (Infrequency == "a#5")
        {
            932.33 => frequency;
        }
        if (Infrequency == "b5")
        {
            987.77 => frequency;
        }
        if (Infrequency == "c5")
        {
            523.25 => frequency;
        }
        if (Infrequency == "c#5")
        {
            554.37 => frequency;
        }
        if (Infrequency == "d5")
        {
            587.33 => frequency;
        }
        if (Infrequency == "d#5")
        {
            622.25 => frequency;
        }
        if (Infrequency == "e5")
        {
            659.25 => frequency;
        }
        if (Infrequency == "f5")
        {
            698.46 => frequency;
        }
        if (Infrequency == "f#5")
        {
            739.99 => frequency;
        }
        if (Infrequency == "g5")
        {
            783.99 => frequency;
        }
        if (Infrequency == "g#5")
        {
            830.61 => frequency;
        }
        if (Infrequency == "a5")
        {
            880 => frequency;
        }
        if (Infrequency == "a#5")
        {
            932.33 => frequency;
        }
        if (Infrequency == "b5")
        {
            987.77 => frequency;
        }
        if (Infrequency == "c6")
        {
            1046.5 => frequency;
        }
        if (Infrequency == "c#6")
        {
            1108.73 => frequency;
        }
        if (Infrequency == "d6")
        {
            1174.66 => frequency;
        }
        if (Infrequency == "d#6")
        {
            1244.51 => frequency;
        }
        if (Infrequency == "e6")
        {
            1318.51 => frequency;
        }
        if (Infrequency == "f6")
        {
            1396.91 => frequency;
        }
        if (Infrequency == "f#6")
        {
            1479.98 => frequency;
        }
        if (Infrequency == "g6")
        {
            1567.98 => frequency;
        }
        if (Infrequency == "g#6")
        {
            1661.22 => frequency;
        }
        if (Infrequency == "a6")
        {
            1760 => frequency;
        }
        if (Infrequency == "a#6")
        {
            932.33 => frequency;
        }
        if (Infrequency == "b6")
        {
            987.77 => frequency;
        }
        if (Infrequency == "c7")
        {
            2093 => frequency;
        }
        if (Infrequency == "c#7")
        {
            2217.46 => frequency;
        }
        if (Infrequency == "d7")
        {
            2349.32 => frequency;
        }
        if (Infrequency == "d#7")
        {
            2469.02 => frequency;
        }
        if (Infrequency == "e7")
        {
            2637.02 => frequency;
        }
        if (Infrequency == "f7")
        {
            2793.83 => frequency;
        }
        if (Infrequency == "f#7")
        {
            2959.96 => frequency;
        }
        if (Infrequency == "g7")
        {
            3135.96 => frequency;
        }
        if (Infrequency == "g#7")
        {
            3322.44 => frequency;
        }
        if (Infrequency == "a7")
        {
            3520 => frequency;
        }
        if (Infrequency == "a#7")
        {
            3729.31 => frequency;
        }
        if (Infrequency == "b7")
        {
            3951.07 => frequency;
        }
        if (Infrequency == "c8")
        {
            4186.01 => frequency;
        }
        if (Infrequency == "c#8")
        {
            4434.92 => frequency;
        }
        if (Infrequency == "d8")
        {
            4698.63 => frequency;
        }
        if (Infrequency == "d#8")
        {
            4978.03 => frequency;
        }
        if (Infrequency == "e8")
        {
            5274.04 => frequency;
        }
        if (Infrequency == "f8")
        {
            5587.65 => frequency;
        }
        if (Infrequency == "f#8")
        {
            5919.91 => frequency;
        }
        if (Infrequency == "g8")
        {
            6271.93 => frequency;
        }
        if (Infrequency == "g#8")
        {
            6644.88 => frequency;
        }
        if (Infrequency == "a8")
        {
            7040 => frequency;
        }
        if (Infrequency == "a#8")
        {
            7458.62 => frequency;
        }
        if (Infrequency == "b8")
        {
            7902.13 => frequency;
        }
    }
    

    //gain conversion
    ((Std.atof(Ingain)/100)/2) => float gain;
    Std.atoi(Ingain) => int startingPitch;
    Std.atoi(Inrange) => int bendRange;

    //sine target
    if (voice == "sine" && id == "1")
    {
        if (Infrequency == "clear");
        {sine_1.stop();}
        if (Infrequency == "fall");
        {spork ~ sine_1.fall(startingPitch,bendRange);}
        sine_1.play(frequency, gain);
    }
    else if (voice == "sine" && id == "2")
    {
        if (Infrequency == "clear")
        {sine_2.stop();}
        sine_2.play(frequency, gain);
    }
    else if (voice == "sine" && id == "3")
    {
        if (Infrequency == "clear");
        {sine_3.stop();}
        sine_3.play(frequency, gain);
    }
    else if (voice == "sine" && id =="4")
    {
        if (Infrequency == "clear")
        {sine_4.stop();}
        sine_4.play(frequency, gain);
    }

    //triangle target
    else if (voice == "triangle" && id == "1")
    {
        if (Infrequency == "clear");
        {tri_1.stop();}
        tri_1.play(frequency, gain);
    }
    else if (voice == "triangle" && id == "2")
    {
        if (Infrequency == "clear")
        {tri_2.stop();}
        tri_2.play(frequency, gain);
    }
    else if (voice == "triangle" && id == "3")
    {
        if (Infrequency == "clear");
        {tri_3.stop();}
        tri_3.play(frequency, gain);
    }
    else if (voice == "triangle" && id =="4")
    {
        if (Infrequency == "clear")
        {tri_4.stop();}
        tri_4.play(frequency, gain);
    }

    //square target
    else if (voice == "square" && id == "1")
    {
        if (Infrequency == "clear");
        {sqr_1.stop();}
        sqr_1.play(frequency, gain);
    }
    else if (voice == "square" && id == "2")
    {
        if (Infrequency == "clear")
        {sqr_2.stop();}
        sqr_2.play(frequency, gain);
    }
    else if (voice == "square" && id == "3")
    {
        if (Infrequency == "clear");
        {sqr_3.stop();}
        sqr_3.play(frequency, gain);
    }
    else if (voice == "square" && id =="4")
    {
        if (Infrequency == "clear")
        {sqr_4.stop();}
        sqr_4.play(frequency, gain);
    }

    //saw target
    else if (voice == "saw" && id == "1")
    {
        if (Infrequency == "clear");
        {saw_1.stop();}
        saw_1.play(frequency, gain);
    }
    else if (voice == "saw" && id == "2")
    {
        if (Infrequency == "clear")
        {saw_2.stop();}
        saw_2.play(frequency, gain);
    }
    else if (voice == "saw" && id == "3")
    {
        if (Infrequency == "clear");
        {saw_3.stop();}
        saw_3.play(frequency, gain);
    }
    else if (voice == "saw" && id =="4")
    {
        if (Infrequency == "clear")
        {saw_4.stop();}
        saw_4.play(frequency, gain);
    }
    else if (voice == "preset1")
    {
        sine_1.play(200, 0.01);
        sine_2.play(250, 0.01);
        sine_3.play(300, 0.01);
        sine_4.play(400, 0.01);
        tri_1.play(186, 0.01);
        tri_2.play(246, 0.01);
        tri_3.play(298, 0.01);
        tri_4.play(396, 0.01);
        sqr_1.play(197, 0);
        sqr_2.play(248, 0.01);
        sqr_3.play(297, 0.01);
        sqr_4.play(395, 0.01);
        saw_1.play(197, 0);
        saw_2.play(198, 0);
        saw_3.play(147, 0.01);
        saw_4.play(187, 0.01);
    }
    else if (voice == "preset1b")
    {

        sine_1.play((200 + (Math.random2(0, 2)-4)), 0.01);
        sine_2.play((250 + (Math.random2(0, 2)-4)), 0.01);
        sine_3.play((300 + (Math.random2(0, 2)-4)), 0.01);
        sine_4.play((400 + (Math.random2(0, 2)-4)), 0.01);
        tri_1.play((198 + (Math.random2(0, 2)-4)), 0.01);
        tri_2.play((246 + (Math.random2(0, 2)-4)), 0.01);
        tri_3.play((298 + (Math.random2(0, 2)-4)), 0);
        tri_4.play((396 + (Math.random2(0, 2)-4)), 0);
        sqr_1.play((197 + (Math.random2(0, 2)-4)), 0);
        sqr_2.play((247 + (Math.random2(0, 2)-4)), 0.01);
        sqr_3.play((297 + (Math.random2(0, 2)-4)), 0.01);
        sqr_4.play((395 + (Math.random2(0, 2)-4)), 0.01);
        saw_1.play((197 + (Math.random2(0, 2)-4)), 0);
        saw_2.play((198 + (Math.random2(0, 2)-4)), 0);
        saw_3.play((147 + (Math.random2(0, 2)-4)), 0.02);
        saw_4.play((187 + (Math.random2(0, 2)-4)), 0.02);
    }
    else if (voice == "preset1c")
    {
        sine_1.play((200/2), 0.01);
        sine_2.play((250/2), 0.01);
        sine_3.play((300/2), 0.01);
        sine_4.play((400/2), 0.01);
        tri_1.play((198/2), 0.02);
        tri_2.play((246/2), 0.02);
        tri_3.play((298/2), 0);
        tri_4.play((396/2), 0);
        sqr_1.play((197/2), 0);
        sqr_2.play((247/2), 0.01);
        sqr_3.play((297/2), 0.01);
        sqr_4.play((395/2), 0.01);
        saw_1.play((197/2), 0);
        saw_2.play((198/2), 0);
        saw_3.play((147/2), 0.02);
        saw_4.play((187/2), 0.02);
    }
    else if (voice == "preset2")
    {
        sine_1.play(6000, 0.02);
        sine_2.play(6003, 0.01);
        sine_3.play(6005, 0.01);
        sine_4.play(6012, 0.01);
        tri_1.play(5099, 0.01);
        tri_2.play(4929, 0.01);
        tri_3.play(5069, 0.007);
        tri_4.play(50467, 0.01);
        sqr_1.play(frequency, 0);
        sqr_2.play(frequency, 0);
        sqr_3.play(frequency, 0);
        sqr_4.play(frequency, 0);
        saw_1.play(frequency, 0);
        saw_2.play(frequency, 0);
        saw_3.play(frequency, 0);
        saw_4.play(frequency, 0);
    }
    else if (voice == "preset2b")
    {
        sine_1.play(6000, 0.02);
        sine_2.play(6003, 0.01);
        sine_3.play(6002, 0.01);
        sine_4.play(6011, 0.01);
        tri_1.play(5093, 0.01);
        tri_2.play(4921, 0.01);
        tri_3.play(5069, 0.007);
        tri_4.play(50467, 0.01);
        sqr_1.play(frequency, 0);
        sqr_2.play(frequency, 0);
        sqr_3.play(frequency, 0);
        sqr_4.play(frequency, 0);
        saw_1.play(frequency, 0);
        saw_2.play(frequency, 0);
        saw_3.play(frequency, 0);
        saw_4.play(frequency, 0);
    }
    else if (voice == "preset2c")
    {
        sine_1.play(6000, 0.02);
        sine_2.play(6001, 0.01);
        sine_3.play(6007, 0.01);
        sine_4.play(6024, 0.01);
        tri_1.play(5089, 0.01);
        tri_2.play(4924, 0.01);
        tri_3.play(5074, 0.007);
        tri_4.play(50467, 0.01);
        sqr_1.play(frequency, 0);
        sqr_2.play(frequency, 0);
        sqr_3.play(frequency, 0);
        sqr_4.play(frequency, 0);
        saw_1.play(frequency, 0);
        saw_2.play(frequency, 0);
        saw_3.play(frequency, 0);
        saw_4.play(frequency, 0);
    }
    else if (voice == "preset3")
    {
        sine_1.play(200, 0.03);
        sine_2.play(204, 0.01);
        sine_3.play(209, 0.01);
        sine_4.play(216, 0.01);
        tri_1.play(48, 0.03);
        tri_2.play(50, 0.02);
        tri_3.play(98, 0.02);
        tri_4.play(99, 0.02);
        sqr_1.play(frequency, 0);
        sqr_2.play(frequency, 0);
        sqr_3.play(frequency, 0);
        sqr_4.play(frequency, 0);
        saw_1.play(200, 0.01);
        saw_2.play(Math.random2(40,80), 0.01);
        saw_3.play(45, 0.01);
        saw_4.play(399, 0.007);
    }
    else if (voice == "clear")
    {
        sine_1.stop();
        sine_2.stop();
        sine_3.stop();
        sine_4.stop();
        tri_1.stop();
        tri_2.stop();
        tri_3.stop();
        tri_4.stop();
        sqr_1.stop();
        sqr_2.stop();
        sqr_3.stop();
        sqr_4.stop();
        saw_1.stop();
        saw_2.stop();
        saw_3.stop();
        saw_4.stop();
        
    }
}
 

1::week => now;