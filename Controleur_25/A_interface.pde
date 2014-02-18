//GLOBAL
// interface picture      
PImage[] vignette = new PImage[49] ;
//simple
PImage[] vignette_OFF_in_simple ;
PImage[] vignette_OFF_out_simple ;
PImage[] vignette_ON_in_simple ;
PImage[] vignette_ON_out_simple ;
//texture
PImage[] vignette_OFF_in_texture ;
PImage[] vignette_OFF_out_texture ;
PImage[] vignette_ON_in_texture ;
PImage[] vignette_ON_out_texture ;
//typography
PImage[] vignette_OFF_in_typography ;
PImage[] vignette_OFF_out_typography ;
PImage[] vignette_ON_in_typography ;
PImage[] vignette_ON_out_typography ;
PImage[] bouton = new PImage[18] ;

//SLIDER


//SLIDER
RegletteHorizontale [] RH = new RegletteHorizontale [numSlider] ;
int suivitRH[] = new int[numSlider] ; 
int posWidthRH[] = new int[numSlider] ;
int posHeightRH[] = new int[numSlider] ;
int longueurRH[] = new int[numSlider] ;
int hauteurRH[] = new int[numSlider] ;
float valueSlider[] = new float[numSlider] ;


//BOUTON
int numButton = 100 ;
int numButtonGlobal = 11 ;
int numButtonObj = 120 ;
int numButtonTex = 120 ;
int numButtonTypo = 120 ;
int numButtonDropdown = 100 ;
//BUTTON
int valueButtonGlobal[] = new int[numButtonGlobal] ;
int valueButtonObj[] = new int[numButtonObj] ;
int valueButtonTex[] = new int[numButtonTex] ;
int valueButtonTypo[] = new int[numButtonTypo] ;

Simple  BOmidi, BOcurtain, buttonMeteo,
        Bbeat, Bkick, Bsnare, Bhat;
        
//bouton objet
Simple[] BOf = new Simple[numButton] ;

int transparenceBordBOf[] =      new int[numButton] ;
int epaisseurBordBOf[] =         new int[numButton] ;
int transparenceBoutonBOf[] =    new int[numButton] ;
int posWidthBOf[] =           new int[numButton] ;
int posHeightBOf[] =             new int[numButton] ;
int longueurBOf[] =              new int[numButton] ;
int hauteurBOf[] =               new int[numButton] ;

//bouton texture
Simple[] BTf = new Simple[numButton] ;

int transparenceBordBTf[] =      new int[numButton] ;
int epaisseurBordBTf[] =         new int[numButton] ;
int transparenceBoutonBTf[] =    new int[numButton] ;
int posWidthBTf[] =           new int[numButton] ;
int posHeightBTf[] =             new int[numButton] ;
int longueurBTf[] =              new int[numButton] ;
int hauteurBTf[] =               new int[numButton] ;

//bouton typo
Simple[] BTYf = new Simple[numButton] ;

int transparenceBordBTYf[] =      new int[numButton] ;
int epaisseurBordBTYf[] =         new int[numButton] ;
int transparenceBoutonBTYf[] =    new int[numButton] ;
int posWidthBTYf[] =           new int[numButton] ;
int posHeightBTYf[] =             new int[numButton] ;
int longueurBTYf[] =              new int[numButton] ;
int hauteurBTYf[] =               new int[numButton] ;

//bouton image
Simple[] BIf = new Simple[numButton] ;

int transparenceBordBIf[] =      new int[numButton] ;
int epaisseurBordBIf[] =         new int[numButton] ;
int transparenceBoutonBIf[] =    new int[numButton] ;
int posWidthBIf[] =           new int[numButton] ;
int posHeightBIf[] =             new int[numButton] ;
int longueurBIf[] =              new int[numButton] ;
int hauteurBIf[] =               new int[numButton] ;

int transparenceBordBE1, epaisseurBordBE1, transparenceBoutonBE1, 
    posWidthBE1, posHeightBE1, longueurBE1, hauteurBE1 ;
    


//Variable must be send to Scene
//paramètre bouton
int EtatBOf[] = new int[numButton] ;
int EtatBTf[] = new int[numButton] ;
int EtatBTYf[] = new int[numButton] ;
int EtatBIf[] = new int[numButton] ;

    
//bouton midi
int EtatBOmidi ;
int transparenceBordBOmidi, epaisseurBordBOmidi, transparenceBoutonBOmidi, 
    posWidthBOmidi, posHeightBOmidi, longueurBOmidi, hauteurBOmidi ;

//bouton curtain
int EtatBOcurtain ;
int transparenceBordBOcurtain, epaisseurBordBOcurtain, transparenceBoutonBOcurtain, 
    posWidthBOcurtain, posHeightBOcurtain, longueurBOcurtain, hauteurBOcurtain ;

//bouton Musique
int EtatBbeat, EtatBkick, EtatBsnare, EtatBhat ;
int   posWidthBeat, posHeightBeat, longueurBeat,  hauteurBeat,
  posWidthKick, posHeightKick, longueurKick,  hauteurKick,
  posWidthSnare, posHeightSnare, longueurSnare,  hauteurSnare,
  posWidthHat, posHeightHat, longueurHat,  hauteurHat ;


//paramètres réglette couleur
int posXRH[] =      new int[numSlider*2] ;

//paramètre généraux interface
int hauteurRegH,
    mgRHc1, mgRHc2, mgRHc3,
    posHeightBO,  posWidthBO,
    posHeightRO,  posWidthRO,
    posHeightBT,  posWidthBT,
    posHeightRT,  posWidthRT,
    posHeightBTY, posWidthBTY,
    posHeightRTY, posWidthRTY,
    posHeightBI,  posWidthBI,
    posHeightRI,  posWidthRI ;

//SETUP
void interfaceSetup() {
  fontSetup() ;
  midiSetup() ;
  importPicButtonSetup() ;
  buttonSliderSetup() ;
  constructorSliderButton() ;
}

void interfaceDraw() {
  textDraw() ;
  midiDraw() ;
  sliderDraw() ;
  moletteDraw () ;
  buttonDraw () ;
}

//END GLOBAL
///////////





//SPECIFIC VOID of INTERFACE


//MIDI
//SETUP
void midiSetup() {
  //get an instance of MidiIO
  midiIO = MidiIO.getInstance(this);
  //open the first midi channel of the first device if there Input
  if ( midiIO.numberOfInputDevices() > 0 ) midiIO.openInput(0,0);
}
//DRAW
void midiDraw() {
  //save midi setting molette
  String [] newSettingMidi = new String[numSlider] ;
  if ( EtatBOmidi == 1 ) selectMidi = true ; else selectMidi = false ;
}
//END MIDI



//BUTTON

