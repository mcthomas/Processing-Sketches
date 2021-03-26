import processing.pdf.*;

void setup()
{
  
size(600, 600, PDF, "02.pdf");
background(0,0,0);
noLoop();

}

void draw() {
  
  for(int i = 1; i < 1000; i+=1) {
    square(random(600), random(600), 1000/i); 
  }
  
  stroke(255,255,255);
  noFill();
  strokeWeight(5);
  smooth();
  float gap = 0;
  int translucency = 56;

  for(float i=0; i<10; i++) { 
    gap += .5;
    float rand1 = random(600);
    float rand2 = random(600);
    stroke(255,255,255);
    noFill();   
    strokeWeight(1);

    fill(random(255),random(255),random(255),50);
    beginShape();
    vertex(rand2, rand2);
    bezierVertex(rand2,rand1,rand1,rand1,rand1,rand1);
    endShape();
  
    fill(random(255),random(255),random(255),128);
    beginShape();
    vertex(rand1, rand1);
    bezierVertex(rand1,rand2,rand2,rand2,rand2,rand2);
    endShape();

}

  for(float i=10; i>0; i--) { 
    gap += .5;
    float rand1 = random(600);
    float rand2 = random(600);
    stroke(255,255,255);
    noFill();   
    strokeWeight(1);

    fill(random(255),random(255),random(255),50);
    beginShape();
    vertex(rand2, rand2);
    bezierVertex(rand2,rand1,rand1,rand1,rand1,rand1);
    endShape();
  
    fill(random(255),random(255),random(255),128);
    beginShape();
    vertex(rand1, rand1);
    bezierVertex(rand1,rand2,rand2,rand2,rand2,rand2);
    endShape();

  }
  
  noFill();
  line(0,0,600,600);
  square(2,2,596);
  println("Finished.");
  exit();

}
