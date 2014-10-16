/***************************************************************/
/* HEAR GAME
/***************************************************************/
void hearGame(){
  titleAudio[0].pause();
  if(hearGameState == "start"){
    tint(255,255);
    image(hbgImg[1],0,0);
  
  /******************/  
  /* STATE == START */
  /******************/
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
  
  /*****************/
  /* STATE == PLAY */
  /*****************/
  else if( hearGameState == "play") {  
    hearAudio[3].play();
      
    //cut scene
    if(cdInt >= 17 && cdInt < 22){
      image(hbgImg[0],hbgxPos,0);
      if(hbgxPos > -790){
        hbgxPos-=.5;
      }
    } 
    //inventory explanation frames
    else if(cdInt == 27 || cdInt==28 ){
      inventFrame++;
      if(cdInt == 27 && inventFrame < 255){ tint(255,inventFrame); }
      if(inventFrame % 70 >= 0 && inventFrame % 70 < 35){ image(hbgImg[3],0,0); }
      else{ image(hbgImg[4],0,0); }
    }
    //beginning
    else if(cdInt < 43){ tint(255,255); image(hbgImg[9],0,0); }
    
    //shops
    else if(cdInt >= 43){ image(mbgImg[18],0,0); }
    if(cdInt == 43 && opSelect == 1){ opSelect = -2; } //leave shop area after talking to flora
    if(cdInt == 51){ hDialogueDone[0] = true; } //got the bully's note from flora
    
    //jungle
    else if(cdInt == 60){ image(hbgImg[11],0,0); }
    if(cdInt == 63 && opSelect == 1){ opSelect = -2; }
    
    
    myDialogueRect.display(drx[cdInt],dry[cdInt],drw[cdInt],drh[cdInt],drwRate[cdInt],drhRate[cdInt]);
    if(playerOptions[cdInt] == true){ //display options dialogue boxes
      myOptionBoxes.display(opx[cdInt],opy[cdInt],opw[cdInt],oph[cdInt],opwRate[cdInt],ophRate[cdInt],opS1[cdInt],opS2[cdInt]);
    }
    
    if(hTransition[cdInt] == true){ screenTransition(); } //fade in
    if(hSkip[cdInt] != 0){ opSelect = hSkip[cdInt]; } //add skip to cdInt
    fill(255);
    text(hearDialogueStrings[cdInt],hTextX[cdInt],hTextY[cdInt]);
    
    if( cdInt == 31 ){ 
      if (cd31Text > 255) { cd31TextTest = 0;  } //test if opacity needs to go down
      else if (cd31Text < 100) { cd31TextTest = 1; } //test if opacity needs to go up
      if (cd31TextTest == 1) { cd31Text += 5; } //increase opacity
      else if (cd31TextTest == 0) { cd31Text -= 5; } //decrease opacity
      tint(255,cd31Text);
      image(hbgImg[8], 120, 290);
      tint(255,255);
    }
    if( hHideChar[cdInt] == false){ image(hearChar[cdInt],490,height-335); } //don't hide character image
  }
  
  /**********************/
  /* STATE == INVENTORY */
  /**********************/
  else if(hearGameState == "inventory"){
    image(hbgImg[5],0,0);
    screenTransition();
    inventFrame++;
    
    //inventory changes
    if( cdInt >= 29 ){ myhInventoryItem[0].name="rock"; myhInventoryItem[0].description="A Rock. Gracie said you would like it...?"; myhInventoryItem[0].icon=inventImgArr[1]; }
    if( hDialogueDone[0] == true ){ myhInventoryItem[1].name="Bully Note"; myhInventoryItem[1].description="A note dropped by bullies. It reads '2010'."; 
                                    myhInventoryItem[1].icon=inventImgArr[2]; } //got bully note from flora, line 51
    
    //selection arrow
    for(int i=0; i<10; i++){ 
      if(hInventSelect%10 == i){ 
        if( i<5 ){ hInventSelectFn(224+(i*69),140); }
        else { hInventSelectFn(225+(69*(i-5)),221); }
      } 
    }
    
    //display inventory img, description
    for(int i=0; i<myhInventoryItem.length; i++){ 
      if( i < 5 ){ inventX = 237+(69*i); inventY = 145; }
      else{ inventX = 237+(69*(i-5)); inventY = 226; }
      myhInventoryItem[i].displayImg(inventX, inventY); 
      if( (i % 10) == (hInventSelect % 10)){ myhInventoryItem[i].displayDesc(); } 
    }
  }
  
  tint(255,150);  
  soundIconFn();
  image(hbgImg[10], 20,20);
  tint(255,255);
}
