class OptionBoxes{
  int rectWidth, rectHeight;
  int arrowTest=0; float xPosArrow;
  
  OptionBoxes(){
  }
    
  void display(int x, int y, int w, int h, int wRate, int hRate, String o1, String o2){
    if(arrowFrame == 0 ){ xPosArrow = x-15; arrowFrame++;}
    
    fill(69,81,90);
    strokeWeight(6);
    stroke(22,43,59);
    if(rectWidth < w){ rectWidth += wRate; }
    if(rectHeight < h){ rectHeight+= hRate; }
    rectMode(CENTER);
    rect(x,y,rectWidth,rectHeight,20);
    rectMode(CORNER);
    noStroke();
    
    fill(255);
    pushMatrix();
    translate((-w/2)+30,(-h/2)+30);
      if (xPosArrow > x-15) { arrowTest = 0;  } //test if arrow needs to go in
      else if (xPosArrow < x-19) { arrowTest = 1; } //test if arrow needs to go out
      if (arrowTest == 1) { xPosArrow += .3; } //move arrows
      else if (arrowTest == 0) { xPosArrow -= .3;} //move arrows
      
      if(opSelect == 0){ triangle(xPosArrow,y-10, xPosArrow,y, xPosArrow+10,y-5); }
      else if(opSelect == 1 || (cdInt==43 && opSelect == -2)){ triangle(xPosArrow,y+10, xPosArrow,y+20, xPosArrow+10,y+15); }
      
      text(o1, x,y);
      text(o2, x,y+20);
    popMatrix();
  }
}
