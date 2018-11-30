Bacteria[] makeBacteria(int num){
   Bacteria bact[] = new Bacteria[num];
   for(int i = 0; i < bact.length; i++){
     bact[i] = new Bacteria();
   }
   
   return bact;
 }

void setup() {
  size(500, 500); 
  frameRate(10);
}


void draw() {
  background(255);
  fill(255);
  rectMode(CENTER);
  rect(mouseX,mouseY,50,75);
  Bacteria[] bact;
  bact = makeBacteria(500);
  for(Bacteria bacts : bact){
    bacts.move();
    bacts.display();
  }
}

class Bacteria { 
  float xpos;
  float ypos;
  float red;
  float green;
  float blue;

  Bacteria() { 
    xpos = 0;
    ypos = 0;
    red = (int)(Math.random()*255)+1;
    green = (int)(Math.random()*255)+1;
    blue = (int)(Math.random()*255)+1;
    
  }

  void display() {
    stroke(0);
    fill(red, green, blue);
    pushMatrix();
    translate(250,250);
     beginShape();
     curveVertex(0+xpos,10+ypos);
     curveVertex(5+xpos,8+ypos);
     curveVertex(7+xpos,4+ypos);
     curveVertex(3+xpos,0+ypos);
     curveVertex(7+xpos,-4+ypos);
     curveVertex(5+xpos,-8+ypos);
     curveVertex(0+xpos,-10+ypos);
     curveVertex(-5+xpos,-8+ypos);
     curveVertex(-7+xpos,-4+ypos);
     curveVertex(-3+xpos,0+ypos);
     curveVertex(-7+xpos,4+ypos);
     curveVertex(-5+xpos,8+ypos);
     curveVertex(0+xpos,10+ypos);
     endShape();
     popMatrix();
  }

  void move() {
    if(mousePressed == true){
      fill(0);
      rect(mouseX,mouseY,100,125);
      fill(255);
      ellipse(mouseX-42, mouseY+10, 10 , 10);
      textSize(24);
      fill(255);
      text("Cursed", mouseX-40, mouseY-30);
      text("D00R!", mouseX-35, mouseY+50);
      pushMatrix();
      translate(250,250);
      xpos += (int)(Math.random()*1)+mouseX;
      xpos -= (int)(Math.random()*1)-mouseX;
      ypos += (int)(Math.random()*1)+mouseY;
      ypos -= (int)(Math.random()*1)-mouseY;
      
      popMatrix();
    }
      int num = 250;
      xpos += (int)(Math.random()*num);
      xpos -= (int)(Math.random()*num);
      ypos += (int)(Math.random()*num);
      ypos -= (int)(Math.random()*num);
      
      
  }
}