//SETUP
void buttonSliderSetup() {
  PVector columnPosVert = new PVector(22,200, 380) ; // give the pos of the column on the axis "x"
  //PARAMÈTRE SLIDER and BUTTON
  mgRHc1 = (int)columnPosVert.x ; mgRHc2 = (int)columnPosVert.y ; mgRHc3 = (int)columnPosVert.z ;
  hauteurRegH = 6 ;
  posHeightBO  = 110  ;               posWidthBO  =30 ;
  posHeightRO  = posHeightBO +60   ;  posWidthRO  =30 ;
  posHeightBT  = 270  ;               posWidthBT  =30 ;
  posHeightRT  = posHeightBT +60   ;  posWidthRT  =30 ;
  posHeightBTY = 430 ;                posWidthBTY =30 ;
  posHeightRTY = posHeightBTY +60  ;  posWidthRTY =30 ;
  posHeightBI  = 560 ;                posWidthBI  =30 ;
  posHeightRI  = posHeightRI +60   ;  posWidthRI  =30 ;
  
  groupZero() ;
  groupOne() ;
  groupTwo() ;
  groupThree() ;
 
  dropdownSetup() ;
}



/////////////////////
void groupZero() {
  //midi  
  posWidthBOmidi = 427         ; posHeightBOmidi =27        ; longueurBOmidi =50       ; hauteurBOmidi =12 ;
  //curtain  
  posWidthBOcurtain = 490       ; posHeightBOcurtain =27      ; longueurBOcurtain =50     ; hauteurBOcurtain =12 ;
  //beat button
  posWidthBeat  = mgRHc3 +0  ; posHeightBeat  = 51  ; longueurBeat  =30  ; hauteurBeat  =10 ;
  posWidthKick  = mgRHc3 +30 ; posHeightKick  = 51  ; longueurKick  =30  ; hauteurKick  =10 ;
  posWidthSnare = mgRHc3 +58 ; posHeightSnare = 51  ; longueurSnare =45  ; hauteurSnare =10 ;
  posWidthHat   = mgRHc3 +95 ; posHeightHat   = 51  ; longueurHat   =30  ; hauteurHat   =10 ;
  
  //Background
  suivitRH[1] = 1 ; posWidthRH[1] = mgRHc1 ; posHeightRH[1]= 50     ; longueurRH[1] = 111 ; hauteurRH[1] = hauteurRegH ; // couleur du fond  
  suivitRH[2] = 1 ; posWidthRH[2] = mgRHc1 ; posHeightRH[2]= 50 +10 ; longueurRH[2] = 111 ; hauteurRH[2] = hauteurRegH ;   
  suivitRH[3] = 1 ; posWidthRH[3] = mgRHc1 ; posHeightRH[3]= 50 +20 ; longueurRH[3] = 111 ; hauteurRH[3] = hauteurRegH ;   
  suivitRH[4] = 1 ; posWidthRH[4] = mgRHc1 ; posHeightRH[4]= 50 +30 ; longueurRH[4] = 111 ; hauteurRH[4] = hauteurRegH ;   
  //sound
  suivitRH[5] = 1 ; posWidthRH[5] = mgRHc3  ; posHeightRH[5]= 50 +20 ; longueurRH[5] = 111 ; hauteurRH[5] = hauteurRegH  ; // sound left
  suivitRH[6] = 1 ; posWidthRH[6] = mgRHc3  ; posHeightRH[6]= 50 +30 ; longueurRH[6] = 111 ; hauteurRH[6] = hauteurRegH ; // sound rigth 
  //LIGHT
  suivitRH[7] = 1 ; posWidthRH[7] = mgRHc2 ; posHeightRH[7]= 50     ; longueurRH[7] = 111 ; hauteurRH[7] = hauteurRegH ; // couleur du fond  
  suivitRH[8] = 1 ; posWidthRH[8] = mgRHc2 ; posHeightRH[8]= 50 +10 ; longueurRH[8] = 111 ; hauteurRH[8] = hauteurRegH ;   
  suivitRH[9] = 1 ; posWidthRH[9] = mgRHc2 ; posHeightRH[9]= 50 +20 ; longueurRH[9] = 111 ; hauteurRH[9] = hauteurRegH ;  
  suivitRH[10] = 1 ; posWidthRH[10] = mgRHc2 ; posHeightRH[10]= 50 +30 ; longueurRH[10] = 111 ; hauteurRH[10] = hauteurRegH ;  // hue ambiance
}

//////////////
void groupOne() {
  //position and area for the rollover
  for (int i = 1 ; i <= numObjectSimple ; i++ ) {
    posWidthBOf[i*10+1] = posWidthBO +((i-1)*40)-8 ; posHeightBOf[i*10+1] = posHeightBO -10  ; longueurBOf[i*10+1] = 20 ; hauteurBOf[i*10+1] = 20 ;  //main
    posWidthBOf[i*10+2] = posWidthBO +((i-1)*40)-8 ; posHeightBOf[i*10+2] = posHeightBO +12  ; longueurBOf[i*10+2] = 19 ; hauteurBOf[i*10+2] = 6 ; //setting
    posWidthBOf[i*10+3] = posWidthBO +((i-1)*40)-8 ; posHeightBOf[i*10+3] = posHeightBO +21  ; longueurBOf[i*10+3] = 10 ; hauteurBOf[i*10+3] = 6 ; //sound
    posWidthBOf[i*10+4] = posWidthBO +((i-1)*40)+2 ; posHeightBOf[i*10+4] = posHeightBO +21  ; longueurBOf[i*10+4] = 10 ; hauteurBOf[i*10+4] = 6 ; //action
  }

  // where the controleur must display the slider
  for( int i = 0 ; i < 8 ; i++ ) {
    suivitRH[i+101] = 1 ; posWidthRH[i+101] = mgRHc1 ; posHeightRH[i+101] = posHeightRO +i*10 ; longueurRH[i+101] = 111 ; hauteurRH[i+101] = hauteurRegH ;
    suivitRH[i+111] = 1 ; posWidthRH[i+111] = mgRHc2 ; posHeightRH[i+111] = posHeightRO +i*10 ; longueurRH[i+111] = 111 ; hauteurRH[i+111] = hauteurRegH ;
    suivitRH[i+121] = 1 ; posWidthRH[i+121] = mgRHc3 ; posHeightRH[i+121] = posHeightRO +i*10 ; longueurRH[i+121] = 111 ; hauteurRH[i+121] = hauteurRegH ;
  }
}

//////////////////
void groupTwo() {
  for (int i = 1 ; i <= numObjectTexture ; i++ ) {
    posWidthBTf[i*10+1] = posWidthBT +((i-1)*40)-8 ; posHeightBTf[i*10+1] = posHeightBT -10  ; longueurBTf[i*10+1] = 20 ; hauteurBTf[i*10+1] = 20 ; //main
    posWidthBTf[i*10+2] = posWidthBT +((i-1)*40)-8 ; posHeightBTf[i*10+2] = posHeightBT +12  ; longueurBTf[i*10+2] = 19 ; hauteurBTf[i*10+2] = 6 ; //setting
    posWidthBTf[i*10+3] = posWidthBT +((i-1)*40)-8 ; posHeightBTf[i*10+3] = posHeightBT +21  ; longueurBTf[i*10+3] = 10 ; hauteurBTf[i*10+3] = 6 ; //sound
    posWidthBTf[i*10+4] = posWidthBT +((i-1)*40)+2 ; posHeightBTf[i*10+4] = posHeightBT +21  ; longueurBTf[i*10+4] = 10 ; hauteurBTf[i*10+4] = 6 ; //action
  }
  // where the controle must display the slider
  for( int i = 0 ; i < 8 ; i++ ) {
    suivitRH[i+201] = 1 ; posWidthRH[i+201] = mgRHc1 ; posHeightRH[i+201] = posHeightRT +i*10 ; longueurRH[i+201] = 111 ; hauteurRH[i+201] = hauteurRegH ;
    suivitRH[i+211] = 1 ; posWidthRH[i+211] = mgRHc2 ; posHeightRH[i+211] = posHeightRT +i*10 ; longueurRH[i+211] = 111 ; hauteurRH[i+211] = hauteurRegH ;
    suivitRH[i+221] = 1 ; posWidthRH[i+221] = mgRHc3 ; posHeightRH[i+221] = posHeightRT +i*10 ; longueurRH[i+221] = 111 ; hauteurRH[i+221] = hauteurRegH ;
  }
}

