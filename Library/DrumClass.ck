//
//  DrumClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Modified on 19/11/14.
//
public class Drum extends Chmusick
{
    OscOut oscout;
    FileIO rythyms;
    
    oscout.dest(this.host(),this.port());
    rythyms.open(me.dir() + "/favoriteRythyms.txt", FileIO.READ);
    
    Gain Normalizehh => Gain vol => Master;
    Gain Normalizesn => vol;
    Gain Normalizebd => vol;
    
    Gain hhgain => Normalizehh;
    Gain sngain => Normalizesn;
    Gain bdgain => Normalizebd;
    
    0.2 => Normalizehh.gain; //don't change this
    0.45 => Normalizesn.gain; //don't change this
    0.9 => Normalizebd.gain; //don't change this
    
    SndBuf Kick[36]; SndBuf Snare[36]; SndBuf HH[36];
    
    //--------samples for bass drum------//
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_1.wav" => Kick[0].read;
	me.dir() + "/Drum Kits/Electronica/Kick_Electronica_2.wav" => Kick[1].read; 
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_3.wav" => Kick[2].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_4.wav" => Kick[3].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_5.wav" => Kick[4].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_6.wav" => Kick[5].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_7.wav" => Kick[6].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_8.wav" => Kick[7].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_9.wav" => Kick[8].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_10.wav" => Kick[9].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_11.wav" => Kick[10].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_12.wav" => Kick[11].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_13.wav" => Kick[12].read; 
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_14.wav" => Kick[13].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_15.wav" => Kick[14].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_16.wav" => Kick[15].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_17.wav" => Kick[16].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_18.wav" => Kick[17].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_19.wav" => Kick[18].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_20.wav" => Kick[19].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_21.wav" => Kick[20].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_22.wav" => Kick[21].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_23.wav" => Kick[22].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_24.wav" => Kick[23].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_25.wav" => Kick[24].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_26.aiff" => Kick[25].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_27.wav" => Kick[26].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_28.wav" => Kick[27].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_29.wav" => Kick[28].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_30.wav" => Kick[29].read;
    me.dir() + "/Drum Kits/Electronica/Kick_Electronica_31.wav" => Kick[30].read;
    me.dir() + "/Drum Kits/Hip Hop/Kick (1).wav" => Kick[31].read;
    me.dir() + "/Drum Kits/Hip Hop/Kick (2).wav" => Kick[32].read;
    me.dir() + "/Drum Kits/Hip Hop/Kick (3).wav" => Kick[33].read;
    me.dir() + "/Drum Kits/Vintage Drum/kick a.wav" => Kick[34].read;
    me.dir() + "/Drum Kits/Vintage Drum/kick b.wav" => Kick[35].read;
	//??????samples for snare drum?????//
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_1.wav" => Snare[0].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_2.wav" => Snare[1].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_3.wav" => Snare[2].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_4.wav"=>  Snare[3].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_5.wav"=>  Snare[4].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_6.wav"=>  Snare[5].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_7.wav" => Snare[6].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_8.wav" => Snare[7].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_9.wav" => Snare[8].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_10.wav"=> Snare[9].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_11.wav"=> Snare[10].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_12.wav"=> Snare[11].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_13.wav"=> Snare[12].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_14.wav"=> Snare[13].read;
    me.dir() + "/Drum Kits/Electronica/Claps_Electronica_15.wav"=> Snare[14].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_1.wav" => Snare[15].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_2.wav" => Snare[16].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_3.wav" => Snare[17].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_4.wav" => Snare[18].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_5.wav" => Snare[19].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_6.wav" => Snare[20].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_7.wav" => Snare[21].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_8.wav" => Snare[22].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_9.wav" => Snare[23].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_10.wav" => Snare[24].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_11.wav" => Snare[25].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_12.wav" => Snare[26].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_13.wav" => Snare[27].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_14.wav" => Snare[28].read;
    me.dir() + "/Drum Kits/Electronica/Snare_Electronica_15.wav" => Snare[29].read;    
    me.dir() + "/Drum Kits/Hip Hop/Snare - Clap (1).wav" => Snare[30].read;
    me.dir() + "/Drum Kits/Hip Hop/Snare - Clap (2).wav" => Snare[31].read;
    me.dir() + "/Drum Kits/Hip Hop/Snare - Clap (3).wav" => Snare[32].read;
    me.dir() + "/Drum Kits/Hip Hop/Snare - Clap (4).wav" => Snare[33].read;
    me.dir() + "/Drum Kits/Vintage Drum/snare a.wav" => Snare[34].read;
    me.dir() + "/Drum Kits/Vintage Drum/snare b.wav" => Snare[35].read;
    //??????sample for hhSounds?????????//
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_1.wav" => HH[0].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_2.wav" => HH[1].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_3.wav" => HH[2].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_4.wav" => HH[3].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_5.wav" => HH[4].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_6.wav" => HH[5].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_7.wav" => HH[6].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_8.wav" => HH[7].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_9.wav" => HH[8].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_10.wav" => HH[9].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_11.wav" => HH[10].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_12.wav" => HH[11].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_13.wav" => HH[12].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_14.wav" => HH[13].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_15.wav" => HH[14].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_16.wav" => HH[15].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_17.wav" => HH[16].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_18.wav" => HH[17].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_19.wav" => HH[18].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_20.wav" => HH[19].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_21.wav" => HH[20].read;       
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_22.wav" => HH[21].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_23.wav" => HH[22].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_24.wav" => HH[23].read;    
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_25.wav" => HH[24].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_26.wav" => HH[25].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_27.wav" => HH[26].read;    
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_28.wav" => HH[27].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_29.wav" => HH[28].read;
    me.dir() + "/Drum Kits/Electronica/Hit_Hat_Electronica_30.wav" => HH[29].read;    
    me.dir() + "/Drum Kits/Hip Hop/Hihat - Shaker (1).wav" => HH[30].read;
    me.dir() + "/Drum Kits/Hip Hop/Hihat - Shaker (2).wav" => HH[31].read;
    me.dir() + "/Drum Kits/Hip Hop/Hihat - Shaker (3).wav" => HH[32].read;
    me.dir() + "/Drum Kits/Hip Hop/Hihat (1).wav" => HH[33].read;
    me.dir() + "/Drum Kits/Hip Hop/Hihat (2).wav" => HH[34].read;
    me.dir() + "/Drum Kits/Hip Hop/Hihat (3).wav" => HH[35].read;
	
