import processing.pdf.*;

void setup()
{
  
size(600, 600, PDF, "02.pdf");
background(0,0,0);
noLoop();
}

void draw()
{
  
  for(int i = 0; i < 25000; i++) {
    strokeWeight(.3);
    stroke(255,255,255);
    point(random(600),random(600));
  }
  
  fill(0,0,0,150);
  square(0,0,600);

  for(int i = 0; i < 5000; i++) {
    noFill();
    strokeWeight(.005 );
    stroke(255,0,0);
    ellipse(300,150,random(600),random(600));
    stroke(128,128,0);
    ellipse(300,150,random(500),random(500));
    stroke(0,255,0);
    ellipse(300,150,random(400),random(400));
    stroke(0,128,128);
    ellipse(300,150,random(300),random(300));
    stroke(0,0,255);
    ellipse(300,150,random(200),random(200));
    stroke(128,0,128);     
    ellipse(300,150,random(100),random(100));    
    stroke(255,0,0);
    ellipse(150,450,random(600),random(600));
    stroke(128,128,0);
    ellipse(150,450,random(500),random(500));
    stroke(0,255,0);
    ellipse(150,450,random(400),random(400));
    stroke(0,128,128);
    ellipse(150,450,random(300),random(300));
    stroke(0,0,255);
    ellipse(150,450,random(200),random(200));
    stroke(128,0,128);
    ellipse(150,450,random(100),random(100));
    stroke(255,0,0);
    ellipse(450,450,random(600),random(600));
    stroke(128,128,0);
    ellipse(450,450,random(500),random(500));
    stroke(0,255,0);
    ellipse(450,450,random(400),random(400)); 
    stroke(0,128,128);
    ellipse(450,450,random(300),random(300));
    stroke(0,0,255);
    ellipse(450,450,random(200),random(200));
    stroke(128,0,128);
    ellipse(450,450,random(100),random(100));
  }
  
  strokeWeight(.05 );
  stroke(255,255,255,4);
  
  for(int i = 0; i < 5000; i++) {
    float triScalar = random(150);
    triangle(150+triScalar,450,450-triScalar,450,300,150+triScalar);
  }
  
  println("Finished.");
  exit();
}
