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
  grp = RG.getText("Sharp", "Lato-Hairline.ttf", 200, CENTER);
  smooth();
}

void draw(){

  background(255);
  translate(width/2, 3*height/6);
  fill(50);
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
  
    stroke(255,255,255,255);
    for(int i=0; i<points.length; i++){
      fill(0);
      fill(random(50));
      curve(width,height, width,height/2,points[i].x, points[i].y, points[i].x, points[i].y);  
      curve(width,height, width,height/2,points[i].y, points[i].x, points[i].y, points[i].x);  
      curve(points[i].x, points[i].y, points[i].x, points[i].y, width,height, width,height/2);  
      curve(points[i].y, points[i].x, points[i].y, points[i].x, width,height, width,height/2);  
    }
    
    fill(50);
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