    for(0 => int i; i < Kick.cap(); i++)
    {
        Kick[i] => bdgain;
        Kick[i].samples() => Kick[i].pos;
    }
    for(0 => int i; i < Snare.cap(); i++)
    { 
        Snare[i] => sngain;
        Snare[i].samples() => Snare[i].pos;
    }
    for(0 => int i; i < HH.cap(); i++)
    {   
        HH[i] => hhgain;
        HH[i].samples() => HH[i].pos;
    }
    
    7 => int Refill;
    
    0 => int randomSize;
    
    0 => int bdSound;
    9 => int snSound;
    8 => int hhSound;
    
    8 => int Division;
    
    [1] @=> int hhGlobal[];
    [1] @=> int snGlobal[];
    [1] @=> int bdGlobal[];
    
    int rythym[0][0]; 
	
    public float bdGain(float volum)
    {
        volum => bdgain.gain;
        return bdgain.gain();
    }
    public float bdGain()
    {
        return  bdgain.gain();
    }
    public float snGain(float volum)
    {
        volum => sngain.gain;
        return sngain.gain();
    }
    public float snGain()
    {
        return  sngain.gain();
    }
    public float hhGain(float volum)
    {
        volum => hhgain.gain;
        return hhgain.gain();
    }
    public float hhGain()
    {
        return  hhgain.gain();
    }
  
