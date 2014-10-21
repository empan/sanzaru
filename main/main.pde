/**********************************************/
/* Global Variables
/**********************************************/
import ddf.minim.*;
Minim minim;
AudioPlayer[] titleAudio = new AudioPlayer[3]; 
AudioPlayer[] dialogueAudio = new AudioPlayer[5];
AudioPlayer[] hearAudio = new AudioPlayer[6];

PImage titlebgImg, titleEnterImg, blackBGImg;
PImage[] titleIconImg = new PImage[3];
PImage[] soundIconImg = new PImage[2];
PImage rarrowImg, larrowImg;

String state = "title"; //title, hearGame, seeGame, speakGame, blackOut
String nextState = "title";
String levelSelect = "hear";

float xPosRArrow = 575; float xPosLArrow = 230; 

int arrowTest, titleEnterOpacityTest;
int soundOn = 1;
int titleEnterOpacity = 100;
int blackOpacity, blackOpacityTest, blackCount, screenOpacity, frameCountEquiv;

/**********************************************/
/* See Variables
/**********************************************/
String[] miruDialogueStrings = new String[200];
String seeGameState = "start"; //start, play, puzzSelect

PImage[] miruChar = new PImage[200]; 
PImage[] mbgImg = new PImage[100];

float mbgxPos;
float mxPosRArrow = 650; float mxPosLArrow = 50; 
float mCircleOp = 70;

int[] miruhRate = new int[200]; int[] miruwRate = new int[200]; int[] miruh = new int[200]; int[] miruw = new int[200];
int[] mirux = new int[200]; int[] miruy = new int[200]; 
int[] miruTextX = new int[200]; int[] miruTextY = new int[200];
int[] mSkip = new int[200];
int[] mTextX = new int[200]; int[] mTextY = new int[200];
int miruInt, marrowTest, mCircleTest, mPuzzSelect;

boolean[] mTransition = new boolean[200];
boolean[] mHideChar = new boolean[200];

/**********************************************/
/* Hear Variables
/**********************************************/
DialogueRect myDialogueRect;
OptionBoxes myOptionBoxes;
hInventoryItem[] myhInventoryItem = new hInventoryItem[10];

String hearGameState = "start"; //start, play, inventory
String[] hearDialogueStrings = new String[200];
String[] opS1 = new String[200]; String[] opS2 = new String[200];

PImage[] hearChar = new PImage[200]; 
PImage[] hbgImg = new PImage[100];
PImage[] inventImgArr = new PImage[10];

int[] drhRate = new int[200]; int[] drwRate = new int[200]; int[] drh = new int[200]; int[] drw = new int[200];
int[] drx = new int[200]; int[] dry = new int[200]; //dialogue rectangle
int[] hTextX = new int[200]; int[] hTextY = new int[200];
int[] oph = new int[200]; int[] opw = new int[200]; int[] opx = new int[200]; int[] opy = new int[200]; 
int[] opwRate = new int[200]; int[] ophRate = new int[200];
int[] hSkip = new int[200];
int rectWidth, rectHeight;
int cdInt; //"Current Dialogue Int"
int opSelect; //which option is selected?
int hintroEnterOpacityTest, inventFrame, hInventSelect, inventY, inventX;
int arrowFrame = 0; 

float hbgxPos, hintroEnterOpacity = 100;  float cd31Text, cd31TextTest;

boolean[] playerOptions = new boolean[200];
boolean[] hTransition = new boolean[200];
boolean[] hHideChar = new boolean[200];
boolean[] hDialogueDone = new boolean[200];
boolean rectDrawn;

/**********************************************/
/* Speak Variables
/**********************************************/
String speakGameState = "start"; //start

PImage[] sbgImg = new PImage[100];

/***********************************************************************************************************************************************************/
/* SUPPORTING FUNCTIONS
/***********************************************************************************************************************************************************/
void blackOut(){
  blackCount++;
  if (blackOpacity > 255) { blackOpacityTest = 0;  } //test if opacity needs to go down
  else if (blackOpacity < 100) { blackOpacityTest = 1; } //test if opacity needs to go up
  if (blackOpacityTest == 1) { blackOpacity += 5; } //increase opacity
  else if (blackOpacityTest == 0) { blackOpacity -= 5; } //decrease opacity
  fill(0,blackOpacity);
  rect(0,0,width,height);
  if(blackCount%50 == 0) { screenOpacity = 0; state = nextState; blackOpacity = 0; }
}

void screenTransition(){
  tint(255,screenOpacity);
  screenOpacity+=5;
}

void soundIconFn(){
  if(soundOn == 1){ 
    image(soundIconImg[1], 715,25);
    titleAudio[0].unmute(); titleAudio[1].unmute(); titleAudio[2].unmute(); 
    for(int i=0; i<hearAudio.length; i++){ hearAudio[i].unmute(); }
  }
  else{ 
    image(soundIconImg[0], 715,25); 
    titleAudio[0].mute(); titleAudio[1].mute(); titleAudio[2].mute();
    for(int i=0; i<hearAudio.length; i++){ hearAudio[i].mute(); }
  }
}

