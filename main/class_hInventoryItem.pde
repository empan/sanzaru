class hInventoryItem{
  String name, description; PImage icon;
  
  hInventoryItem(String n, String d, PImage i){
    name = n; description = d; icon = i;
  }
    
  void displayImg(int x, int y){
    image(icon,x,y);
  }
  
  void displayDesc(){
    textAlign(LEFT);
    text(description, 224,360);
  }
}
