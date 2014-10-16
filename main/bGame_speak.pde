/***************************************************************/
/* SPEAK GAME
/***************************************************************/
void speakGame(){
  titleAudio[0].pause();
  /******************/  
  /* STATE == START */
  /******************/
  if(speakGameState == "start"){
    tint(255,255);
    image(sbgImg[0],0,0);
    if (hintroEnterOpacity > 255) { hintroEnterOpacityTest = 0;  } //test if opacity needs to go down
    else if (hintroEnterOpacity < 100) { hintroEnterOpacityTest = 1; } //test if opacity needs to go up
    if (hintroEnterOpacityTest == 1) { hintroEnterOpacity += 5; } //increase opacity
    else if (hintroEnterOpacityTest == 0) { hintroEnterOpacity -= 5; } //decrease opacity
      tint(255,hintroEnterOpacity);
      imageMode(CENTER);
      image(hbgImg[2],405,450);
      imageMode(CORNER);
      tint(255,255);
  }
  
  tint(255,150);  
  soundIconFn();
  tint(255,255);
}