/////////////////
void groupThree() {
    //TYPOGRAPHY
  //paramètre habillage couleur du bouton cercle BTY
  for (int i = 1 ; i <= numObjectTypography ; i++ ) {
    posWidthBTYf[i*10+1] = posWidthBTY +((i-1)*40)-8 ; posHeightBTYf[i*10+1] = posHeightBTY -10  ; longueurBTYf[i*10+1] = 20 ; hauteurBTYf[i*10+1] = 20 ; //main
    posWidthBTYf[i*10+2] = posWidthBTY +((i-1)*40)-8 ; posHeightBTYf[i*10+2] = posHeightBTY +12  ; longueurBTYf[i*10+2] = 19 ; hauteurBTYf[i*10+2] = 6 ; //setting
    posWidthBTYf[i*10+3] = posWidthBTY +((i-1)*40)-8 ; posHeightBTYf[i*10+3] = posHeightBTY +21  ; longueurBTYf[i*10+3] = 10 ; hauteurBTYf[i*10+3] = 6 ; //sound
    posWidthBTYf[i*10+4] = posWidthBTY +((i-1)*40)+2 ; posHeightBTYf[i*10+4] = posHeightBTY +21  ; longueurBTYf[i*10+4] = 10 ; hauteurBTYf[i*10+4] = 6 ; //action
  }
  //WHAT'S THIS !!!???
  posWidthBE1 = mgRHc3  ; posHeightBE1 = posHeightBTY -6   ; longueurBE1 = 55 ; hauteurBE1 = 14 ;
  
  // where the controleur must display the slider
  for( int i = 0 ; i < 8 ; i++ ) {
    suivitRH[i+301] = 1 ; posWidthRH[i+301] = mgRHc1 ; posHeightRH[i+301] = posHeightRTY +i*10 ; longueurRH[i+301] = 111 ; hauteurRH[i+301] = hauteurRegH ;
    suivitRH[i+311] = 1 ; posWidthRH[i+311] = mgRHc2 ; posHeightRH[i+311] = posHeightRTY +i*10 ; longueurRH[i+311] = 111 ; hauteurRH[i+311] = hauteurRegH ;
    suivitRH[i+321] = 1 ; posWidthRH[i+321] = mgRHc3 ; posHeightRH[i+321] = posHeightRTY +i*10 ; longueurRH[i+321] = 111 ; hauteurRH[i+321] = hauteurRegH ;
  } 
}






/////////////
//CONSTRUCTOR
void constructorSliderButton() {
  //button beat
  Bbeat = new Simple(posWidthBeat, posHeightBeat, longueurBeat,  hauteurBeat, vertTresFonce, vertFonce, rouge, rougeFonce, gris, grisNoir) ;
  Bkick = new Simple(posWidthKick, posHeightKick, longueurKick,  hauteurKick, vertTresFonce, vertFonce, rouge, rougeFonce, gris, grisNoir) ;
  Bsnare = new Simple(posWidthSnare, posHeightSnare, longueurSnare,  hauteurSnare, vertTresFonce, vertFonce, rouge, rougeFonce, gris, grisNoir) ;
  Bhat = new Simple(posWidthHat, posHeightHat, longueurHat,  hauteurHat, vertTresFonce, vertFonce, rouge, rougeFonce, gris, grisNoir) ;
  //MIDI
  BOmidi  = new Simple ( posWidthBOmidi, posHeightBOmidi, longueurBOmidi, hauteurBOmidi, vert, vertFonce, rouge, rougeFonce, gris, grisNoir ) ;
  //curtain
  BOcurtain  = new Simple ( posWidthBOcurtain, posHeightBOcurtain, longueurBOcurtain, hauteurBOcurtain, vert, vertFonce, rouge, rougeFonce, gris, grisNoir ) ;
  
  //button object, texture, typography
  for ( int i = 11 ; i < numButton ; i++) {
    // group one
    BOf[i] = new Simple(  posWidthBOf[i], posHeightBOf[i], longueurBOf[i], hauteurBOf[i], boutonONin, boutonONout, boutonOFFin, boutonOFFout, gris, grisNoir ) ; 
    // group two
    BTf[i] = new Simple(  posWidthBTf[i], posHeightBTf[i], longueurBTf[i], hauteurBTf[i], boutonONin, boutonONout, boutonOFFin, boutonOFFout, gris, grisNoir ) ;
    // group Three
    BTYf[i] = new Simple(  posWidthBTYf[i], posHeightBTYf[i], longueurBTYf[i], hauteurBTYf[i], boutonONin, boutonONout, boutonOFFin, boutonOFFout, gris, grisNoir ) ;
  }
  
  //slider
  for ( int i = 1 ; i < numSlider ; i++ ) {
    //exception for the slider who must show the color
    int opacityReglette = 200 ;
    //if ( (i < 4) || ( i > 6 && i < 19) || ( i > 110 && i < 119) || ( i > 210 && i < 219) ) opacityReglette = 0 ; else opacityReglette = 200 ;
    if ( (i < 4) || ( i > 6 && i < 10) || ( i > 100 && i < 109) || ( i > 200 && i < 209) || ( i > 300 && i < 309) ) opacityReglette = 0 ; else opacityReglette = 200 ;
    RH[i] = new RegletteHorizontale  (posWidthRH[i], posHeightRH[i], longueurRH[i], hauteurRH[i], suivitRH[i], orange, rouge, blancGrisClair, opacityReglette, loadR [i], loadR [i+numSlider]);
  } 
}
//END CONSTRUCTOR
/////////////////









//STRUCTURE
//DRAW
void structureDraw() {
  //background
  fill(grisClair) ; rect(0, 0, width, height ) ;
  fill(blancGris) ; rect(0, 95, width, 160 ) ;
  fill(grisClair) ;      rect(0, 265, width, 140 ) ;
  fill(blancGris) ; rect(0, 415, width, height ) ;
  //the decoration line
  fill (orange) ; 
  rect(0,0, width, 24) ;
  rect(0,92, width, 3) ;
  rect(0,252, width, 3) ;
  rect(0,412, width, 3) ;
  rect(0,height-7, width, 7) ;

}
//END STRUCTURE




