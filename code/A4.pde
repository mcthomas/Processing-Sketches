import processing.pdf.*;

void setup()
{
size(600, 600, PDF, "02.pdf");
background(0,0,0);
noLoop();
}

void draw()
{
  
  stroke(255,255,255,128);
  fill(0,0,85,115);  
  createCube(.5, .5, 449.5, "right", (new int[] {255, 255, 255}), false);
  createCube(150.5, .5, 449.5, "left", (new int[] {255, 255, 255}), false);
    
  for(int i = 0; i < 600; i += 50) {  
    createCube(i*1.333, i*1.333, 50, "right", (new int[] {254, 255, 0}), true);
    createCube(i*1.333+16.65, i*1.333+66.65, 50, "left", (new int[] {254, 255, 0}), true);
  }
  
  createCube(.5, 425.5, 131, "right", (new int[] {0, 0, 255}), false);
  createCube(131, 425.5, 131, "right", (new int[] {0, 0, 255}), false);
  createCube(.5, 295, 131, "right", (new int[] {0, 0, 255}), false);   
  createCube(469, 0.5, 131, "left", (new int[] {255, 0, 0}), false);
  createCube(338, 0.5, 131, "left", (new int[] {255, 0, 0}), false);
  createCube(469, 131.5, 131, "left", (new int[] {255, 0, 0}), false);  
  println("Finished.");
  exit();
  
}

void createCube(float posX, float posY, float size, String orient, int[] colour, boolean repeat) {
  fill(colour[0], colour[1], colour[2], 55);
  if(orient == "right") {
    square(posX, posY, size);
    square(posX+(size/3), posY+(size/3), size);
    quad(posX, posY, posX+size, posY, posX+size+(size/3), posY+(size/3), posX+(size/3), posY+(size/3));
    quad(posX, posY+size, posX+size, posY+size, posX+size+(size/3), posY+(size/3)+size, posX+(size/3), posY+(size/3)+size);
    strokeWeight(1);
    if(repeat) {
    for(int i = 1; i < (650-posY); i+=25) {
      fill((255-((255/48)*i)),(255-(((255-128)/48)*i)),0,55);
      square(posX+(size/3)+i, posY+(size/3)-i, size);
    }
  }
  }
  else if (orient == "left") {
    square(posX, posY, size);
    square(posX-(size/3), posY+(size/3), size);
    quad(posX, posY, posX+size, posY, posX+size-(size/3), posY+(size/3), posX-(size/3), posY+(size/3));
    quad(posX, posY+size, posX+size, posY+size, posX+size-(size/3), posY+(size/3)+size, posX-(size/3), posY+(size/3)+size);
    strokeWeight(1);
    if(repeat) {
    for(int i = 1; i < (650-posY); i+=25) {
      fill((255-(((255-128)/48)*i)),(255-(((255-0)/48)*i)),(0+((128/48)*i)),55);
      square(posX-(size/3)-i, posY+(size/3)+i, size);
    }
    }
  }
}
