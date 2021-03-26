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
  grp = RG.getText("FRAGMENT", "scientifica.ttf", 100, CENTER);
  smooth();
}

void draw(){

  background(255);
  translate(width/2, height/1.75);
  stroke(255,255,255);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseY, 0, height, 3, 200));
  points = grp.getPoints();

  if(points != null){
    noFill();
    stroke(0,0,0);
    beginShape();
    for(int i=0; i<points.length; i++){
      quad(points[i].x, points[i].y, points[i].y+random(50), points[i].x+random(-50),points[i].y+random(50), points[i].x+random(-50), points[i].y, points[i].x);
    }
    endShape();
  
    noStroke();
    for(int i=0; i<points.length; i++){
      fill(random(255), random(255), random(255), 15);
      fill(random(50));
      fill(random(50));
    }
    
    noFill();
    stroke(255,255,255);
    RG.setPolygonizer(RG.ADAPTATIVE);
    grp.draw();
  }
}

void mousePressed() {
  beginRecord(PDF, "out-###.pdf"); 
}

void mouseReleased() {
  endRecord();
}
