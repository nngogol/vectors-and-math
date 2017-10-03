class Mover{

  PVector pos;
  PVector vel;
  PVector acc;
  float mass;
  
  Mover(){
    pos = new PVector(width/2, height/2);
    vel = new PVector(0,0);
    acc = new PVector(0.2,0.1);
    mass = 2;
  }
  
   Mover(float m, float x , float y){
    pos = new PVector(x,y);
    vel = new PVector(0,0);
    acc = new PVector(0.2,0.1);
    mass = m;
  }
  
  void applyForce(PVector c){
    
    
    acc.add(PVector.div(c,mass)); // not acc=c , 
    //             coz it will not accumulate all given
    //             vectors in acc variable
  }
  
  void view(){
  
      fill(0,0,15,abs(mass)*3);
      strokeWeight(4);
      stroke(255);
      ellipse(pos.x,pos.y,36,36);
  }
  
  void update(){
    
      vel.add(acc);
      pos.add(vel);
      // после того, как позиция изменится
      // нам нужно новое значение силы,
      // т.к. она(сила аля вектор) могла изменится 
      acc.mult(0);
      
      // края
      checkEdges();
      
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  void checkEdges() {

    if (pos.x > width) {
      pos.x = width;
      vel.x *= -1;
    } else if (pos.x < 0) {
      vel.x *= -1;
      pos.x = 0;
    }

    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
    
    if (pos.y < 0) {
      vel.y *= -1;
      pos.y = 0;
    }

}
}