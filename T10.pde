import geomerative.*;
import processing.pdf.*;

RFont f;
RShape grp;
RPoint[] points;

void setup(){
  size(600,400);
  frameRate(24);
  background(255);
  fill(0,0,0);
  stroke(0);
  RG.init(this);  
  grp = RG.getText("CUT", "Lato-Light.ttf", 275, CENTER);
  smooth();
}

void draw(){

  background(255);
  for(int i = 0; i < 30000; i++) {
    noStroke();
      fill(random(255));
     square(random(600),random(400),random(25)) ;
  }
  
  translate(width/2.2, 3*height/4);  
  noFill();
  stroke(0,0,0);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseY, 0, height, 1, 200));
  points = grp.getPoints();
  
  if(points != null){
    noFill();
    stroke(255,255,255);
    beginShape();
    for(int i=0; i<points.length; i++){
      vertex(points[i].x, points[i].y);
    }
    endShape();
    fill(0);
    stroke(0);
    for(int i=0; i<points.length; i++){
      square(points[i].x, points[i].y,1);  
    }
  }
}

void mousePressed() {
    beginRecord(PDF, "out-###.pdf"); 
}

void mouseReleased() {
    endRecord();
}