     public int subdivision(int div)
    {
        div => Division;
        return Division;
    }
    public int subdivision()
    {
        return subdivision(Division);
    }
    public int BDSound(int num)
    {
        num => bdSound;
        return bdSound;
    }
    public int BDSound()
    {
        return BDSound(bdSound);
    }
    public int SNSound(int num)
    {
        num => snSound;
        return snSound;
    }
    public int SNSound()
    {
        return SNSound(snSound);
    }
    public int HHSound(int num)
    {
        num => hhSound;
        return hhSound;
    }
    public int HHSound()
    {
        return HHSound(hhSound);
    }
    public int fillEach(int refillC)
    {
        refillC => Refill;
        return Refill;
    }
    public int fillEach()
    {
        return fillEach(Refill);
    }
    public int[][] favorite(int num)
    {
        return FavoriteArray.Drum[num];
    }
    public int[][] randomFavorite(int num)
    {
        return Array.Drum[num];
    }
    private void saveFavorite(int k[], int sn[], int hh[])
    {
        rythyms.open(me.dir() + "/favoriteRythyms.txt", FileIO.WRITE);
        rythyms.size() => rythyms.seek;
        
        for(0 => int i; i < Array.Drum.cap(); i++)
        {
            for(0 => int ii; ii < Array.Drum[i].cap(); ii++)
            {
                for(0 => int iii; iii < Array.Drum[i][ii].cap(); iii++)
                {
                    rythyms <= Array.Drum[i][ii][iii];
                    rythyms <= " ";
                }
            }
            rythyms <= "\n";
        }
        rythyms.close();
    }
    private void event(int k[],int sn[] ,int hh[])
    {   
        saveFavorite(k,sn,hh);
        [k,sn,hh] @=> rythym;
        
        Hid hi;
        HidMsg msg;
        
        0 => int device;
        
        if( me.args() ) me.arg(0) => Std.atoi => device;
        
        if( !hi.openKeyboard( device ) ) me.exit();
        <<<"Press -?- key to save random to favorites">>>;
        
        while (true)
        {
            hi => now;
            
            while( hi.recv( msg ) )
            {
                if( msg.isButtonDown())
                {
                    if( msg.which == 45)
                    {
                        saveFavorite(k,sn,hh);
                        Array.Drum << rythym;
                        <<<"Stored">>>;
                    }
                }
            }
        }
    }
    public void randomDrum()
    {
        Math.random2(0,Math.random2(0,32)) => int capacity;
        randomDrum(Division,capacity);
    }
    public void randomDrum(int capacity)
    {
        randomDrum(Division,capacity);
    }
    public void randomDrum(int div, int capacity)
    {
        rand(capacity) @=> int kick[];
        rand(capacity) @=> int snare[];
        rand(capacity) @=> int hh[];
        
        spork~ drumF(kick,snare,hh);
        spork~ event(kick,snare,hh);  
        while(true) 1::second => now;
    }
    public void bdRandomFill(int capacity)
    {
        rand(capacity) @=> int kick[];
        
        bdFill(kick);
    }
    public void hhRandomFill(int capacity)
    {
        rand(capacity) @=> int hihat[];
        
        hhFill(hihat);
    }
    public void snRandomFill(int capacity)
    {
        rand(capacity) @=> int snare[];
        
        snFill(snare);
    }
    public void randomFill(int capacity, int capHH)
    {
        rand(capacity) @=> int kick[];
        rand(capacity) @=> int hh[];
        
        fill(kick,hh);
    }
    public void randomFill(int capacity)
    {
        rand(capacity) @=> int kick[];
        rand(capacity) @=> int snare[];
        rand(capacity) @=> int hh[];
        
        fill(kick,snare,hh);
    }
    private void bdFill (int k[])
    {
        for(0 => int i; i < k.cap(); i++)
        {
            if (k[i] == 1)
            {
                0 => Kick[bdSound].pos;
				Math.random2f(0.5,1) => Kick[bdSound].gain;
            }
            Dur(convert(TEMPO),Division) => now;
        } 
    }
    private void hhFill (int hh[])
    {        
        for(0 => int i; i < hh.cap(); i++)
        {
            if (hh[i] == 1)
            {
                0 => HH[hhSound].pos;
				Math.random2f(0.5,1) => HH[hhSound].gain;
            }
            Dur(convert(TEMPO),Division) => now;
        } 
    }
    private void snFill (int sn[])
    {        
        for(0 => int i; i < sn.cap(); i++)
        {
            if (sn[i] == 1)
            {
                0 => Snare[snSound].pos;
				Math.random2f(0.5,1) => Snare[snSound].gain;
            }
            Dur(convert(TEMPO),Division) => now;
        } 
    }
    private void fill (int k[], int hh[])
    {        
        for(0 => int i; i < k.cap() && i < hh.cap(); i++)
        {
            if (k[i] == 1)
            {
                0 => Kick[bdSound].pos;
				Math.random2f(0.5,1) => Kick[bdSound].gain;
            }
            if (hh[i] == 1)
            {
                0 => HH[hhSound].pos;
				Math.random2f(0.5,1) => HH[hhSound].gain;
            }
            Dur(convert(TEMPO),Division) => now;
        } 
    }
    private void fill (int k[],int s[],int hh[])
    {        
        for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
        {
            if (k[i] == 1)
            {
                0 => Kick[bdSound].pos;
				Math.random2f(0.5,1) => Kick[bdSound].gain;
            }
            if (s[i] == 1)
            {
                0 => Snare[snSound].pos;
				Math.random2f(0.5,1) => Snare[snSound].gain;
            }
            if (hh[i] == 1)
            {
                0 => HH[hhSound].pos;
				Math.random2f(0.5,1) => HH[hhSound].gain;
            }
            Dur(convert(TEMPO),Division) => now;
        } 
    }
    //------------------set Global variables--------------------//
    public int[] bd(int bd[])
    {
        bd.size() => bdGlobal.size;
        bd @=> bdGlobal;
        return bdGlobal;
    }
    public int[] hh(int hh[])
    {
        hh.size() => hhGlobal.size;
        hh @=> hhGlobal;
        return hhGlobal;
    }
    public int[] sn(int sn[])
    {
        sn.size() => snGlobal.size;
        sn @=> snGlobal;
        return snGlobal;
    }
    //--------------------no argument funtion ----------------------//
    public int[] bd ()
    {
        bassDrum(bdGlobal);
        return bdGlobal;
    }
    public int[] bdF ()
    {
        bassDrumF(bdGlobal);
        return bdGlobal;
    }
    public int[] sn ()
    {
        snare(snGlobal);
        return snGlobal;
    }
    public int[] snF ()
    {
        snareF(snGlobal);
        return snGlobal;
    }
    public int[] hh ()
    {
        hihat(hhGlobal);
        return hhGlobal;
    }
    public int[] hhF ()
    {
        hihatF(hhGlobal);
        return hhGlobal;
    }
    
