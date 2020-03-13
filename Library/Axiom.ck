  1 => int device; //Get right device

  MidiIn min;
  MidiMsg msg;
  min.open( device );

  SndBuf buf => Envelope env => dac;
  buf.gain(0.5);

  while( true )
  {
      min => now;
      while( min.recv(msg) )
      {
          if(msg.data2 == 36 && msg.data3 != 0){
              buf.read(me.dir()+"text1.wav");
              buf.pos(40000);
              env.keyOn();
          }
          if(msg.data2 == 36 && msg.data3 == 0){
              env.keyOff();
          }
          if(msg.data2 == 38 && msg.data3 != 0){
              buf.read(me.dir()+"text2.wav");
              buf.pos(0);
              env.keyOn();
          }
          if(msg.data2 == 38 && msg.data3 == 0){
              env.keyOff();
          }
          if(msg.data2 == 46 && msg.data3 != 0){
              buf.read(me.dir()+"text3.wav");
              buf.pos(0);
              env.keyOn();
          }
          if(msg.data2 == 46 && msg.data3 == 0){
              env.keyOff();
          }
          if(msg.data2 == 42 && msg.data3 != 0){
            buf.read(me.dir()+"text4.wav");
            buf.pos(0);
            env.keyOn();
          }
          if(msg.data2 == 42 && msg.data3 == 0){
              env.keyOff();
          }
          if(msg.data2 == 50 && msg.data3 != 0){
            buf.read(me.dir()+"text5.wav");
            buf.pos(0);
            env.keyOn();
          }
          if(msg.data2 == 50 && msg.data3 == 0){
              env.keyOff();
          }
          if(msg.data2 == 45 && msg.data3 != 0){
            buf.read(me.dir()+"text6.wav");
            buf.pos(0);
            env.keyOn();
          }
          if(msg.data2 == 45 && msg.data3 == 0){
              env.keyOff();
          }
          if(msg.data2 == 51 && msg.data3 != 0){
            buf.read(me.dir()+"text7.wav");
            buf.pos(0);
            env.keyOn();
          }
          if(msg.data2 == 51 && msg.data3 == 0){
              env.keyOff();
          }
          if(msg.data2 == 49 && msg.data3 != 0){
            buf.read(me.dir()+"text8.wav");
            buf.pos(0);
            env.keyOn();
          }
          if(msg.data2 == 49 && msg.data3 == 0){
              env.keyOff();
          }
      }
    }
