class DialogueRect{
  int rectWidth, rectHeight;
  
  DialogueRect(){
  }
  
  void display(int x, int y, int w, int h, int wRate, int hRate){
    fill(69,81,90);
    strokeWeight(6);
    stroke(22,43,59);
    if(rectWidth < w){ rectWidth += wRate; }
    if(rectHeight < h){ rectHeight+= hRate; }
    if(rectWidth >= w-1 && rectHeight >= h-1){ rectDrawn = true; }
    else{ rectDrawn = false; }
    rectMode(CENTER);
    rect(x,y,rectWidth,rectHeight,20);
    rectMode(CORNER);
    noStroke();
  }
}
