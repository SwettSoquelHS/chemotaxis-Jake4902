Bacteria green = new Bacteria(250,250,0,255,0); 
Bacteria purp = new Bacteria(); 
Bacteria red = new Bacteria(250,250,255,0,0); 
Bacteria blue = new Bacteria(250,250,0,0,255); 
Bacteria orange = new Bacteria(250,250,255,255,0); 
Bacteria torq = new Bacteria(250,250,0,255,255); 
Bacteria weird = new Bacteria(250,250,150,240,100);
Bacteria chewy = new Bacteria(250,250,10,230,20); 
Bacteria han = new Bacteria(250,250,25,10,10); 
 void setup()   
 {     
   size(500,500);
   background(0);
 }   
 void draw()   
 {    
  green.move();
  green.show();
  
  purp.move();
  purp.show();
  
  red.move();
  red.show();
  
  blue.move();
  blue.show();
  
  orange.move();
  orange.show();
  
 }  
 class Bacteria    
 {
   int XPos;
   int YPos;
   int red;
   int green;
   int blue;
   
   Bacteria(){
     XPos = 250;
     YPos = 250;
     red = 255;
     green = 0;
     blue = 255;
   }
   Bacteria(int x, int y, int redd, int greenn, int bluee){
     XPos = x;
     YPos = y;
     red = redd;
     green = greenn;
     blue = bluee;
   }
   
   void move(){
     XPos += (int)(Math.random()*10)+1;
     XPos -= (int)(Math.random()*10)+1;
     YPos += (int)(Math.random()*10)+1;
     YPos -= (int)(Math.random()*10)+1;
   }
   
   void show(){
     pushMatrix();
     translate(XPos, YPos);
     fill(red, green, blue);
     background(0);
     beginShape();
     curveVertex(0,10);
     curveVertex(5,8);
     curveVertex(7,4);
     curveVertex(3,0);
     curveVertex(7,-4);
     curveVertex(5,-8);
     curveVertex(0,-10);
     curveVertex(-5,-8);
     curveVertex(-7,-4);
     curveVertex(-3,0);
     curveVertex(-7,4);
     curveVertex(-5,8);
     curveVertex(0,10);
     endShape();
     popMatrix();
   }
   

   
 }    
