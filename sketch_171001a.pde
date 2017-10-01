PVector q;
Mover m;

void setup(){
  size(600,400);
  q = new PVector(300,400);
  m = new Mover();
}

void mouseClicked(){
  //q.add(new PVector(mouseX,mouseY));
  q.sub(new PVector(mouseX,mouseY));
  //q.mult(2);
}

void draw(){
  background(200);
  
  //textSize(40);
  //text(random(-1,1),100,50);
  //random - рандом
  //translate(width/2, height/2);
  

  
  m.update();
  //m.edges();
  m.view();
  
  line(0,0,mouseX,mouseY);
  //ellipse(q.x,q.y,16,16);
}