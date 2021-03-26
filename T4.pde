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
  grp = RG.getText("3D TYPE", "3X5.TTF", 150, CENTER);
  smooth();
}

void draw(){

  background(0);
  translate(width/2.5, 3*height/12);
  noFill();
  stroke(255,255,255);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseY, 0, height, 3, 200));
  points = grp.getPoints();

  if(points != null){
    noFill();
    stroke(255, 0, 0);
    beginShape();
    for(int i=0; i<points.length; i++){
      vertex(points[i].x, points[i].y);
    }
    endShape();
    stroke(0, 255, 255, 30);
    for(int i=0; i<points.length; i++){
      square(points[i].x, points[i].y, random(500));  
    }
  }
}

void mousePressed() {
  beginRecord(PDF, "out-###.pdf"); 
}

void mouseReleased() {
  endRecord();
}
