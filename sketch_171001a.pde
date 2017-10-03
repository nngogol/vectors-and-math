Mover mover1;
ArrayList<Mover> movers;
PVector gravity;
float wind = 2.2;

void setup(){
  
  size(900,600);
  mover1 = new Mover();
  movers = new ArrayList<Mover>();
  for(int i = 0; i<30; i++){
    movers.add(new Mover((i+5)*6.5,30+i*5, 40*i*0.2));
  }
  textSize(30);
  
}

void draw(){
  background(200);
  
  line(mouseX, mouseY, pmouseX, pmouseY);
  
  
  for(int i = 0; i<movers.size(); i++){
    mouseClick_wind(movers.get(i));
    PVector gravity = new PVector(0, 0.9*movers.get(i).mass);
    movers.get(i).applyForce(gravity);



    movers.get(i).update();
    movers.get(i).view();
  }
  
  
}









void drawText(String text){
    stroke(255,0,0,180);
    strokeWeight(6);
    noFill();
    text(text, 20, 60);
}

void mouseClicked(){
  drawText("add");
  movers.add(new Mover(random(24,45),mouseX, mouseY));
  
}

void mouseClick_wind(Mover someMover){
  if(mousePressed){
    
    if (mouseButton == LEFT) {
      drawText("left");
      someMover.applyForce(new PVector(-wind,0));
    }
    
    if (mouseButton == RIGHT) {
      drawText("right");
      someMover.applyForce(new PVector(wind,0));
    }
    
  } 
  
}