//TEXT
//DRAW
void textDraw() {
  fill (blanc) ; 
  textFont(FuturaStencil_20,20); 
  text("ROMANESCO alpha "+release, 5, 20); 
  //CLOCK
  textFont(FuturaStencil_20,20); textAlign(RIGHT);
  text(  nf(hour(),2)   + ":" +nf(minute(),2) , width -10, 20);
  fill (typoTitre) ; 
  textFont(texteInterface, sizeTexteInterface) ; textAlign(LEFT);
  fill (typoCourante) ;

  text(genTxtGUI[1],       mgRHc1 +116, 54);
  text(genTxtGUI[2],    mgRHc1 +116, 64);
  text(genTxtGUI[3],       mgRHc1 +116, 74);
  text(genTxtGUI[4],       mgRHc1 +116, 84);
  
  text(genTxtGUI[9],       mgRHc2 +116, 54);
  text(genTxtGUI[10],    mgRHc2 +116, 64);
  text(genTxtGUI[11],       mgRHc2 +116, 74);
  text(genTxtGUI[12],       mgRHc2 +116, 84);
  
  fill (typoCourante) ;
  textFont(texteInterface); 
  text(genTxtGUI[5],    mgRHc3 +116, 74);
  text(genTxtGUI[6],    mgRHc3 +116, 84);
  
  dislayTextSlider() ;
}



void dislayTextSlider() {
  // GROUP ZERO
  textFont(FuturaStencil_20,20); textAlign(LEFT);
  fill(blanc, 120) ;
  text("BACKGROUND", mgRHc1, 43);
  text("LIGHT", mgRHc2, 43);
  
  //GROUP ONE
  textFont(FuturaStencil_20,20); textAlign(RIGHT);
  fill(blanc, 120) ;
  pushMatrix () ; rotate (-PI/2) ;  text("SIMPLE", -posHeightRO +70, 18); popMatrix() ;
  fill (typoCourante) ;
  textFont(texteInterface);  textAlign(LEFT);
  
  // GROUP TWO
  textFont(FuturaStencil_20,20);  textAlign(RIGHT);
  fill(blanc, 120) ;
  pushMatrix () ; rotate (-PI/2) ;  text("TEXTURE", -posHeightRT +70, 18); popMatrix() ;
  fill (typoCourante) ;
  textFont(texteInterface);  textAlign(LEFT);
  
  //GROUP THREE
  textFont(FuturaStencil_20,20); textAlign(RIGHT);
  fill(blanc, 120) ;
  pushMatrix () ; rotate (-PI/2) ; text("TYPOGRAPHIE", -posHeightRTY +70, 18); popMatrix() ;
  fill (typoCourante) ;
  textFont(texteInterface); textAlign(LEFT);
  
  // Legend text slider position
  int correctionPos = 3 ;
  for ( int i = 0 ; i < 8 ; i++) {
    //group one
    text(objTxtGUIone[i+1], mgRHc1 +116, posHeightRO +correctionPos +(i*10));
    text(objTxtGUItwo[i+1], mgRHc2 +116, posHeightRO +correctionPos +(i*10));
    text(objTxtGUIthree[i+1],   mgRHc3 +116, posHeightRO +correctionPos +(i*10));
    //group two
    text(textureTxtGUIone[i+1], mgRHc1 +116, posHeightRT +correctionPos +(i*10));
    text(textureTxtGUItwo[i+1], mgRHc2 +116, posHeightRT +correctionPos +(i*10));
    text(textureTxtGUIthree[i+1], mgRHc3 +116, posHeightRT +correctionPos +(i*10));
    //group Three
    text(typoTxtGUIone[i+1], mgRHc1 +116,  posHeightRTY +correctionPos +(i*10));
    text(typoTxtGUItwo[i+1], mgRHc2 +116,  posHeightRTY +correctionPos +(i*10));
    text(typoTxtGUIthree[i+1], mgRHc3 +116,  posHeightRTY +correctionPos +(i*10));
  }
  
  // for information degre is value of rotation
  /*
  float degregroupOne = map (valueSlider[28],  0, 100, 0, 360 ) ;
  float degregroupTwo = map (valueSlider[128],  0, 100, 0, 360 ) ;
  float degregroupThree = map (valueSlider[228],  0, 100, 0, 360 ) ;
  */
}

//END TEXT








//MOLETTE
void moletteDraw () {
  PVector sizeMoletteSlider = new PVector (8,10, 1.5) ; // width, height, thickness
  //display and update the molette
  for ( int i = 0 ; i < numSlider ; i++) {
    if (    (i>0 && i<19) 
         || ( i>100 && i<109) || ( i>110 && i<119) || ( i>120 && i<129)
         || ( i>200 && i<209) || ( i>210 && i<219) || ( i>220 && i<229) 
         || ( i>300 && i<309) || ( i>310 && i<319) || ( i>320 && i<329) ) { 
      //give which button is active and check is this button have a same IDmidi that Object
      if ( numMidi == RH[i].IDmidi() ) RH[i].updateMidi(valMidi) ;
    //  println(i + " / " + RH[i].IDmidi()) ;
      //to add an IDmidi from the internal setting to object
      if (selectMidi && RH[i].lock() ) { RH[i].selectIDmidi(numMidi) ; }
      //to add an ID midi from the save
      if(loadSliderPos) { 
        RH[i].selectIDmidi(int(loadR [i + numSlider]) ) ;
      }
      RH[i].update(mouseX, loadR[i]);    
      RH[i].displayMolette(rouge, orange, blanc, sizeMoletteSlider);

      //value from the slider hur background
      valueSlider[i] = constrain(map(RH[i].getPos(), 0, 104, 0,100),0,100)  ;     
      saveR [i] = byte(valueSlider[i] ) ;
      saveR [i + numSlider] = byte(RH[i].IDmidi() ) ;
    }
  }
  loadSliderPos = false ; 
}
//END MOLETTE



//SLIDER DRAW
/////////////
void sliderDraw() {
  sliderDrawGroupZero () ;
  sliderDrawGroupOne () ;
  sliderDrawGroupTwo () ;
  sliderDrawGroupThree () ;
}

// DETAIL GROUP SLIDER DRAW
///////////////////////////
void sliderDrawGroupZero () {
  //Background slider
  if (mouseX > (posWidthRH[1] ) && mouseX < ( posWidthRH[1] + longueurRH[1]) 
  && mouseY > ( posHeightRH[1] - 5) && mouseY < posHeightRH[1] + 30 ) {
    fondRegletteCouleur    ( posWidthRH[1], posHeightRH[1], hauteurRH[1], longueurRH[1]) ;
    fondRegletteSaturation ( posWidthRH[2], posHeightRH[2], hauteurRH[2], longueurRH[1], valueSlider[1], valueSlider[2], valueSlider[3] ) ;
    fondRegletteDensite    ( posWidthRH[3], posHeightRH[3], hauteurRH[3], longueurRH[1], valueSlider[1], valueSlider[2], valueSlider[3] ) ;
  } else {
    fondReglette    ( posWidthRH[1], posHeightRH[1], hauteurRH[1], longueurRH[1], blancGrisClair) ;
    fondReglette    ( posWidthRH[2], posHeightRH[2], hauteurRH[2], longueurRH[2], blancGrisClair ) ;
    fondReglette    ( posWidthRH[3], posHeightRH[3], hauteurRH[3], longueurRH[3], blancGrisClair ) ;
  }
  // light slider
  if (mouseX > (posWidthRH[7] ) && mouseX < ( posWidthRH[7] + longueurRH[7]) 
  && mouseY > ( posHeightRH[7] - 5) && mouseY < posHeightRH[1] + 40 ) {
    fondRegletteCouleur    ( posWidthRH[7], posHeightRH[7], hauteurRH[7], longueurRH[7]) ;
    fondRegletteSaturation ( posWidthRH[8], posHeightRH[8], hauteurRH[8], longueurRH[7], valueSlider[7], valueSlider[8], valueSlider[9] ) ;
    fondRegletteDensite    ( posWidthRH[9], posHeightRH[9], hauteurRH[9], longueurRH[7], valueSlider[7], valueSlider[8], valueSlider[9] ) ;
    fondRegletteCouleur    ( posWidthRH[10], posHeightRH[10], hauteurRH[10], longueurRH[10]) ;
  } else {
    fondReglette    ( posWidthRH[7], posHeightRH[7], hauteurRH[7], longueurRH[7], blancGrisClair) ;
    fondReglette    ( posWidthRH[8], posHeightRH[8], hauteurRH[8], longueurRH[8], blancGrisClair ) ;
    fondReglette    ( posWidthRH[9], posHeightRH[9], hauteurRH[9], longueurRH[9], blancGrisClair ) ;
    fondReglette    ( posWidthRH[10], posHeightRH[10], hauteurRH[10], longueurRH[10], blancGrisClair ) ;
  }
}



