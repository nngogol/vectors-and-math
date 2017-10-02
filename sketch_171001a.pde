Mover m;
PVector gravity;

void setup(){
  
  size(900,600);
  m = new Mover();
  textSize(30);
  gravity = new PVector(0,0.5);
  
}

void draw(){
  background(200);
  
  mouseClick();
  

  m.applyForce(gravity);

  m.update();
  m.view();
  line(mouseX, mouseY, pmouseX, pmouseY);
  
}









void drawText(String text){
    stroke(255,0,0,180);
    strokeWeight(6);
    noFill();
    text(text, 20, 60);
}


void mouseClick(){
  if(mousePressed){
    
    //  Left Mouse
    if (mouseButton == LEFT) {
    
    drawText("left");
    m.applyForce(new PVector(-0.2,0));
        
  
    //  Right- Mouse
    } else if (mouseButton == RIGHT) {
      drawText("right");
      m.applyForce(new PVector(0.2,0));
    }
    
    
  } 
  
}