    //--------------------Drum with Fill-------------------------//
    public void drumF (int k[])
    {
        bassDrumF(k);
    }
    public void drumF (int k[],int hh[])
    {
        spork~ bassDrumF(k);
        spork~ hihatF(hh);
        while(true) 1::ms => now;
    }
    public void drumF (int k[],int s[],int hh[])
    {
        spork~ bassDrumF(k);
        spork~ snareF(s);
        spork~ hihatF(hh);
        while(true) 1::ms => now;
    }
    public void drumF (int full[][])
    {   
        if(full.cap() == 3)
        {             
            spork~ bassDrumF(full[0]);
            spork~ snareF(full[1]);
            spork~ hihatF(full[2]);
            while(true) 1::ms => now;
        }
        if(full.cap() == 2)
        {             
            spork~ bassDrumF(full[0]);
            spork~ hihatF(full[1]);
            while(true) 1::ms => now;
        }
    }
    //--------------------Drum without fill------------------------//
    public int[] drum ()
    {
        spork~ bassDrum(bdGlobal);
        spork~ snare(snGlobal);
        spork~ hihat(hhGlobal);
        while(true) 1::ms => now;
        return bdGlobal,snGlobal,hhGlobal;
    }
    public int[] drum (int k[])
    {
        bassDrum(k);
        return k;
    }
    public int[] drum (int k[],int hh[])
    {
        spork~ bassDrum(k);
        spork~ hihat(hh);
        while(true) 1::ms => now;
        return k,hh;
    }
    public int[] drum (int k[],int s[],int hh[])
    {
        spork~ bassDrum(k);
        spork~ snare(s);
        spork~ hihat(hh);
        while(true) 1::ms => now;
        return k,s,hh;
    }
    public int[] drum (int full[][])
    {                
        if(full.cap() == 3)
        {             
            spork~ bassDrum(full[0]);
            spork~ snare(full[1]);
            spork~ hihat(full[2]);
            while(true) 1::ms => now;
        }
        if(full.cap() == 2)
        {             
            spork~ bassDrum(full[0]);
            spork~ hihat(full[1]);
            while(true) 1::ms => now;
        }
        return full[0],full[1],full[2];
    }
    //-----------------Basic Functions---------------------//
    private int[] bassDrumF (int k[])
    {
        k @=> bdGlobal;
        
        0 => int count;
        
        while(count < Refill)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => Kick[bdSound].pos;
					Math.random2f(0.5,1) => Kick[bdSound].gain;
                }
                Dur(convert(TEMPO),Division) => now;
            }
            count ++;
            
            if(count == Refill) 
            {
                bdRandomFill(k.cap());
                0 => count;
            }
        }
        return k;
    }
    private int[] bassDrum (int k[])
    {        
        k @=> bdGlobal;
        
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => Kick[bdSound].pos;
					Math.random2f(0.5,1) => Kick[bdSound].gain;
                    oscout.start("/bd");
                    oscout.add(1);
                    oscout.send();
                    Dur(convert(TEMPO),Division) => now;
                }
                if (k[i] == 0) {
                    oscout.start("/bd");
                    oscout.add(0);
                    oscout.send();
                    Dur(convert(TEMPO),Division) => now;
                }
            }
        }
        return k;
    }
    private int[] hihat (int hh[])
    {       
        hh @=> hhGlobal;
        
        while(true)
        {
            for(0 => int i; i < hh.cap(); i++)
            {
                if (hh[i] == 1)
                {
                    0 => HH[hhSound].pos;
					Math.random2f(0.5,1) => HH[hhSound].gain;
                }
                Dur(convert(TEMPO),Division) => now;
            }
        }
        return hh;
    }
    private int[] hihatF (int hh[])
    {
        hh @=> hhGlobal;
        
        0 => int count;
        
        while(count < Refill)
        {
            for(0 => int i; i < hh.cap(); i++)
            {
                if (hh[i] == 1)
                {
                    0 => HH[hhSound].pos;
					Math.random2f(0.5,1) => HH[hhSound].gain;
                }
                Dur(convert(TEMPO),Division) => now;
            }
            count ++;
            
            if(count == Refill) 
            {
                hhRandomFill(hh.cap());
                0 => count;
            }
        }
        return hh;
    }
    private int[] snare (int sn[])
    {        
        sn @=> snGlobal;
        
        while(true)
        {
            for(0 => int i; i < sn.cap(); i++)
            {
                if (sn[i] == 1)
                {
                    0 => Snare[snSound].pos;
					Math.random2f(0.5,1) => Snare[snSound].gain;
                }
                Dur(convert(TEMPO),Division) => now;
            } 
        }
        return sn;
    }
    private int[] snareF (int sn[])
    {
        sn @=> snGlobal;
        
        0 => int count;
        
        while(count < Refill)
        {
            for(0 => int i; i < sn.cap(); i++)
            {           
                if (sn[i] == 1)
                {
                    0 => Snare[snSound].pos;
					Math.random2f(0.5,1) => Snare[snSound].gain;
                }
                Dur(convert(TEMPO),Division) => now;
            }
            count ++;
            
            if(count == Refill) 
            {
                snRandomFill(sn.cap());
                0 => count;
            }
        }
        return sn;
    }
}