/////////////////////////////
void sliderDrawGroupOne () {
  if ( mouseX > (posWidthRH[101] ) && mouseX < ( posWidthRH[101] + longueurRH[101]) 
       && mouseY > ( posHeightRH[101] - 5) && mouseY < posHeightRH[101] +30 ) 
  {
    fondRegletteCouleur     ( posWidthRH[101], posHeightRH[101], hauteurRH[101], longueurRH[101]) ; 
    fondRegletteSaturation  ( posWidthRH[102], posHeightRH[102], hauteurRH[102], longueurRH[101], valueSlider[101], valueSlider[102], valueSlider[103] ) ;
    fondRegletteDensite     ( posWidthRH[103], posHeightRH[103], hauteurRH[103], longueurRH[101], valueSlider[101], valueSlider[102], valueSlider[103] ) ;
  } else {
    fondReglette    ( posWidthRH[101], posHeightRH[101], hauteurRH[101], longueurRH[101], blanc) ;
    fondReglette    ( posWidthRH[102], posHeightRH[102], hauteurRH[102], longueurRH[102], blanc ) ;
    fondReglette    ( posWidthRH[103], posHeightRH[103], hauteurRH[103], longueurRH[103], blanc ) ;
  }
  fondReglette    ( posWidthRH[104], posHeightRH[104], hauteurRH[104], longueurRH[104], blanc ) ;
  
  //outline color
  if ( mouseX > (posWidthRH[105] ) && mouseX < ( posWidthRH[105] + longueurRH[105]) 
       && mouseY > ( posHeightRH[105] - 5) && mouseY < posHeightRH[105] +30 ) 
  {
    fondRegletteCouleur     ( posWidthRH[105], posHeightRH[105], hauteurRH[105], longueurRH[105]) ; 
    fondRegletteSaturation  ( posWidthRH[106], posHeightRH[106], hauteurRH[106], longueurRH[105], valueSlider[105], valueSlider[106], valueSlider[107] ) ;
    fondRegletteDensite     ( posWidthRH[107], posHeightRH[107], hauteurRH[107], longueurRH[105], valueSlider[105], valueSlider[106], valueSlider[107] ) ;
  } else {
    fondReglette    ( posWidthRH[105], posHeightRH[105], hauteurRH[105], longueurRH[105], blancGrisClair) ;
    fondReglette    ( posWidthRH[106], posHeightRH[106], hauteurRH[106], longueurRH[106], blancGrisClair ) ;
    fondReglette    ( posWidthRH[107], posHeightRH[107], hauteurRH[107], longueurRH[107], blancGrisClair) ;
  }
  fondReglette    ( posWidthRH[108], posHeightRH[108], hauteurRH[108], longueurRH[108], blancGrisClair ) ;
}


////////////////////////////
void sliderDrawGroupTwo () {
  if ( mouseX > (posWidthRH[201] ) && mouseX < ( posWidthRH[201] + longueurRH[201]) 
       && mouseY > ( posHeightRH[201] - 5) && mouseY < posHeightRH[201] +30 ) 
  {
    fondRegletteCouleur     ( posWidthRH[201], posHeightRH[201], hauteurRH[201], longueurRH[201]) ; 
    fondRegletteSaturation  ( posWidthRH[202], posHeightRH[202], hauteurRH[202], longueurRH[201], valueSlider[201], valueSlider[202], valueSlider[203] ) ;
    fondRegletteDensite     ( posWidthRH[203], posHeightRH[203], hauteurRH[203], longueurRH[201], valueSlider[201], valueSlider[202], valueSlider[203] ) ;
  } else {
    fondReglette    ( posWidthRH[201], posHeightRH[201], hauteurRH[201], longueurRH[201], blanc) ;
    fondReglette    ( posWidthRH[202], posHeightRH[202], hauteurRH[202], longueurRH[202], blanc ) ;
    fondReglette    ( posWidthRH[203], posHeightRH[203], hauteurRH[203], longueurRH[203], blanc ) ;
  }
  fondReglette    ( posWidthRH[204], posHeightRH[204], hauteurRH[204], longueurRH[204], blanc ) ;
  
  //outline color
  if ( mouseX > (posWidthRH[205] ) && mouseX < ( posWidthRH[205] + longueurRH[205]) 
       && mouseY > ( posHeightRH[205] - 5) && mouseY < posHeightRH[205] +30 ) 
  {
    fondRegletteCouleur     ( posWidthRH[205], posHeightRH[205], hauteurRH[205], longueurRH[205]) ; 
    fondRegletteSaturation  ( posWidthRH[206], posHeightRH[206], hauteurRH[206], longueurRH[205], valueSlider[205], valueSlider[206], valueSlider[207] ) ;
    fondRegletteDensite     ( posWidthRH[207], posHeightRH[207], hauteurRH[207], longueurRH[205], valueSlider[205], valueSlider[206], valueSlider[207] ) ;
  } else {
    fondReglette    ( posWidthRH[205], posHeightRH[205], hauteurRH[205], longueurRH[205], blancGrisClair) ;
    fondReglette    ( posWidthRH[206], posHeightRH[206], hauteurRH[206], longueurRH[206], blancGrisClair ) ;
    fondReglette    ( posWidthRH[207], posHeightRH[207], hauteurRH[207], longueurRH[207], blancGrisClair) ;
  }
  fondReglette    ( posWidthRH[208], posHeightRH[208], hauteurRH[208], longueurRH[208], blancGrisClair ) ;
}


