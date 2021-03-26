import processing.pdf.*;

void setup()
{
  
size(600, 600, PDF, "02.pdf");
background(0, 0, 0);
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
  
for(int i=1; i<600; i+=10){
  strokeWeight(width);
  width += .04125;
  rotate(3*PI/2);
  stroke(0, 102, 158, translucency);
  bezier(600/i, i, i, 600-i, 600, -600, -600+i, i);
  bezier(i, 600/i, 600-i, i, -600, 600, i, -600+i);
  stroke(3, 255, 255, translucency-50);
  bezier(600, i+600/i, i, i, -600, 600, i, -600+i);
  bezier(600, i+600/i, i, -i, 600, -600, i*i, 600+i);
  bezier(i+600/i, 600, -i, i, -600, 600, 600+i, i*i);
  bezier(600, i+600/i, i/600, i/600, -600/i, -600, i, 600);

  rotate(PI/2 );
  stroke(0, 102, 158, translucency);
  bezier(600/i, i, i, 600-i, 600, -600, -600+i, i);
  bezier(i, 600/i, 600-i, i, -600, 600, i, -600+i);
  stroke(3, 255, 255, translucency-50);
  bezier(600, i+600/i, i, i, -600, 600, i, -600+i);
  bezier(600, i+600/i, i, -i, 600, -600, i*i, 600+i);
  bezier(i+600/i, 600, -i, i, -600, 600, 600+i, i*i);
  bezier(600, i+600/i, i/600, i/600, -600/i, -600, i, 600);
  translucency -= 5;
}

println("Finished.");
exit();
}
