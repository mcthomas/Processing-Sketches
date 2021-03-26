import processing.pdf.*;

void setup()
{
  
size(600, 600, PDF, "02.pdf");
background(0,0,0);
noLoop();
}

void draw() {
  
noFill();

smooth();
float gap = 0;
int translucency = 56;
strokeWeight(1);
stroke(0, 84, 77);    
boolean boolFill = true;  
  
for(int i=0;i<600;i=i+10){
  fill(128,0,128,6);
  beginShape();
  vertex(0+i,0); 
  bezierVertex(-1000, 300, 1600, 300, 600-i, 600); 
  endShape();
}

stroke(175, 3, 175, 5);

for(int i=0;i<600;i=i+10){bezier(0+i, 0, -200, 300, 800, 300, 600-i, 600); }

  stroke(0, 84, 77, 50);

for(int i=0;i<600;i=i+10){bezier(0+i, 0, 0, 300, 600, 300, 600-i, 600); }

  stroke(0, 84, 77, 50);

for(int i=0;i<600;i=i+10){bezier(600-i, 0, 1600, 300, -1000, 300, 0+i, 600); }

stroke(175, 3, 175, 5);

for(int i=0;i<600;i=i+10){bezier(600-i, 0, 800, 300, -200, 300, 0+i, 600); }

  stroke(0, 84, 77);

for(int i=0;i<600;i=i+10){bezier(600-i, 0, 600, 300, 0, 300, 0+i, 600); }

  stroke(0, 102, 158, 200);

for(int i=0;i<=290;i+=30) {
  triangle(0,242,0,357,290-i,300);
  triangle(600,242,600,357,310+i,300);
}

println("Finished.");
  exit();
}