//////////////////////////////
void sliderDrawGroupThree () {
  if (mouseX > (posWidthRH[301] ) && mouseX < ( posWidthRH[301] + longueurRH[301]) && mouseY > ( posHeightRH[301] - 5) && mouseY < posHeightRH[301] + 30 ) {
    fondRegletteCouleur    ( posWidthRH[301], posHeightRH[301], hauteurRH[301], longueurRH[301]) ;
    fondRegletteSaturation ( posWidthRH[302], posHeightRH[302], hauteurRH[302], longueurRH[301], valueSlider[301], valueSlider[302], valueSlider[303] ) ;
    fondRegletteDensite    ( posWidthRH[303], posHeightRH[303], hauteurRH[303], longueurRH[301], valueSlider[301], valueSlider[302], valueSlider[303] ) ;
  } else {
    fondReglette    ( posWidthRH[301], posHeightRH[301], hauteurRH[301], longueurRH[301], blanc) ;
    fondReglette    ( posWidthRH[302], posHeightRH[302], hauteurRH[302], longueurRH[302], blanc) ;
    fondReglette    ( posWidthRH[303], posHeightRH[303], hauteurRH[303], longueurRH[303], blanc ) ;
  }
  fondReglette    ( posWidthRH[304], posHeightRH[304], hauteurRH[304], longueurRH[304], blanc ) ;
  //outline color
  if ( mouseX > (posWidthRH[305] ) && mouseX < ( posWidthRH[305] + longueurRH[305]) && mouseY > ( posHeightRH[305] - 5) && mouseY < posHeightRH[305] +30 ) {
    fondRegletteCouleur     ( posWidthRH[305], posHeightRH[305], hauteurRH[305], longueurRH[305]) ; 
    fondRegletteSaturation  ( posWidthRH[306], posHeightRH[306], hauteurRH[306], longueurRH[305], valueSlider[305], valueSlider[306], valueSlider[307] ) ;
    fondRegletteDensite     ( posWidthRH[307], posHeightRH[307], hauteurRH[307], longueurRH[305], valueSlider[305], valueSlider[306], valueSlider[307] ) ;
  } else {
    fondReglette    ( posWidthRH[305], posHeightRH[305], hauteurRH[305], longueurRH[305], blancGrisClair) ;
    fondReglette    ( posWidthRH[306], posHeightRH[306], hauteurRH[306], longueurRH[306], blancGrisClair ) ;
    fondReglette    ( posWidthRH[307], posHeightRH[307], hauteurRH[307], longueurRH[307], blancGrisClair) ;
  }
  fondReglette    ( posWidthRH[308], posHeightRH[308], hauteurRH[308], longueurRH[308], blancGrisClair ) ;
  //end TYPO
}

// END SLIDER DRAW
//////////////////




/////////////////////
void buttonDraw () {
  textFont(texteInterface) ;
  buttonDrawGroupZero() ;
  buttonDrawGroupOne() ;
  buttonDrawGroupTwo() ;
  buttonDrawGroupThree() ;
  buttonCheckDraw() ;
  dropdownDraw() ;
}

// DETAIL
// GROUP ZERO
void buttonDrawGroupZero() {
    Bbeat.boutonTexte("BEAT",    posWidthBeat,  posHeightBeat  +6) ;
  Bkick.boutonTexte("KICK",    posWidthKick,  posHeightKick  +6) ;
  Bsnare.boutonTexte("SNARE",  posWidthSnare, posHeightSnare +6) ;
  Bhat.boutonTexte("HAT",      posWidthHat,   posHeightHat   +6) ;
  //MIDI 
  PVector posTxtMidi = new PVector ( 15, 10 ) ;
  BOmidi.boutonCarreEcran  ("MIDI", posTxtMidi) ;
  //curtain
  PVector posTxtcurtain = new PVector ( 10, 10 ) ; 
  BOcurtain.boutonCarreEcran  (genTxtGUI[8], posTxtcurtain) ;
}
//GROUP ONE
void buttonDrawGroupOne() {
    for( int i = 1 ; i <= numObjectSimple ; i++ ) {
    BOf[i*10 +1].boutonVignette(vignette_OFF_in_simple, vignette_OFF_out_simple, vignette_ON_in_simple, vignette_ON_out_simple, i) ; 
    BOf[i*10 +2].boutonCarre () ; 
    BOf[i*10 +3].boutonSonPetit () ; 
    BOf[i*10 +4].boutonAction () ;
    PVector pos = new PVector (posWidthBOf[i*10 +2], posHeightBOf[i*10 +1] +10) ;
    PVector size = new PVector (20, 30) ;
    rolloverInfoVignette(pos, size, i, 1) ;
  }
}
// GROUP TWO
void buttonDrawGroupTwo() {
    for( int i = 1 ; i <= numObjectTexture ; i++ ) {
    BTf[i*10 +1].boutonVignette(vignette_OFF_in_texture, vignette_OFF_out_texture, vignette_ON_in_texture, vignette_ON_out_texture, i) ; 
    BTf[i*10 +2].boutonCarre () ; 
    BTf[i*10 +3].boutonSonPetit () ; 
    BTf[i*10 +4].boutonAction () ;     
    PVector pos = new PVector (posWidthBTf[i*10 +2], posHeightBTf[i*10 +1] +10) ;
    PVector size = new PVector (20, 30) ;
    rolloverInfoVignette(pos, size, i, 2) ;
  }
}

//GROUP THREE
void buttonDrawGroupThree() {
    for( int i = 1 ; i <= numObjectTypography ; i++ ) {
    BTYf[i*10 +1].boutonVignette(vignette_OFF_in_typography, vignette_OFF_out_typography, vignette_ON_in_typography, vignette_ON_out_typography, i) ; 
    BTYf[i*10 +2].boutonCarre () ; 
    BTYf[i*10 +3].boutonSonPetit () ; 
    BTYf[i*10 +4].boutonAction () ; 
    PVector pos = new PVector (posWidthBTYf[i*10 +2], posHeightBTYf[i*10 +1] +10) ;
    PVector size = new PVector (20, 30) ;
    rolloverInfoVignette(pos, size, i, 3) ;
  }
}



void buttonCheckDraw() {
  //SOUND
  EtatBbeat = Bbeat.getEtatBoutonCarre() ;
  EtatBkick = Bkick.getEtatBoutonCarre() ;
  EtatBsnare = Bsnare.getEtatBoutonCarre() ;
  EtatBhat = Bhat.getEtatBoutonCarre() ;
  //Check position of button
  EtatBOmidi = BOmidi.getEtatBoutonCarre() ;
  EtatBOcurtain = BOcurtain.getEtatBoutonCarre() ;


  //Statement button, if are OFF or ON
  for( int i = 11 ; i < 100 ; i++) {
    //catch the statement of button object
    EtatBOf[i] = BOf[i].getEtatBoutonCarre() ;
    //catch the statement of button texture
    EtatBTf[i] = BTf[i].getEtatBoutonCarre() ;
    //catch the statement of button typography
    EtatBTYf[i] = BTYf[i].getEtatBoutonCarre() ;
  }
}



//ANNEXE VOID
//ROLLOVER vignette
//show image
void rolloverVignette ( int posX, int posY , int hauteur, int largeur, int numero, int posXimage, int posYimage) {
  if (mouseX > posX && mouseX < (largeur + posX ) && mouseY > posY - 10 && mouseY <  (hauteur + posY) -20 ) { 
      image(vignette[numero],posXimage , posYimage ) ;
    }
}