void hInventSelectFn(int x, int y){
  if(inventFrame % 70 >= 0 && inventFrame % 70 < 35){ image(hbgImg[6],x,y); }
  else{ image(hbgImg[7],x,y); }
}

/**************************************************************************************************************************************************************/
/* GAMEPLAY
/*************************************************************************************************************************************************************/
void theTitle(){
  tint(255,screenOpacity);
  screenOpacity++;
  image(titlebgImg, 0,0);  
  soundIconFn();
  titleAudio[0].play();
  hearAudio[3].mute();
  imageMode(CENTER);
  
  /* PRESS ENTER */
  if (titleEnterOpacity > 255) { titleEnterOpacityTest = 0;  } //test if opacity needs to go down
  else if (titleEnterOpacity < 100) { titleEnterOpacityTest = 1; } //test if opacity needs to go up
  if (titleEnterOpacityTest == 1) { titleEnterOpacity += 5; } //increase opacity
  else if (titleEnterOpacityTest == 0) { titleEnterOpacity -= 5; } //decrease opacity
  tint(255,titleEnterOpacity);
  image(titleEnterImg, width/2, 465);
  tint(255,255);
  
  /* ARROWS */
  tint(255,255);
  if (xPosRArrow > 579) { arrowTest = 0;  } //test if arrow needs to go in
  else if (xPosRArrow < 575) { arrowTest = 1; } //test if arrow needs to go out
  if (arrowTest == 1) { xPosRArrow += .3; xPosLArrow -= .3; } //move arrows
  else if (arrowTest == 0) { xPosRArrow -= .3; xPosLArrow += .3; } //move arrows
  
  image(rarrowImg, xPosRArrow,390);
  image(larrowImg, xPosLArrow,390);
  
  /* ICON DISPLAY */
  if(levelSelect == "see"){
       tint(255,255);
       image(titleIconImg[0],300+0*100,390);
       tint(255,50);
       image(titleIconImg[1],300+1*100,390);
       image(titleIconImg[2],300+2*100,390);
       tint(255,50);
  }
  else if(levelSelect == "hear"){
       tint(255,255);
       image(titleIconImg[1],300+1*100,390);
       tint(255,50);
       image(titleIconImg[0],300+0*100,390);
       image(titleIconImg[2],300+2*100,390);
  }
  else if(levelSelect == "speak"){
       tint(255,255);
       image(titleIconImg[2],300+2*100,390);
       tint(255,50);
       image(titleIconImg[0],300+0*100,390);
       image(titleIconImg[1],300+1*100,390);
  }
  
  tint(255,255);
  imageMode(CORNER);
}

/****************************************************************************************************************************************************/
/* MAIN FUNCTIONS
/***************************************************************************************************************************************************/
void setup(){
 size(800,600); 
 background(0);
 
 blackBGImg = loadImage("assignment05/blackBG.png"); 
 titlebgImg = loadImage("assignment05/titlebg.png"); titleEnterImg = loadImage("assignment05/titleEnter.png");
 titleIconImg[0] = loadImage("assignment05/titleSee.png"); titleIconImg[1] = loadImage("assignment05/titleHear.png"); titleIconImg[2] = loadImage("assignment05/titleSpeak.png");
 rarrowImg = loadImage("assignment05/rarrow.png"); larrowImg = loadImage("assignment05/larrow.png");
 soundIconImg[0] = loadImage("assignment05/soundToggle.png"); soundIconImg[1] = loadImage("assignment05/soundToggle2.png");
 
 minim = new Minim(this);
 titleAudio[0] = minim.loadFile("assignment05/sound/Chris_Zabriskie_-_06_-_Cylinder_Six_1.mp3"); titleAudio[0].loop(); //BG
 titleAudio[1] = minim.loadFile("assignment05/sound/Blip_Select.mp3"); titleAudio[1].setGain(-20); //L/R
 titleAudio[2] = minim.loadFile("assignment05/sound/enterAudio.mp3"); titleAudio[2].setGain(-20); //Press Enter
 //dialogueAudio[0] = minim.loadFile("assignment05/sound/Pickup_Coin2.mp3");
  
 speakGameSetup();
 miruGameSetup();
 hearGameSetup();
 
}

void draw(){
  //cdInt=65;
  //miruInt=5;
  //println(cdInt);
  textSize(14);
  frameCountEquiv++;
 
  if(state == "title"){ theTitle();}
  else if(state == "blackOut"){ blackOut(); }
  else if(state == "seeGame"){ seeGame(); }
  else if(state == "hearGame"){ hearGame(); }
  else if(state == "speakGame"){ speakGame(); }
  
}

