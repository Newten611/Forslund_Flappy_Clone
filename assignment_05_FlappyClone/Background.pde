float testCounter=0;
class Background {
  float yoff=0;
  //1. Insert your code for the background here.
  void draw() {
    background(32);
    testCounter = testCounter+ 0.1;
    pushStyle();
    noStroke();
    pushStyle();
    beginShape();
    vertex(-100, -100);
    vertex(0, -100);
    yoff=0;
    for (int x=-50; x<=width+50; x=x+(width+100)/200) {
      fill(20);
      curveVertex(x, map(noise(testCounter+yoff), 0, 1, 100, height/3));
      yoff +=0.13;
    }
    vertex(width, -100);
    vertex(width+100, -100);
    endShape();
    popStyle();

    pushStyle();
    beginShape();
    vertex(-100, -100);
    vertex(0, -100);
    yoff=0;
    for (int x=-50; x<=width+50; x=x+(width+100)/200) {
      fill(10);
      curveVertex(x, map(noise(testCounter+yoff+500), 0, 1, 50, height/4));
      yoff +=0.115;
    }
    vertex(width, -100);
    vertex(width+100, -100);
    endShape();
    popStyle();

    pushStyle();
    beginShape();
    vertex(-100, -100);
    vertex(0, -100);
    yoff=0;
    for (int x=-50; x<=width+50; x=x+(width+100)/200) {
      fill(0);
      curveVertex(x, map(noise(testCounter+yoff+1000), 0, 1, 0, height/8));
      yoff +=0.1;
    }
    vertex(width, -100);
    vertex(width+100, -100);
    endShape();
    popStyle();
    
    pushStyle();
    beginShape();
    vertex(-100, height+100);
    vertex(0, height+100);
    yoff=0;
    for (int x=-50; x<=width+50; x=x+(width+100)/200) {
      fill(20);
      curveVertex(x, height-map(noise(testCounter+yoff-500), 0, 1, 100, height/3));
      yoff +=0.13;
    }
    vertex(width, height+100);
    vertex(width+100, height+100);
    endShape();
    popStyle();
    
    pushStyle();
    beginShape();
    vertex(-100, height+100);
    vertex(0, height+100);
    yoff=0;
    for (int x=-50; x<=width+50; x=x+(width+100)/200) {
      fill(10);
      curveVertex(x, height-map(noise(testCounter+yoff-1000), 0, 1, 50, height/4));
      yoff +=0.115;
    }
    vertex(width, height+100);
    vertex(width+100, height+100);
    endShape();
    popStyle();
    
    pushStyle();
    beginShape();
    vertex(-100, height+100);
    vertex(0, height+100);
    yoff=0;
    for (int x=-50; x<=width+50; x=x+(width+100)/200) {
      fill(0);
      curveVertex(x, height-map(noise(testCounter+yoff-2000), 0, 1, 0, height/8));
      yoff +=0.1;
    }
    vertex(width, height+100);
    vertex(width+100, height+100);
    endShape();
    popStyle();
    
    popStyle();
  }
}