class Mover{

  PVector pos;
  PVector vel;
  PVector acc;
  
  Mover(){
    pos = new PVector(width/2, height/2);
    vel = new PVector(0,0);
    acc = new PVector(0.2,0.1);
    
  }
  
  void applyForce(PVector c){
  
    
    acc.add(c); // not acc=c , 
    //             coz it will not accumulate all given
    //             vectors in acc variable
  }
  
  void view(){
  
      fill(20,155,150,240);
      strokeWeight(1);
      stroke(255,0,0);
      ellipse(pos.x,pos.y,36,36);
  }
  
  void update(){
    
      vel.add(acc);
      pos.add(vel);
      acc.mult(0);
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