import processing.pdf.*;

void setup()
{
  
size(600, 600, PDF, "02.pdf");
//size(600, 600);
background(0, 0, 0);
noLoop();

}

void draw() {
  
noFill();

stroke(255,255,255);

for(int i = 0; i < 160; i+=5) {
strokeWeight(.00625*i);
triangle(598-i,598-i,275+i,598-i,598-i,275+i);

}

for(int i = 0; i < 295; i+=5) {
strokeWeight(.00338 *i);

}

for(int i = 0; i < 210; i+=5) {
  
  strokeWeight(.00476*i);

triangle(2+i,2+i,215,2,2,215);

}

for(int i = 0; i < 80; i+=5) {
    strokeWeight(.0125*i);
}

smooth();
float width = 0;
float translucency = 255;

 float x1 = random(300); 
 float y1 = random(300); 
 float x2 = random(300); 
 float y2 = random(300); 
  
for(int i=1; i<600; i+=3){
  rotate(PI/2);
  strokeWeight(width);
  width += .1125;
  stroke(255, 67, 164, translucency);
  bezier(300, 300, i*i/2, -700, i*i/2, -1500, 300, 300);
  bezier(300, 300, -i*i/2, 700, -i*i/2, 1500, 300, 300);
  stroke(252, 108, 133, translucency);
  bezier(300, 300, 700, -i*i/2, 1500, -i*i/2, 300, 300);
  bezier(300, 300, -700, i*i/2, -1500, i*i/2, 300, 300);

  translucency -= 5;

}

stroke(255,255,255);

for(int i = 0; i < 160; i+=5) {
strokeWeight(.00625*i);
triangle(598-i,598-i,275+i,598-i,598-i,275+i);

}

for(int i = 0; i < 295; i+=5) {
strokeWeight(.000838 *i);

  rotate(PI/2);

triangle(304-i,304-i,275+i,598-i,598-i,275+i);

}

for(int i = 0; i < 210; i+=5) {
  
  strokeWeight(.00476*i);
  
triangle(2+i,2+i,215-i,2+i,2+i,215-i);

}

println("Finished.");
exit();

}
