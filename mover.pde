class Mover{

  PVector pos;
  PVector vel;
  PVector acc;
  
  Mover(){
    pos = new PVector(width/2, height/2);
    vel = new PVector(0,0);
    acc = new PVector(0.01,0.01);
    
  }
  
  void view(){
  
      ellipse(pos.x,pos.y,36,36);
  }
  
  void update(){
    
      // 1 - random
      //acc = PVector.random2D();
      
      // 2 - random
      PVector m = new PVector(mouseX,mouseY);
      m.sub(pos);
      m.setMag(0.02);
      //if(m.mag() < 10){
      //  m.setMag(0);
      //} else if(m.mag() < 20 && m.mag() > 10){
      //  m.setMag(0.002);
      //}
      
      acc = m;
      
      //acc.add()
      //if( acc.x > 0.5 ) acc.x =0.5;
      //if( acc.y > 0.5 ) acc.y =0.5;
      //if( acc.x < -0.5 ) acc.x =-0.5;
      //if( acc.y < -0.5 ) acc.y =-0.5;
      vel.add(acc);
      vel.limit(5);
      // .limit это тоже, что ниже, лол
      //if( vel.x > 0.5 ) vel.x =0.5;
      //if( vel.y > 0.5 ) vel.y =0.5;
      //if( vel.x < -0.5 ) vel.x =-0.5;
      //if( vel.y < -0.5 ) vel.y =-0.5;
      pos.add(vel);
      
  }
  
  void edges(){
    
    if( pos.x > width ) pos.x = 0;
    if( pos.x < 0 )     pos.x = width;
    
    if( pos.y > height ) pos.y = 0;
    if( pos.y < 0 )     pos.y = height;
      
  }
}