void keyPressed(){  
  if(key == '0'){ screenOpacity=0; screenOpacity++; state = "title"; titleAudio[0].rewind(); }
  if(key == 'm' || key == 'M'){ soundOn *= -1; }
  
  if(state == "title"){
    if(key == CODED){
      if(keyCode == LEFT){
        titleAudio[1].rewind(); titleAudio[1].play(); 
        if(levelSelect == "see"){ levelSelect = "speak"; }
        else if(levelSelect == "hear"){ levelSelect = "see"; }
        else if(levelSelect == "speak"){ levelSelect = "hear"; }
      }
      if(keyCode == RIGHT){
        titleAudio[1].rewind(); titleAudio[1].play();
        if(levelSelect == "see"){ levelSelect = "hear"; }
        else if(levelSelect == "hear"){ levelSelect = "speak"; }
        else if(levelSelect == "speak"){ levelSelect = "see"; }
      }
    }
    if( (key == ENTER || key == RETURN) ){ 
      titleAudio[2].rewind(); titleAudio[2].play();
      titleAudio[0].pause();
      if(levelSelect == "see"){ nextState = "seeGame"; }
      else if(levelSelect == "hear"){ nextState = "hearGame"; }
      else if(levelSelect == "speak"){ nextState = "speakGame"; }
      state = "blackOut"; 
    }
  }
  
  if(state == "seeGame"){
    if(key == CODED){
      if(keyCode == RIGHT){
        if(mPuzzSelect != 5){ mPuzzSelect ++; }
      }
      if(keyCode == LEFT){
        if(mPuzzSelect != 0){ mPuzzSelect --; }
      }
    }
    if(key == 'z' || key == 'Z'){
      hearAudio[0].rewind(); hearAudio[0].play();
      if( seeGameState=="start" ){ seeGameState = "play"; }
      if( seeGameState=="play" ){
        if(miruInt > 5){ screenOpacity = 0; } //excludes cut-scene
        miruInt += 1; 
        opSelect = 0;
        myDialogueRect.rectWidth = 0;
        myDialogueRect.rectHeight = 0;
      }
    }
    if(key == ENTER || key == RETURN){
      if(mPuzzSelect == 2){ mPuzz02(); }
    }
  }
  
  if(state == "hearGame"){
    if(key == CODED){
      if(keyCode == UP){
        titleAudio[1].rewind(); titleAudio[1].play(); 
        opSelect = 0;
        if(hInventSelect < 1){ hInventSelect = 5; }
        hInventSelect-=5;
      }
      if(keyCode == DOWN){
        titleAudio[1].rewind(); titleAudio[1].play(); 
        opSelect = 1;
        hInventSelect+=5;
      }
      if(keyCode == RIGHT){ 
        titleAudio[1].rewind(); titleAudio[1].play(); 
        hInventSelect++; 
      }
      if(keyCode == LEFT){ 
        titleAudio[1].rewind(); titleAudio[1].play(); 
        if(hInventSelect < 1){ hInventSelect = 1; }
        hInventSelect--; 
      }
    }
    if(key == 'z' || key == 'Z'){
      hearAudio[0].rewind(); hearAudio[0].play();
      if( hearGameState=="start" ){ hearGameState = "play"; cdInt = 0; }
      if( hearGameState=="play" ){
        cdInt += (opSelect + 1); 
        opSelect = 0;
        screenOpacity = 0;
        arrowFrame = 0;
        myDialogueRect.rectWidth = 0;
        myDialogueRect.rectHeight = 0;
        if(cdInt == 43 ){ for(int i=3; i<5; i++){ hearAudio[i].rewind(); } }
        else if(cdInt == 54 ){ hearAudio[3].rewind(); }
      }
      if( hearGameState=="inventory"){
        if( cdInt == 31 ){ screenOpacity=0; screenTransition(); cdInt++; hearGameState="play"; } //show rock to mayor
        if( cdInt >= 43 && cdInt < 46 && hDialogueDone[0] == false && hInventSelect%10 == 0 ){ cdInt = 46; opSelect = 0; hearGameState="play"; } //show rock to flora, bully note dialogue [0]
        else if( cdInt >= 43 && cdInt < 46 && hDialogueDone[0] == true && hInventSelect%10 == 0 ){ cdInt = 52; opSelect = 0; hearGameState="play"; } //after bully note, rock shown to flora
        else if( cdInt >= 43 && cdInt < 46 && hDialogueDone[0] == true && hInventSelect%10 == 1){ cdInt = 53; opSelect = 0; hearGameState="play"; } //after bully note, note shown to flora
        else if( cdInt >= 54 && cdInt < 63 && hInventSelect%10 == 0){ cdInt = 64; opSelect = 0; hearGameState="play"; } //at jungle, rock shown to dorian
        else if( cdInt >= 54 && cdInt < 63 && hDialogueDone[0] == true && hInventSelect%10 == 1){ cdInt = 66; opSelect = 0; hearGameState="play"; } //at jungle, note shown dorian
      }
    }
    if(key == 'x' || key =='X' ){
      if( hearGameState=="inventory"){ 
        hearAudio[1].rewind(); hearAudio[1].play();
        hearGameState = "play";  
      }
    }
    if(key == ENTER || key == RETURN){
      hInventSelect = 0;
      for(int i=3; i<6; i++){ hearAudio[i].pause();hearAudio[i].rewind(); }
      hearAudio[2].rewind(); hearAudio[2].play();
      screenOpacity=0; screenTransition(); hearGameState="inventory";
    }
    
  }
  
}

