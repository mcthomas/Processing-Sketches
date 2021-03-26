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
  grp = RG.getText("01001101", "Poland-canned-into-Future.ttf", 200, CENTER);
  smooth();
}

void draw(){
  
  background(0);
  fill(255);
  triangle(width/2,height/2,width/2-20,height/2+25,width/2+20,height/2+25);
  for(int i = 0; i < 80; i++) {
     stroke(random(255),random(255),random(255),55);
     line((600/40)*(i/2),400,300-20+(i/2),200+25);
  }
  
  translate(width/2, 3*height/6);
  noFill();
  stroke(255,255,255);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseY, 0, height, 3, 200));
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
    stroke(255,255,255,20);
    for(int i=0; i<points.length; i++){
      line(points[i].x, points[i].y,0,0);  
    }
  }
}

void mousePressed() {
    beginRecord(PDF, "out-###.pdf"); 
}

void mouseReleased() {
    endRecord();
}
