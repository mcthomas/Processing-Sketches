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
  grp = RG.getText("M", "CamelotCaps.ttf", 500, CENTER);
  smooth();
}

void draw(){

  background(0);
  translate(width/2, height);
  fill(255);
  stroke(255,255,255);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();  
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseY, 0, height, 3, 200));
  points = grp.getPoints();
  if(points != null){
    noFill();
    stroke(200);
    beginShape();
    for(int i=0; i<points.length; i++){
      vertex(points[i].x, points[i].y);
    }
    endShape();
        for(int i=0; i<points.length; i++){
      point(points[i].x, points[i].y,5);  
    }
    fill(0);
    stroke(170, 152, 11, 5);
    for(int i=0; i<points.length; i++){
      line(points[i].x, points[i].y,-300,0);  
      line(points[i].x, points[i].y,300,0);  
            line(points[i].x, points[i].y,-300,-400);  
      line(points[i].x, points[i].y,300,-400); 
    }
  }
}

void mousePressed() {
  beginRecord(PDF, "out-###.pdf"); 
}

void mouseReleased() {
  endRecord();
}
