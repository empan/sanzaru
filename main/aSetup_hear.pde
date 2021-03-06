void hearGameSetup(){
/**************************************/
/* HEAR GAME
/**************************************/
 myDialogueRect = new DialogueRect();
 myOptionBoxes = new OptionBoxes();
 
 hearAudio[0] = minim.loadFile("assignment05/sound/dialogueClick.mp3"); hearAudio[0].setGain(-20);
 hearAudio[1] = minim.loadFile("assignment05/sound/inventoryClose.mp3"); hearAudio[1].setGain(-20);
 hearAudio[2] = minim.loadFile("assignment05/sound/inventoryOpen.mp3"); hearAudio[2].setGain(-20);
 hearAudio[3] = minim.loadFile("assignment05/sound/hearBGexport.mp3"); hearAudio[2].setGain(-10);
 hearAudio[4] = minim.loadFile("assignment05/sound/Chris_Zabriskie_-_02_-_Readers_Do_You_Read.mp3");
 hearAudio[5] = minim.loadFile("assignment05/sound/Ergo_Phizmiz_-_02_-_A_Favourite_Place.mp3");
 
 inventImgArr[0] = loadImage("assignment05/inventory_none.png");
 inventImgArr[1] = loadImage("assignment05/inventory_rock.png");
 inventImgArr[2] = loadImage("assignment05/inventory_note.png");
 inventImgArr[3] = loadImage("assignment05/inventory_none.png");
 inventImgArr[4] = loadImage("assignment05/inventory_none.png");
 inventImgArr[5] = loadImage("assignment05/inventory_none.png");
 inventImgArr[6] = loadImage("assignment05/inventory_none.png");
 inventImgArr[7] = loadImage("assignment05/inventory_none.png");
 inventImgArr[8] = loadImage("assignment05/inventory_none.png");
 inventImgArr[9] = loadImage("assignment05/inventory_none.png");
 
 for(int i=0; i<myhInventoryItem.length; i++){ myhInventoryItem[i] = new hInventoryItem("[Empty]","There's nothing here!", inventImgArr[0]); }
 
 hbgImg[0] = loadImage("assignment05/hbg01.png"); hbgImg[1] = loadImage("assignment05/hintro.png"); hbgImg[2] = loadImage("assignment05/hintroPress.png");
 hbgImg[3] = loadImage("assignment05/inventory.png"); hbgImg[4] = loadImage("assignment05/inventory2.png"); hbgImg[5] = loadImage("assignment05/inventoryBlank.png");
 hbgImg[6] = loadImage("assignment05/inventorySelect.png"); hbgImg[7] = loadImage("assignment05/inventorySelect2.png"); hbgImg[8] = loadImage("assignment05/pressEnter.png");
 hbgImg[9] = loadImage("assignment05/hbg02.png"); hbgImg[10] = loadImage("assignment05/overlayKiku.png"); hbgImg[11] = loadImage("assignment05/hbg04_jungle.png");
 
 drx[0]=215; dry[0]=195; drw[0]=250; drh[0]=65; drwRate[0]=22; drhRate[0]=13; playerOptions[0] = false; hTransition[0] = true;
 hearDialogueStrings[0] = "Hey...have you heard the news?"; hTextX[0]=110; hTextY[0]=200; hearChar[0] = loadImage("assignment05/char01.png"); 
 drx[1]=235; dry[1]=195; drw[1]=245; drh[1]=65; drwRate[1]=22; drhRate[1]=13; playerOptions[1] = false; hTransition[1] = true;
 hearDialogueStrings[1] = "Hey...are you feeling okay?"; hTextX[1]=140; hTextY[1]=200; hearChar[1] = loadImage("assignment05/char01.png");
 drx[2]=235; dry[2]=195; drw[2]=300; drh[2]=65; drwRate[2]=30; drhRate[2]=13; playerOptions[2] = false; hTransition[2] = false;
 hearDialogueStrings[2] = "I know you two were good friends.";  hTextX[2]=115; hTextY[2]=200; hearChar[2] = loadImage("assignment05/char01b.png");
 drx[3]=400; dry[3]=300; drw[3]=50; drh[3]=65; drwRate[3]=16; drhRate[3]=13; playerOptions[3] = false; hTransition[3] = false;
 hearDialogueStrings[3] = "...";  hTextX[3]=395; hTextY[3]=300; hearChar[3] = loadImage("assignment05/blackBG2.png");
 drx[4]=400; dry[4]=300; drw[4]=50; drh[4]=65; drwRate[4]=16; drhRate[4]=13; playerOptions[4] = false; hTransition[4] = false;
 hearDialogueStrings[4] = "...";  hTextX[4]=395; hTextY[4]=300; hearChar[4] = loadImage("assignment05/blackBG2.png");
 drx[5]=400; dry[5]=300; drw[5]=95; drh[5]=65; drwRate[5]=16; drhRate[5]=13; playerOptions[5] = false; hTransition[5] = false;
 hearDialogueStrings[5] = "...huff...";  hTextX[5]=375; hTextY[5]=305; hearChar[5] = loadImage("assignment05/blackBG2.png");
 drx[6]=400; dry[6]=300; drw[6]=140; drh[6]=65; drwRate[6]=22; drhRate[6]=13; playerOptions[6] = false; hTransition[6] = false;
 hearDialogueStrings[6] = "...hey you...";  hTextX[6]=355; hTextY[6]=305; hearChar[6] = loadImage("assignment05/blackBG2.png");
 drx[7]=400; dry[7]=300; drw[7]=95; drh[7]=65; drwRate[7]=22; drhRate[7]=13; playerOptions[7] = false; hTransition[7] = false;
 hearDialogueStrings[7] = "...Hey!";  hTextX[7]=375; hTextY[7]=305; hearChar[7] = loadImage("assignment05/blackBG2.png");
 drx[8]=400; dry[8]=300; drw[8]=0; drh[8]=0; drwRate[8]=16; drhRate[8]=13; playerOptions[8] = false; hTransition[8] = true;
 hearDialogueStrings[8] = "";  hTextX[8]=375; hTextY[8]=305; hearChar[8] = loadImage("assignment05/char02.png");
 drx[9]=240; dry[9]=200; drw[9]=250; drh[9]=65; drwRate[9]=22; drhRate[9]=13; playerOptions[9] = true; hTransition[9] = false;
 hearDialogueStrings[9] = "Have you seen Dorian recently!?";  hTextX[9]=130; hTextY[9]=205; hearChar[9] = loadImage("assignment05/char02.png");
 opx[9]=230; opy[9]=300; opw[9]=105; oph[9]=75; opwRate[9]=16; ophRate[9]=13; opS1[9]="Yes!"; opS2[9]="Who...?";
 drx[10]=282; dry[10]=200; drw[10]=420; drh[10]=65; drwRate[10]=40; drhRate[10]=13; playerOptions[10] = false; hTransition[10] = false; hSkip[10] = 1;
 hearDialogueStrings[10] = "Ha! I'm surprised he hasn't locked himself up somewhere.";  hTextX[10]=90; hTextY[10]=205; hearChar[10] = loadImage("assignment05/char02c.png");
 drx[11]=285; dry[11]=200; drw[11]=350; drh[11]=65; drwRate[11]=20; drhRate[11]=13; playerOptions[11] = false; hTransition[11] = false;
 hearDialogueStrings[11] = "Ah, so you haven't met Dorian. Good for you.";  hTextX[11]=130; hTextY[11]=205; hearChar[11] = loadImage("assignment05/char02a.png");
 drx[12]=240; dry[12]=200; drw[12]=250; drh[12]=65; drwRate[12]=22; drhRate[12]=13; playerOptions[12] = true; hTransition[12] = false;
 hearDialogueStrings[12] = "He's in real trouble, that one...";  hTextX[12]=130; hTextY[12]=205; hearChar[12] = loadImage("assignment05/char02b.png");
 opx[12]=230; opy[12]=300; opw[12]=155; oph[12]=50; opwRate[12]=16; ophRate[12]=13; opS1[12]="Why say that?"; opS2[12]="";
 drx[13]=230; dry[13]=200; drw[13]=200; drh[13]=65; drwRate[13]=22; drhRate[13]=13; playerOptions[13] = true; hTransition[13] = false;
 hearDialogueStrings[13] = "You really want to know?";  hTextX[13]=145; hTextY[13]=205; hearChar[13] = loadImage("assignment05/char02c.png");
 opx[13]=230; opy[13]=300; opw[13]=155; oph[13]=75; opwRate[13]=16; ophRate[13]=13; opS1[13]="Tell me!"; opS2[13]="Never mind...";
 drx[14]=255; dry[14]=220; drw[14]=190; drh[14]=65; drwRate[14]=22; drhRate[14]=13; playerOptions[14] = false; hTransition[14] = false;
 hearDialogueStrings[14] = "Ehehe. Well then."; hTextX[14]=180; hTextY[14]=225; hearChar[14] = loadImage("assignment05/char02c.png"); hSkip[14]=1;
 drx[15]=235; dry[15]=195; drw[15]=250; drh[15]=65; drwRate[15]=22; drhRate[15]=13; playerOptions[15] = false; hTransition[15] = false;
 hearDialogueStrings[15] = "Bah. You should know about it."; hTextX[15]=130; hTextY[15]=200; hearChar[15] = loadImage("assignment05/char02b.png"); 
 drx[16]=245; dry[16]=220; drw[16]=157; drh[16]=65; drwRate[16]=22; drhRate[16]=13; playerOptions[16] = false; hTransition[16] = false;
 hearDialogueStrings[16] = "Yesterday night......"; hTextX[16]=183; hTextY[16]=225; hearChar[16] = loadImage("assignment05/char02.png"); 
 drx[17]=335; dry[17]=420; drw[17]=337; drh[17]=65; drwRate[17]=32; drhRate[17]=13; playerOptions[17] = false; hTransition[17] = true; hHideChar[17] = true;
 hearDialogueStrings[17] = "...the little brat was playing out in the woods."; hTextX[17]=183; hTextY[17]=425; 
 drx[18]=495; dry[18]=385; drw[18]=457; drh[18]=65; drwRate[18]=35; drhRate[18]=13; playerOptions[18] = false; hTransition[18] = false; hHideChar[18] = true;
 hearDialogueStrings[18] = "While he was down there, I was chatting with Mayor Pilkington."; hTextX[18]=283; hTextY[18]=390; 
 drx[19]=345; dry[19]=430; drw[19]=357; drh[19]=65; drwRate[19]=32; drhRate[19]=13; playerOptions[19] = false; hTransition[19] = false; hHideChar[19] = true;
 hearDialogueStrings[19] = "'That boy is summoning demons', he said!"; hTextX[19]=203; hTextY[19]=435; 
 drx[20]=345; dry[20]=430; drw[20]=257; drh[20]=65; drwRate[20]=22; drhRate[20]=13; playerOptions[20] = false; hTransition[20] = false; hHideChar[20] = true;
 hearDialogueStrings[20] = "Of course, that's ridiculous."; hTextX[20]=253; hTextY[20]=435; 
 drx[21]=345; dry[21]=430; drw[21]=257; drh[21]=65; drwRate[21]=22; drhRate[21]=13; playerOptions[21] = false; hTransition[21] = false; hHideChar[21] = true;
 hearDialogueStrings[21] = "What he was really doing..."; hTextX[21]=253; hTextY[21]=435; 
 drx[22]=235; dry[22]=200; drw[22]=200; drh[22]=65; drwRate[22]=22; drhRate[22]=13; playerOptions[22] = false; hTransition[22] = true;
 hearDialogueStrings[22] = "...was commiting a murder.";  hTextX[22]=145; hTextY[22]=205; hearChar[22] = loadImage("assignment05/char02c.png");
 drx[23]=235; dry[23]=200; drw[23]=290; drh[23]=65; drwRate[23]=22; drhRate[23]=13; playerOptions[23] = false; hTransition[23] = false;
 hearDialogueStrings[23] = "Oh! You were friends with the victim?";  hTextX[23]=110; hTextY[23]=205; hearChar[23] = loadImage("assignment05/char02d.png");
 drx[24]=235; dry[24]=200; drw[24]=330; drh[24]=65; drwRate[24]=22; drhRate[24]=13; playerOptions[24] = false; hTransition[24] = false;
 hearDialogueStrings[24] = "Ha ha! Then you must REALLY hate Dorian.";  hTextX[24]=92; hTextY[24]=205; hearChar[24] = loadImage("assignment05/char02c.png");
 drx[25]=235; dry[25]=200; drw[25]=330; drh[25]=65; drwRate[25]=22; drhRate[25]=13; playerOptions[25] = false; hTransition[25] = false;
 hearDialogueStrings[25] = "You're ok, kid. Here, take this. You'll like it.";  hTextX[25]=92; hTextY[25]=205; hearChar[25] = loadImage("assignment05/char02.png");
 drx[26]=400; dry[26]=300; drw[26]=330; drh[26]=65; drwRate[26]=22; drhRate[26]=13; playerOptions[26] = false; hTransition[26] = false; hHideChar[26] = true;
 hearDialogueStrings[26] = "You obtained some sort of rock...?";  hTextX[26]=282; hTextY[26]=305; hearChar[26] = loadImage("assignment05/blackBG2.png");
 drx[27]=400; dry[27]=420; drw[27]=240; drh[27]=65; drwRate[27]=22; drhRate[27]=13; playerOptions[27] = false; hTransition[27] = true; hHideChar[27] = true;
 hearDialogueStrings[27] = "(This is your inventory.)";  hTextX[27]=322; hTextY[27]=425; hearChar[27] = loadImage("assignment05/blackBG2.png");
 drx[28]=400; dry[28]=420; drw[28]=320; drh[28]=65; drwRate[28]=22; drhRate[28]=13; playerOptions[28] = false; hTransition[28] = false; hHideChar[28] = true;
 hearDialogueStrings[28] = "(Press Enter at any time to access it.)";  hTextX[28]=282; hTextY[28]=425; hearChar[28] = loadImage("assignment05/blackBG2.png");
 drx[29]=235; dry[29]=200; drw[29]=200; drh[29]=65; drwRate[29]=22; drhRate[29]=13; playerOptions[29] = false; hTransition[29] = true;
 hearDialogueStrings[29] = "Oh, Mayor Pilkington!";  hTextX[29]=155; hTextY[29]=205; hearChar[29] = loadImage("assignment05/char02a.png");
 drx[30]=235; dry[30]=220; drw[30]=150; drh[30]=65; drwRate[30]=22; drhRate[30]=13; playerOptions[30] = false; hTransition[30] = true;
 hearDialogueStrings[30] = "Hello, citizens.";  hTextX[30]=184; hTextY[30]=225; hearChar[30] = loadImage("assignment05/char03.png");
 drx[31]=270; dry[31]=220; drw[31]=450; drh[31]=65; drwRate[31]=22; drhRate[31]=13; playerOptions[31] = false; hTransition[31] = true; hSkip[31] = -1;
 hearDialogueStrings[31] = "Hey, you should show the Mayor that thing in your inventory.";  hTextX[31]=64; hTextY[31]=225; hearChar[31] = loadImage("assignment05/char02a.png");
 drx[32]=270; dry[32]=220; drw[32]=225; drh[32]=65; drwRate[32]=22; drhRate[32]=13; playerOptions[32] = false; hTransition[32] = true; hSkip[32] = 1;
 hearDialogueStrings[32] = "Oh, what do you have here?";  hTextX[32]=173; hTextY[32]=225; hearChar[32] = loadImage("assignment05/char03.png");
 drx[34]=270; dry[34]=220; drw[34]=55; drh[34]=65; drwRate[34]=22; drhRate[34]=13; playerOptions[34] = false; hTransition[34] = false;
 hearDialogueStrings[34] = "!!!";  hTextX[34]=263; hTextY[34]=225; hearChar[34] = loadImage("assignment05/char03a.png");
 drx[35]=270; dry[35]=220; drw[35]=95; drh[35]=65; drwRate[35]=22; drhRate[35]=13; playerOptions[35] = false; hTransition[35] = false;
 hearDialogueStrings[35] = "IS THIS...";  hTextX[35]=243; hTextY[35]=225; hearChar[35] = loadImage("assignment05/char03a.png");
 drx[36]=270; dry[36]=220; drw[36]=225; drh[36]=65; drwRate[36]=22; drhRate[36]=13; playerOptions[36] = false; hTransition[36] = true;
 hearDialogueStrings[36] = "...DORIAN'S MURDER WEAPON.";  hTextX[36]=171; hTextY[36]=225; hearChar[36] = loadImage("assignment05/char02c.png");
 drx[37]=400; dry[37]=300; drw[37]=50; drh[37]=65; drwRate[37]=16; drhRate[37]=13; playerOptions[37] = false; hTransition[37] = false;
 hearDialogueStrings[37] = "?!!";  hTextX[37]=393; hTextY[37]=303; hearChar[37] = loadImage("assignment05/blackBG2.png");
 drx[38]=270; dry[38]=220; drw[38]=125; drh[38]=65; drwRate[38]=22; drhRate[38]=13; playerOptions[38] = false; hTransition[38] = true;
 hearDialogueStrings[38] = "INCREDIBLE!";  hTextX[38]=230; hTextY[38]=225; hearChar[38] = loadImage("assignment05/char03a.png");
 drx[39]=270; dry[39]=220; drw[39]=195; drh[39]=65; drwRate[39]=22; drhRate[39]=13; playerOptions[39] = false; hTransition[39] = false;
 hearDialogueStrings[39] = "This is very serious.";  hTextX[39]=202; hTextY[39]=225; hearChar[39] = loadImage("assignment05/char03b.png");
 drx[40]=270; dry[40]=220; drw[40]=455; drh[40]=65; drwRate[40]=22; drhRate[40]=13; playerOptions[40] = false; hTransition[40] = false;
 hearDialogueStrings[40] = "Wielder of the rock, I'd like you to investigate the matter fully.";  hTextX[40]=54; hTextY[40]=225; hearChar[40] = loadImage("assignment05/char03b.png");
 drx[41]=270; dry[41]=220; drw[41]=225; drh[41]=65; drwRate[41]=22; drhRate[41]=13; playerOptions[41] = false; hTransition[41] = true;
 hearDialogueStrings[41] = "Yes, and get a move on it!";  hTextX[41]=181; hTextY[41]=225; hearChar[41] = loadImage("assignment05/char02c.png");
 drx[42]=400; dry[42]=200; drw[42]=250; drh[42]=65; drwRate[42]=22; drhRate[42]=13; playerOptions[42] = true; hTransition[42] = true;
 hearDialogueStrings[42] = "Where would you like to go?";  hTextX[42]=308; hTextY[42]=205; hearChar[42] = loadImage("assignment05/blackBG2.png");
 opx[42]=400; opy[42]=300; opw[42]=145; oph[42]=75; opwRate[42]=16; ophRate[42]=13; opS1[42]="To the shops"; opS2[42]="To the jungle";
 
 
 //at the shops with flora
 drx[43]=270; dry[43]=220; drw[43]=0; drh[43]=0; drwRate[43]=22; drhRate[43]=13; playerOptions[43] = true; hTransition[43] = true;
 hearDialogueStrings[43] = "";  hTextX[43]=181; hTextY[43]=225; hearChar[43] = loadImage("assignment05/char05.png");
 opx[43]=400; opy[43]=300; opw[43]=145; oph[43]=75; opwRate[43]=16; ophRate[43]=13; opS1[43]="Talk to Flora"; opS2[43]="Get outta here";
 drx[44]=270; dry[44]=320; drw[44]=150; drh[44]=65; drwRate[44]=22; drhRate[44]=13; playerOptions[44] = false; hTransition[44] = false;
 hearDialogueStrings[44] = "Poor Dorian...";  hTextX[44]=224; hTextY[44]=325; hearChar[44] = loadImage("assignment05/char05.png");
 drx[45]=270; dry[45]=320; drw[45]=50; drh[45]=65; drwRate[45]=22; drhRate[45]=13; playerOptions[45] = false; hTransition[45] = false; hSkip[45] = -3;
 hearDialogueStrings[45] = "...";  hTextX[45]=263; hTextY[45]=325; hearChar[45] = loadImage("assignment05/char05.png");
 drx[46]=270; dry[46]=320; drw[46]=150; drh[46]=65; drwRate[46]=22; drhRate[46]=13; playerOptions[46] = false; hTransition[46] = false; 
 hearDialogueStrings[46] = "That's...!";  hTextX[46]=223; hTextY[46]=325; hearChar[46] = loadImage("assignment05/char05a.png");
 drx[47]=270; dry[47]=320; drw[47]=290; drh[47]=65; drwRate[47]=22; drhRate[47]=13; playerOptions[47] = false; 
 hearDialogueStrings[47] = "Dorian didn't do anything wrong!";  hTextX[47]=157; hTextY[47]=325; hearChar[47] = loadImage("assignment05/char05.png");
 drx[48]=320; dry[48]=320; drw[48]=360; drh[48]=65; drwRate[48]=22; drhRate[48]=13; playerOptions[48] = false; 
 hearDialogueStrings[48] = "The rock is his, but he didn't have it that night!";  hTextX[48]=157; hTextY[48]=325; hearChar[48] = loadImage("assignment05/char05.png");
 drx[49]=313; dry[49]=320; drw[49]=360; drh[49]=65; drwRate[49]=22; drhRate[49]=13; playerOptions[49] = false; 
 hearDialogueStrings[49] = "Some bullies took it from him that morning.";  hTextX[49]=157; hTextY[49]=325; hearChar[49] = loadImage("assignment05/char05a.png");
 drx[50]=310; dry[50]=320; drw[50]=360; drh[50]=65; drwRate[50]=22; drhRate[50]=13; playerOptions[50] = false; 
 hearDialogueStrings[50] = "They ran off after they got it and dropped this.";  hTextX[50]=157; hTextY[50]=325; hearChar[50] = loadImage("assignment05/char05a.png");
 drx[51]=400; dry[51]=300; drw[51]=360; drh[51]=65; drwRate[51]=22; drhRate[51]=13; playerOptions[51] = false; hSkip[51] = -9;
 hearDialogueStrings[51] = "'Bully's Note' has been added to your inventory.";  hTextX[51]=244; hTextY[51]=305; hearChar[51] = loadImage("assignment05/blackBG2.png");
 drx[52]=300; dry[52]=300; drw[52]=300; drh[52]=65; drwRate[52]=22; drhRate[52]=13; playerOptions[52] = false; hSkip[52] = -10;
 hearDialogueStrings[52] = "Dorian didn't have the rock that night.";  hTextX[52]=173; hTextY[52]=305; hearChar[52] = loadImage("assignment05/char05a.png");
 drx[53]=300; dry[53]=300; drw[53]=200; drh[53]=65; drwRate[53]=22; drhRate[53]=13; playerOptions[53] = false; hSkip[53] = -11;
 hearDialogueStrings[53] = "I wonder what it means?";  hTextX[53]=215; hTextY[53]=305; hearChar[53] = loadImage("assignment05/char05a.png");
 
 //at the jungle
 drx[54]=223; dry[54]=220; drw[54]=120; drh[54]=65; drwRate[54]=22; drhRate[54]=13; playerOptions[54] = false; hTransition[54] = true;
 hearDialogueStrings[54] = "I didn't do it!";  hTextX[54]=181; hTextY[54]=225; hearChar[54] = loadImage("assignment05/char06.png");
 drx[55]=270; dry[55]=220; drw[55]=0; drh[55]=0; drwRate[55]=22; drhRate[55]=13; playerOptions[55] = true; hTransition[55] = false;
 hearDialogueStrings[55] = "";  hTextX[55]=0; hTextY[55]=0; hearChar[55] = loadImage("assignment05/char06.png");
 opx[55]=350; opy[55]=250; opw[55]=145; oph[55]=75; opwRate[55]=16; ophRate[55]=13; opS1[55]="Talk to Dorian"; opS2[55]="Get outta here"; 
 drx[56]=270; dry[56]=220; drw[56]=0; drh[56]=0; drwRate[56]=22; drhRate[56]=13; playerOptions[56] = true; hTransition[56] = false;
 hearDialogueStrings[56] = "";  hTextX[56]=181; hTextY[56]=225; hearChar[56] = loadImage("assignment05/char06.png"); 
 opx[56]=350; opy[56]=250; opw[56]=225; oph[56]=75; opwRate[56]=16; ophRate[56]=13; opS1[56]="What happened last night?"; opS2[56]="About Gracie..."; 
 drx[57]=300; dry[57]=220; drw[57]=260; drh[57]=65; drwRate[57]=22; drhRate[57]=13; playerOptions[57] = false; hTransition[57] = false;
 hearDialogueStrings[57] = "I was hanging around the jungle...";  hTextX[57]=181; hTextY[57]=225; hearChar[57] = loadImage("assignment05/char06.png");
 drx[58]=305; dry[58]=220; drw[58]=280; drh[58]=65; drwRate[58]=22; drhRate[58]=13; playerOptions[58] = false; hTransition[58] = false;
 hearDialogueStrings[58] = "...and then those bullies showed up.";  hTextX[58]=181; hTextY[58]=225; hearChar[58] = loadImage("assignment05/char06.png");
 drx[59]=310; dry[59]=220; drw[59]=290; drh[59]=65; drwRate[59]=22; drhRate[59]=13; playerOptions[59] = false; hTransition[59] = false;
 hearDialogueStrings[59] = "I swear I wasn't doing anything though!";  hTextX[59]=181; hTextY[59]=225; hearChar[59] = loadImage("assignment05/char06a.png");
 drx[60]=273; dry[60]=220; drw[60]=225; drh[60]=65; drwRate[60]=22; drhRate[60]=13; playerOptions[60] = false; hTransition[60] = false;
 hearDialogueStrings[60] = "Just...looking for more rocks.";  hTextX[60]=181; hTextY[60]=225; hearChar[60] = loadImage("assignment05/char06.png"); hSkip[60] = -6;
 drx[61]=304; dry[61]=220; drw[61]=280; drh[61]=65; drwRate[61]=22; drhRate[61]=13; playerOptions[61] = false; hTransition[61] = false;
 hearDialogueStrings[61] = "Yeah, she doesn't like me very much.";  hTextX[61]=181; hTextY[61]=225; hearChar[61] = loadImage("assignment05/char06.png");
 drx[62]=337; dry[62]=220; drw[62]=335; drh[62]=65; drwRate[62]=22; drhRate[62]=13; playerOptions[62] = false; hTransition[62] = false; 
 hearDialogueStrings[62] = "I accidentally stepped on her cat's tail last year.";  hTextX[62]=181; hTextY[62]=225; hearChar[62] = loadImage("assignment05/char06.png");
 drx[63]=245; dry[63]=220; drw[63]=160; drh[63]=65; drwRate[63]=22; drhRate[63]=13; playerOptions[63] = false; hTransition[63] = false; hSkip[63] = -9;
 hearDialogueStrings[63] = "That lady is crazy!";  hTextX[63]=181; hTextY[63]=225; hearChar[63] = loadImage("assignment05/char06a.png");
 drx[64]=255; dry[64]=220; drw[64]=190; drh[64]=65; drwRate[64]=22; drhRate[64]=13; playerOptions[64] = false; hTransition[64] = false;
 hearDialogueStrings[64] = "How did you get that?!";  hTextX[64]=181; hTextY[64]=225; hearChar[64] = loadImage("assignment05/char06a.png");
 drx[65]=310; dry[65]=220; drw[65]=290; drh[65]=65; drwRate[65]=22; drhRate[65]=13; playerOptions[65] = false; hTransition[65] = false; hSkip[65] = -11;
 hearDialogueStrings[65] = "I use the rocks to scare off the crows.";  hTextX[65]=181; hTextY[65]=225; hearChar[65] = loadImage("assignment05/char06.png");
 drx[66]=235; dry[66]=220; drw[66]=160; drh[66]=65; drwRate[66]=22; drhRate[66]=13; playerOptions[66] = false; hTransition[66] = false;
 hearDialogueStrings[66] = "What is that?";  hTextX[66]=181; hTextY[66]=225; hearChar[66] = loadImage("assignment05/char06.png"); hSkip[66] = -12;
 
 //bullies
 drx[67]=400; dry[67]=300; drw[67]=190; drh[67]=65; drwRate[67]=22; drhRate[67]=13; playerOptions[67] = false; hTransition[67] = true;
 hearDialogueStrings[67] = "Who are you??";  hTextX[67]=357; hTextY[67]=305; hearChar[67] = loadImage("assignment05/blackBG2.png");
 drx[68]=310; dry[68]=220; drw[68]=150; drh[68]=65; drwRate[68]=22; drhRate[68]=13; playerOptions[68] = false; hTransition[68] = true;
 hearDialogueStrings[68] = "I'm tired, bro.";  hTextX[68]=263; hTextY[68]=225; hearChar[68] = loadImage("assignment05/char07.png");
 drx[69]=320; dry[69]=220; drw[69]=250; drh[69]=65; drwRate[69]=22; drhRate[69]=13; playerOptions[69] = false; hTransition[69] = false;
 hearDialogueStrings[69] = "I don't really feel like talking.";  hTextX[69]=221; hTextY[69]=225; hearChar[69] = loadImage("assignment05/char07.png");
 drx[70]=270; dry[70]=220; drw[70]=130; drh[70]=65; drwRate[70]=22; drhRate[70]=13; playerOptions[70] = false; hTransition[70] = false;
 hearDialogueStrings[70] = "lkjsafd";  hTextX[70]=181; hTextY[70]=225; hearChar[70] = loadImage("assignment05/char07.png");
 
}
