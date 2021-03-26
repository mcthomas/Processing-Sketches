import processing.pdf.*;

void setup(){
  size(600,600);
  background(20);
  noLoop();
}

void draw() {
    
noFill();
strokeWeight(1);
stroke(256,256,256,56);
line(0,300,105,300);
stroke(0,149,182,56);
line(495,300,600,300);

smooth();
float gap = 0;
int translucency = 56;

for(float i=0; i<600; i+=gap) { 
  gap += .5;
  strokeWeight(i/300);
  stroke(256, 256, 256, translucency);
  translucency += 5;
  bezier(600, 0, 50, 50, i, 600, i, 600);
}

gap = 0;
translucency = 56;

for(float i=0; i<600; i+=gap) { 
  gap += .5;
  strokeWeight(i/300);
  stroke(0,149,182, translucency);
  translucency += 5;
  bezier(0, 0, 550, 50, 600-i, 600, 600-i, 600);
}

gap = 0;
translucency = 56;

for(float i=0; i<600; i+=gap) { 
  gap += .5;
  strokeWeight(i/300);
  stroke(256, 256, 256, translucency);
  translucency +=5;
  bezier(600, 600, 50, 550, i, 0, i, 0);
}

gap = 0;
translucency = 56;

for(float i=0; i<600; i+=gap) { 
  gap += .5;
  strokeWeight(i/300);
  stroke(0,149,182,translucency);
  translucency += 5;
  bezier(0, 600, 550, 550, 600-i, 0, 600-i, 0);
}

gap = 0;

for(int i = 0; i < 160; i+=gap) {
  gap+=5;
  noStroke();
  fill(200, 247, 255, 10);
  ellipse(300,300,160-gap,160-gap);
}
}