//show info
void rolloverInfoVignette(PVector pos, PVector size, int IDname, int IDfamily) {
  if (mouseX > pos.x && mouseX < (size.x + pos.x ) && mouseY > pos.y - 10 && mouseY <  (size.y + pos.y) -20 ) {
    textSize(20 ) ;
    textFont(FuturaStencil_20) ;
    PVector fontPos = new PVector(-10, -20 ) ;
    if (IDfamily == 1 ) {
      text(objectSimpleName[IDname -1], mouseX   +fontPos.x, mouseY +fontPos.y) ;
      text(objectSimpleAuthor[IDname -1], mouseX +fontPos.x, mouseY +fontPos.y -20) ;
    }
    if (IDfamily == 2 ) {
      text(objectTextureName[IDname -1], mouseX   +fontPos.x, mouseY +fontPos.y) ;
      text(objectTextureAuthor[IDname -1], mouseX +fontPos.x, mouseY +fontPos.y -20) ;
    }
    if (IDfamily == 3 ) {
      text(objectTypographyName[IDname -1], mouseX   +fontPos.x, mouseY +fontPos.y) ;
      text(objectTypographyAuthor[IDname -1], mouseX +fontPos.x, mouseY +fontPos.y -20) ;
    }
  }
}


//SLIDER COLOR
void fondReglette ( int posX, int posY, int hauteur, int largeur, color couleur ) {
  float hx ;
  hx = hauteur ;
  fill ( couleur ) ;
  rect ( posX  , posY - (hx /2.0 )  , largeur , hauteur ) ;
}

//hue
void fondRegletteCouleur ( int posX, int posY, int hauteur, int largeur ) {
  pushMatrix () ;
  translate (posX , posY-(hauteur/2) ) ;
  for ( int i=0 ; i < largeur ; i++ ) {
    for ( int j=0 ; j <=hauteur ; j++ ) {
      float cr = map(i, 0, largeur, 0, 360 ) ;
      fill (cr, 100, 100) ;
      rect ( i, j, 1,1 ) ;
    }
  }
  popMatrix() ;
}

//saturation
void fondRegletteSaturation ( int posX, int posY, int hauteur, int largeur, float couleur, float s, float d ) {
  pushMatrix () ;
  translate (posX , posY-(hauteur/2) ) ;
  for ( int i=0 ; i < largeur ; i++ ) {
    for ( int j=0 ; j <=hauteur ; j++ ) {
      float cr = map(i, 0, largeur, 0, 100 ) ;
      float coul = map(couleur, 0, largeur, 0, 360 ) ;
      float sat = map(s, 0, largeur, 0, 100 ) ;
      float dens = map(d, 0, largeur, 0, 100 ) ;
      fill (coul, cr, dens) ;
      rect ( i, j, 1,1 ) ;
    }
  }
  popMatrix() ;
}

//density
void fondRegletteDensite ( int posX, int posY, int hauteur, int largeur, float couleur, float s, float d ) {
  pushMatrix () ;
  translate (posX , posY-(hauteur/2) ) ;
  for ( int i=0 ; i < largeur ; i++ ) {
    for ( int j=0 ; j <=hauteur ; j++ ) {
      float cr = map(i, 0, largeur, 0, 100 ) ;
      float coul = map(couleur, 0, largeur, 0, 360 ) ;
      float sat = map(s, 0, largeur, 0, 100 ) ;
      float dens = map(d, 0, largeur, 0, 100 ) ;
      fill (coul, sat, cr) ;
      rect ( i, j, 1,1 ) ;
    }
  }
  popMatrix() ;
}





//////////
//DROPDOWN
int startLoopObject = 1 ;   int endLoopObject = 10 ;
int startLoopTexture = 21 ; int endLoopTexture = 28 ;
int startLoopTypo = 41 ;    int endLoopTypo = 46 ;
//GLOBAL
Dropdown[] dropdown = new Dropdown[numButton] ;
PVector posDropdown[] = new PVector[numButton] ;
PVector sizeDropdownFont, sizeDropdownMode ;
PVector posTextDropdown = new PVector( 2, 8 )  ;

PVector totalSizeDropdown = new PVector (0,0) ;
PVector newPosDropdown = new PVector (0,0) ;

String [] modeListRomanesco ;
String [] policeDropdownList ;
String [] listDropdown ;

float margeAroundDropdown ;


//SETUP

