import processing.pdf.*;

void setup()
{
  
size(600, 600, PDF, "02.pdf");
background(255,255,255);
noLoop();
}

void draw() {
  
noFill();

smooth();
float width = 0;
float translucency = 255;

 float x1 = random(300); 
 float y1 = random(300); 
 float x2 = random(300); 
 float y2 = random(300); 
  
for(int i=1; i<600; i+=20){
  strokeWeight(width);
  width += .25;
  stroke(0, 0, 0, translucency);
  translucency -= 5;
  bezier(600, i, 100, 100, 900, i, i, 600);
  bezier(0, i, 500, 100, -300, i, 600-i, 600);
  strokeWeight(width-.25);
  bezier(300, 0, 300-x1, y1+i, 300+x1, y2-i, 300, 300);
  bezier(300, 0, 300+x1, y1+i, 300-x1, y2-i, 300, 300);
}

println("Finished.");
  exit();

}
