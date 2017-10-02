Mover mover1;
Mover[] movers;
PVector gravity;
float wind = 1.2;

void setup(){
  
  size(900,600);
  mover1 = new Mover();
  movers = new Mover[30];
  for(int i = 0; i<30; i++){
    movers[i] = new Mover((i+5)*1.5,30+i*5, 70);
  }
  textSize(30);
  gravity = new PVector(0,1.5);
  
}

void draw(){
  background(200);
  
  line(mouseX, mouseY, pmouseX, pmouseY);
  
  for(Mover m : movers){
  
    mouseClick_wind(m);
    m.applyForce(gravity);



    m.update();
    m.view();
  }
  
  
  
}









void drawText(String text){
    stroke(255,0,0,180);
    strokeWeight(6);
    noFill();
    text(text, 20, 60);
}


void mouseClick_wind(Mover someMover){
  if(mousePressed){
    
    //  Left Mouse
    if (mouseButton == LEFT) {
    
    drawText("left");
    someMover.applyForce(new PVector(-wind,0));
        
  
    //  Right- Mouse
    } else if (mouseButton == RIGHT) {
      drawText("right");
      someMover.applyForce(new PVector(wind,0));
    }
    
    
  } 
  
}