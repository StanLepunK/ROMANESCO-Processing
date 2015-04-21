//GLOBAL
import oscP5.*;
import netP5.*;

OscP5 osc;
NetAddress targetPreScene ;
// local
String IPadress = ("127.0.0.1") ;
// Message to préScène
String toPreScene [] = new String [6] ;



void sendOSCsetup() {
  osc = new OscP5(this, 10000);
 targetPreScene = new NetAddress(IPadress,10000);
}

void sendOSCdraw() {
  OscMessage RomanescoControleur = new OscMessage("ROMANESCO contrôleur");
  
  //int value join in one String 
  translateDataToSend() ;
  
  //BUTTON to String
  toPreScene[0] = joinIntToString(valueButtonGlobal) ; 
  toPreScene[1] = joinIntToString(valueButtonObj) ;
  toPreScene[2] = joinIntToString(valueButtonTex) ;
  
  // Catch the value slider to send to Prescene
    //return value to the prescene between 0 to 99

  // GROUP ZERO
  int[] dataGroupZero = new int[NUM_SLIDER_MISC] ;
  for ( int i = 1   ; i < NUM_SLIDER_MISC -1 ; i++) dataGroupZero[i-1] = floor(valueSlider[i]) ;

  toPreScene[3] = joinIntToString(dataGroupZero) ;
  // GROUP ONE
  int[] dataGroupOne = new int[NUM_SLIDER_OBJ] ;
  for ( int i = 101   ; i < 101 +NUM_SLIDER_OBJ ; i++) dataGroupOne[i-101] = floor(valueSlider[i]) ; 
  toPreScene[4] = joinIntToString(dataGroupOne);
  // GROUP TWO
  int[] dataGroupTwo = new int[NUM_SLIDER_OBJ] ;
  for ( int i = 201 ; i < 201 +NUM_SLIDER_OBJ ; i++) dataGroupTwo[i-201] = floor(valueSlider[i]) ;
  toPreScene[5] = joinIntToString(dataGroupTwo) ;
  
  //add to OSC
  for ( int i = 0 ; i < toPreScene.length ; i++) {
    //println(i, toPreScene[i]) ;
    RomanescoControleur.add(toPreScene[i]);
  }
 // println("controleur",toPreScene[3]) ;
  //send
  osc.send(RomanescoControleur, targetPreScene ); 
}



  
  
  
void translateDataToSend() {
  //BUTTON GLOBAL
  //sound
  valueButtonGlobal[1] = EtatBbeat ;
  valueButtonGlobal[2] = EtatBkick ;
  valueButtonGlobal[3] = EtatBsnare ;
  valueButtonGlobal[4] = EtatBhat ;
  /*
  valueButtonGlobal[7] = dropdownFont.getSelection() +1 ; ;
  valueButtonGlobal[10] = EtatCurtainButton ;
  */
  valueButtonGlobal[5] = dropdownFont.getSelection() +1 ; ;
  valueButtonGlobal[6] = EtatCurtainButton ;
  valueButtonGlobal[7] = EtatBackgroundButton ;
  valueButtonGlobal[8] = EtatLightOneButton ;
  valueButtonGlobal[9] = EtatLightTwoButton ;
  valueButtonGlobal[10] = EtatLightOneAction ;
  valueButtonGlobal[11] = EtatLightTwoAction ;
  
  valueButtonGlobal[12] = EtatBackground ;
  valueButtonGlobal[13] = EtatImage ;
  valueButtonGlobal[14] = EtatFileText ;
  
  //BUTTON GROUP ONE
  if(numGroup[1] > 0 ) {
    for ( int i = 0 ; i < numGroup[1]   ; i ++) {
      valueButtonObj[i *10 +1] = EtatBOf[i *10 +1] ;
      valueButtonObj[i *10 +2] = EtatBOf[i *10 +2] ;
      valueButtonObj[i *10 +3] = EtatBOf[i *10 +3] ;
      valueButtonObj[i *10 +4] = EtatBOf[i *10 +4] ;
      valueButtonObj[i *10 +5] = EtatBOf[i *10 +5] ;
      if (dropdown[i+1] != null) valueButtonObj[i *10 +9] = dropdown[i+1].getSelection() ;
    }
  }
  
  //BUTTON GROUP TWO
  if(numGroup[2] > 0 ) {
    for ( int i = 0 ; i < numGroup[2] ; i ++) {
      valueButtonTex[i *10 +1] = EtatBTf[i *10 +1] ;
      valueButtonTex[i *10 +2] = EtatBTf[i *10 +2] ;
      valueButtonTex[i *10 +3] = EtatBTf[i *10 +3] ;
      valueButtonTex[i *10 +4] = EtatBTf[i *10 +4] ;
      valueButtonTex[i *10 +5] = EtatBTf[i *10 +5] ;
      int whichDropdown = i+1 +numGroup[1] ;
      if (dropdown[whichDropdown] != null) valueButtonTex[i *10 +9] = dropdown[whichDropdown].getSelection() ;
    }
  }
}
  





  