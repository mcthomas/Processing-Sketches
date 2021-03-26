import processing.pdf.*;

void setup()
{
  
size(600, 600, PDF, "02.pdf");
background(0, 0, 0);
noLoop();

}

void draw() {
  
  strokeWeight(.5);
  stroke(255,255,255);
  for(int i = 0; i < 1000; i++) {
    point(random(600),random(600));
  }
  
noFill();

smooth();
float width = 0;
float translucency = 255;

 float x1 = random(300); 
 float y1 = random(300); 
 float x2 = random(300); 
 float y2 = random(300); 
  
for(int i=1; i<600; i+=10){
  strokeWeight(width);
  width += .1125;
  stroke(0, 102, 158, translucency);
  bezier(i, -600-i, -600%i, -300, -300, -600%i, -600-i, i);
  stroke(134, 64, 152, translucency);
  bezier(i, 600-i, -600%i, -300, -300, -600%i, 600-i, i);
  stroke(0, 102, 158, translucency);
  bezier(i, 600-i, 600%i, 300, 300, 600%i, 600-i, i);
  stroke(134, 64, 152, translucency);
  bezier(600-i, i, 300, 600%i, 600%i, 300, i, 600-i);    
  stroke(0, 102, 158, translucency);
  bezier(600, 600, 300, i*i, i*i, 300, 300, 300);
  stroke(134, 64, 152, translucency);
  bezier(600, 600, i*i, 300, 300, i*i, 300, 300);
  stroke(0, 102, 158, translucency);
  bezier(600, 600, 300, i, i, 300, 300, 300);
  stroke(134, 64, 152, translucency);
  bezier(600, 600, i, 300, 300, i, 300, 300);
  translucency -= 5;

}

println("Finished.");
exit();

}
