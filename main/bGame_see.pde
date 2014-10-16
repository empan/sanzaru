
/***************************************************************/
/* SEE GAME
/***************************************************************/
void seeGame(){
  /******************/  
  /* STATE == START */
  /******************/
  titleAudio[0].pause();
  if(seeGameState == "start"){
    tint(255,255);
    image(mbgImg[0],0,0);
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
  
  /******************/  
  /* STATE == PLAY */
  /******************/
  else if(seeGameState == "play"){
    //cut scene
    screenTransition();
    image(mbgImg[1],mbgxPos,0);
    if(mbgxPos > -750){ mbgxPos-=.5; }
    
    if(miruInt >= 8){ seeGameState = "puzzSelect"; }
    else{
      myDialogueRect.display(mirux[miruInt],miruy[miruInt],miruw[miruInt],miruh[miruInt],miruwRate[miruInt],miruhRate[miruInt]);
      if(mTransition[miruInt] == true){ screenTransition(); } //fade in
      fill(255);
      text(miruDialogueStrings[miruInt],mTextX[miruInt],mTextY[miruInt]);
      
      if( mHideChar[miruInt] == false){ image(miruChar[miruInt],490,height-348); } //don't hide character image
    }
  }
  
  /***********************/  
  /* STATE == PUZZSELECT */
  /***********************/
  else if(seeGameState == "puzzSelect"){
    tint(255,screenOpacity);
    screenOpacity++;
    image(mbgImg[1],-20,0);
    
    /* ARROWS */
    tint(255,255);
    if (mxPosRArrow > 690) { marrowTest = 0;  } //test if arrow needs to go in
    else if (mxPosRArrow < 670) { marrowTest = 1; } //test if arrow needs to go out
    if (marrowTest == 1) { mxPosRArrow += .5; mxPosLArrow -= .5; } //move arrows
    else if (marrowTest == 0) { mxPosRArrow -= .5; mxPosLArrow += .5; } //move arrows
    
    if(mPuzzSelect == 0){ if(frameCountEquiv % 40 >= 0 && frameCountEquiv % 40 < 20){ image(mbgImg[5],-20,0);  } else{ image(mbgImg[6],-20,0); }  }
    else if(mPuzzSelect == 1){ if(frameCountEquiv % 40 >= 0 && frameCountEquiv % 40 < 20){ image(mbgImg[7],-20,0);  } else{ image(mbgImg[8],-20,0); } }
    else if(mPuzzSelect == 2){ if(frameCountEquiv % 40 >= 0 && frameCountEquiv % 40 < 20){ image(mbgImg[9],-20,0);  } else{ image(mbgImg[10],-20,0); } }
    else if(mPuzzSelect == 3){ if(frameCountEquiv % 40 >= 0 && frameCountEquiv % 40 < 20){ image(mbgImg[11],-750,0);  } else{ image(mbgImg[12],-750,0); } }    
    else if(mPuzzSelect == 4){ if(frameCountEquiv % 40 >= 0 && frameCountEquiv % 40 < 20){ image(mbgImg[13],-750,0);  } else{ image(mbgImg[14],-750,0); } }
    else if(mPuzzSelect == 5){ if(frameCountEquiv % 40 >= 0 && frameCountEquiv % 40 < 20){ image(mbgImg[15],-750,0);  } else{ image(mbgImg[16],-750,0); } }
    
    if(mPuzzSelect < 3){ image(mbgImg[4], mxPosRArrow,390); }
    else{ image(mbgImg[3], mxPosLArrow,390); }
  }
  
  tint(255,150);  
  soundIconFn();
  image(mbgImg[2],20,20);
  tint(255,255);
}

void mPuzz02(){
  image(mbgImg[17],0,0); //change this to a boolean
}