void dropdownSetup() {
  //load the external list  for each mode and split to read in the interface
  //mode
  String mode [] = loadStrings("setting/mode.txt") ;
  String modeListGlobal = join(mode, "") ;
  modeListRomanesco = split(modeListGlobal, "///") ; 
  //typography
  String pList [] = loadStrings("setting/police.txt") ;
  String policeList = join(pList, "") ;
  policeDropdownList = split(policeList, "/") ;
  
  //FONT dropdown
  ///////////////
  posDropdown[99] = new PVector(340, 28, 0.1)  ; // x y is pos anz z is marge between the dropdown and the header
  sizeDropdownFont = new PVector (75, 13, 15 ) ;
  PVector posTextDropdownTypo = new PVector( 3, 10 )  ;
  dropdown[99] = new Dropdown(policeDropdownList,   posDropdown[99] , sizeDropdownFont, posTextDropdownTypo, colorBG, colorBoxIn, colorBoxOut, colorBoxText, texteInterface, sizeTexteInterface) ;
  
  
  
  //MODE Dropdown
  ///////////////
  //common param
  sizeDropdownMode = new PVector (20, 10, 9 ) ;
  //object line
  for ( int i = startLoopObject ; i < endLoopObject ; i ++ ) {
    int space = ((i - startLoopObject +1) * 40) - 40 ;
    //Split the dropdown to display in the dropdown
    listDropdown = split(modeListRomanesco[i], "/" ) ;
    //to change the title of the header dropdown
    listDropdown[0] = "M"  ; 
    
    posDropdown[i] = new PVector(posWidthBO -8 + space, posHeightBO +43, 0.1)  ; // x y is pos anz z is marge between the dropdown and the header
    dropdown[i] = new Dropdown(listDropdown,   posDropdown[i] , sizeDropdownMode, posTextDropdown, colorBG, colorBoxIn, colorBoxOut, colorBoxText, texteInterface, sizeTexteInterface) ;
  }
  //Texture line
  for ( int i = startLoopTexture ; i < endLoopTexture ; i ++ ) {
    int space = ((i - startLoopTexture +1) * 40) - 40 ;
    //Split the dropdown to display in the dropdown
    listDropdown = split(modeListRomanesco[i], "/" ) ;
    //to change the title of the header dropdown
    listDropdown[0] = "M"  ; 
    
    posDropdown[i] = new PVector(posWidthBT -8 + space, posHeightBT +43, 0.1)  ; // x y is pos anz z is marge between the dropdown and the header
    dropdown[i] = new Dropdown(listDropdown,   posDropdown[i] , sizeDropdownMode, posTextDropdown, colorBG, colorBoxIn, colorBoxOut, colorBoxText, texteInterface, sizeTexteInterface) ;
  }
  //Typo line
  for ( int i = startLoopTypo ; i < endLoopTypo ; i ++ ) {
    int space = ((i - startLoopTypo +1) * 40) - 40 ;
    //Split the dropdown to display in the dropdown
    listDropdown = split(modeListRomanesco[i], "/" ) ;
    //to change the title of the header dropdown
    listDropdown[0] = "M"  ; 
    
    posDropdown[i] = new PVector(posWidthBTY -8 + space, posHeightBTY +43, 0.1)  ; // x y is pos anz z is marge between the dropdown and the header
    dropdown[i] = new Dropdown(listDropdown,   posDropdown[i] , sizeDropdownMode, posTextDropdown, colorBG, colorBoxIn, colorBoxOut, colorBoxText, texteInterface, sizeTexteInterface) ;
  }
  

}
//DRAW
void dropdownDraw() {
  //FONT dropdown
  dropdown[99].dropdownUpdate();
  margeAroundDropdown = sizeDropdownFont.y  ;
  //give the size of menu recalculate with the size of the word inside
  PVector newSizeFont = dropdown[99].sizeDropdownMenu() ;
  totalSizeDropdown = new PVector ( newSizeFont.x + (margeAroundDropdown *1.5) , sizeDropdownFont.y * (sizeDropdownFont.z +1)  + margeAroundDropdown   ) ; // we must add +1 to the size of the dropdown for the title plus the item list
  //new pos to include the slider
  newPosDropdown = new PVector ( posDropdown[99].x - margeAroundDropdown  , posDropdown[99].y ) ;
  // println( posModeDropdown[i].y) ;
  if ( !insideRect(newPosDropdown, totalSizeDropdown) ) dropdown[99].locked = false;
  //give the value for sending to Scène and save
  //valueSlider[7] = dropdown[99].getSelection() +1 ;
 // dataValeurRH[7] = int(valueSlider[7]) ;  
  saveR [7] = byte(dropdown[99].getSelection() +1 ) ;

  
  //MODE dropdown
  //object line
  for ( int i = startLoopObject ; i < endLoopObject ; i ++ ) {
    String m [] = split(modeListRomanesco[i], "/") ;
    if ( m.length > 1) {
      dropdown[i].dropdownUpdate();
      margeAroundDropdown = sizeDropdownMode.y  ;
      //give the size of menu recalculate with the size of the word inside
      PVector newSizeModeObj = dropdown[i].sizeDropdownMenu() ;
      totalSizeDropdown = new PVector ( newSizeModeObj.x + (margeAroundDropdown *1.5) , sizeDropdownMode.y * (sizeDropdownMode.z +1)  + margeAroundDropdown   ) ; // we must add +1 to the size of the dropdown for the title plus the item list
      //new pos to include the slider
      newPosDropdown = new PVector ( posDropdown[i].x - margeAroundDropdown  , posDropdown[i].y ) ;
      // println( posModeDropdown[i].y) ;
      if ( !insideRect(newPosDropdown, totalSizeDropdown) ) dropdown[i].locked = false;
    }
    if (dropdown[i].getSelection() > -1 && m.length > 2 ) text( (dropdown[i].getSelection() +1), posDropdown[i].x +12 , posDropdown[i].y +8) ;
  }
  
  //texture line
  for ( int i = startLoopTexture ; i < endLoopTexture ; i ++ ) {
    String m [] = split(modeListRomanesco[i], "/") ;
    if ( m.length > 1) {
      dropdown[i].dropdownUpdate();
      margeAroundDropdown = sizeDropdownMode.y  ;
      //give the size of menu recalculate with the size of the word inside
      PVector newSizeModeTexture = dropdown[i].sizeDropdownMenu() ;
      totalSizeDropdown = new PVector ( newSizeModeTexture.x + (margeAroundDropdown *1.5) , sizeDropdownMode.y * (sizeDropdownMode.z +1)  + margeAroundDropdown   ) ; // we must add +1 to the size of the dropdown for the title plus the item list
      //new pos to include the slider
      newPosDropdown = new PVector ( posDropdown[i].x - margeAroundDropdown  , posDropdown[i].y ) ;
      // println( posModeDropdown[i].y) ;
      if ( !insideRect(newPosDropdown, totalSizeDropdown) ) dropdown[i].locked = false;
    }
    if (dropdown[i].getSelection() > -1 && m.length > 2 ) text( (dropdown[i].getSelection() +1), posDropdown[i].x +12 , posDropdown[i].y +8) ;
  }
  
  //typo line
  for ( int i = startLoopTypo ; i < endLoopTypo ; i ++ ) {
    String m [] = split(modeListRomanesco[i], "/") ;
    if ( m.length > 1) {
      dropdown[i].dropdownUpdate();
      margeAroundDropdown = sizeDropdownMode.y  ;
      //give the size of menu recalculate with the size of the word inside
      PVector newSizeModeTypo = dropdown[i].sizeDropdownMenu() ;
      totalSizeDropdown = new PVector ( newSizeModeTypo.x + (margeAroundDropdown *1.5) , sizeDropdownMode.y * (sizeDropdownMode.z +1)  + margeAroundDropdown   ) ; // we must add +1 to the size of the dropdown for the title plus the item list
      //new pos to include the slider
      newPosDropdown = new PVector ( posDropdown[i].x - margeAroundDropdown  , posDropdown[i].y ) ;
      if ( !insideRect(newPosDropdown, totalSizeDropdown) ) dropdown[i].locked = false;
    }
    // println(dropdown[i].getSelection()) ;
    if (dropdown[i].getSelection() > -1 && m.length > 2 ) text( (dropdown[i].getSelection() +1), posDropdown[i].x +12 , posDropdown[i].y +8) ;
  }
}

//END DROPDOWN
//MOUSEPRESSED
void dropdownMousepressed() {
  //typographie dropdown
  if (dropdown[99] != null) {
    if (insideRect(posDropdown[99], sizeDropdownFont) && !dropdown[99].locked  ) {
      dropdown[99].locked = true;
    } else if (dropdown[99].locked) {
      int line = dropdown[99].selectDropdownLine();
      if (line > -1 ) {
        dropdown[99].whichDropdownLine(line);
        //to close the dropdown
        dropdown[99].locked = false;        
      } 
    }
  }
  
  //line object
  for ( int i = startLoopObject ; i < endLoopObject ; i ++ ) { 
    if (dropdown[i] != null) {
      if (insideRect(posDropdown[i], sizeDropdownMode) && !dropdown[i].locked  ) {
        dropdown[i].locked = true;
      } else if (dropdown[i].locked) {
        int line = dropdown[i].selectDropdownLine();
        if (line > -1 ) {
          dropdown[i].whichDropdownLine(line);
          //to close the dropdown
          dropdown[i].locked = false;        
        } 
      }
    }
  }
  //texture object
  for ( int i = startLoopTexture ; i < endLoopTexture ; i ++ ) { 
    if (dropdown[i] != null) {
      if (insideRect(posDropdown[i], sizeDropdownMode) && !dropdown[i].locked  ) {
        dropdown[i].locked = true;
      } else if (dropdown[i].locked) {
        int line = dropdown[i].selectDropdownLine();
        if (line > -1 ) {
          dropdown[i].whichDropdownLine(line);
          //to close the dropdown
          dropdown[i].locked = false;        
        } 
      }
    }
  }
  //typo object
  for ( int i = startLoopTypo ; i < endLoopTypo ; i ++ ) { 
    if (dropdown[i] != null) {
      if (insideRect(posDropdown[i], sizeDropdownMode) && !dropdown[i].locked  ) {
        dropdown[i].locked = true;
      } else if (dropdown[i].locked) {
        int line = dropdown[i].selectDropdownLine();
        if (line > -1 ) {
          dropdown[i].whichDropdownLine(line);
          //to close the dropdown
          dropdown[i].locked = false;        
        } 
      }
    }
  }
}
