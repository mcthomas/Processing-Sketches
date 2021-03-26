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

  strokeWeight(.5);
  
    for(int i = 1; i < 300; i+=1) {
      if(i<500) {
          stroke(255, 255, 255, 20);
      }
      else {
          stroke(255, 255, 255, 20);
      }
     triangle(random(600), random(600), random(600), random(600), random(600), random(600)); 
  }
  
    stroke(255, 0, 0, 100);
    
    strokeWeight(.5);
  
for(int i=1; i<600; i+=5){
  beginShape();
  fill(3, 255, 255,1);
  stroke(255, 0, 100);
  vertex(0,0);
  bezierVertex(i, i, i, i, 0+i, 600-i); 
  endShape();
  beginShape();
  stroke(3, 255, 255);
  vertex(0,600);
  bezierVertex(i, 600-i, i, 600-i, 0+i, 0+i); 
  endShape();

}

int strokeSize = 20;
int translucency = 56;

for(int i=0; i<600; i+=20){
  strokeWeight(1);
  strokeSize -= .15;
  stroke(3, 255, 255, 100);
  triangle(0,0,600,0,300,300-i);
  stroke(255, 0, 0, 128);
  triangle(0,600,600,600,300,300+i);
}

rotate(PI/2);

for(int i=0; i<600; i+=20){
  strokeWeight(1);
  strokeSize -= .15;
  stroke(3, 255, 255, 100);
  triangle(0,0,600,0,300,300-i);
  stroke(255, 0, 0, 128);
  triangle(0,600,600,600,300,300+i);
}

println("Finished.");
  exit();

}
