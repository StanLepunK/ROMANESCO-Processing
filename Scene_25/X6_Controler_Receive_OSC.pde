import oscP5.*;
import netP5.*;

OscP5 osc;

//SLIDER and BUTTON

int numSliderFamilly = 40 ; // slider by familly object (global, object, trame, typo)

int numSliderGlobal = 10 ;
int numSlider = 30 ;

int numButtonGlobal = 50 ;
int numButtonObj = 150 ;
int numButtonTex = 150 ;
int numButtonTypo = 150 ;

// button
int eBeat, eKick, eSnare, eHat, eCurtain, eMeteo ;
int mainButton [] = new int [numObj] ;
int soundButton [] = new int [numObj] ;
int actionButton[] = new int [numObj] ;
int meteoButton[] = new int [numObj] ;
int parameterButton[] = new int [numObj] ;
int modeButton[] = new int [numObj] ;

//BUTTON
int valueButtonGlobal[] = new int[numButtonGlobal] ;
int valueButtonObj[] = new int[numButtonObj] ;
int valueButtonTex[] = new int[numButtonTex] ;
int valueButtonTypo[] = new int[numButtonTypo] ;
//SLIDER
String valueSliderTempGlobal[]  = new String [numSliderGlobal] ;
String valueSliderTempObj[]  = new String [numSlider] ;
String valueSliderTempTex[]  = new String [numSlider] ;
String valueSliderTempTypo[]  = new String [numSlider] ;
String valueTempPreScene[] = new String [61] ;

float valueSliderGlobal[]  = new float [numSliderGlobal] ;
float valueSliderObj[]  = new float [numSlider] ;
float valueSliderTex[]  = new float [numSlider] ;
float valueSliderTypo[]  = new float [numSlider] ;


//SETUP
void OSCSetup() {
   if(sendToSyphon) osc = new OscP5(this, 10002); else osc = new OscP5(this, 10001);
}

//EVENT
String dataPreScene [] = new String[9] ;
// to check what else is receive by the receiver
void oscEvent(OscMessage receive ) {
  //BUTTON
  //position in the receive list, here is the last i+1, so it's numSlider
  int sizeOSCmessage = 0 ;
  for (int i = 0 ; i < dataPreScene.length ; i++ ) {
    dataPreScene [i] = receive.get(i).stringValue() ;
    sizeOSCmessage += dataPreScene[i].length() ;
  }
  //size of the OSC message
  println(sizeOSCmessage) ;
  
  //BUTTON
  valueButtonGlobal = int(split(dataPreScene[0], '/')) ;
  valueButtonObj = int(split(dataPreScene[1], '/')) ;
  valueButtonTex = int(split(dataPreScene[2], '/')) ;
  valueButtonTypo = int(split(dataPreScene[3], '/')) ;
  
  //SLIDER
  valueSliderTempGlobal = split(dataPreScene[4], '/') ;
  valueSliderTempObj = split(dataPreScene[5], '/') ;
  valueSliderTempTex = split(dataPreScene[6], '/') ;
  valueSliderTempTypo = split(dataPreScene[7], '/') ;
  //PRESCENE
  valueTempPreScene = split(dataPreScene[8], '/') ;
  //convert String to float
  for ( int i = 0 ; i < 10 ; i++) {
  valueSliderGlobal[i] = Float.valueOf(valueSliderTempGlobal[i]) ;
  }
  
  for ( int i = 0 ; i < 30 ; i++) { 
    valueSliderObj [i] = Float.valueOf(valueSliderTempObj[i]) ;
    valueSliderTex [i] = Float.valueOf(valueSliderTempTex[i]) ;
    valueSliderTypo[i] = Float.valueOf(valueSliderTempTypo[i]) ;
  }
  
  if(valueTempPreScene[0].equals("0") ) spaceTouch = false ; else spaceTouch = true ;  

  if(valueTempPreScene[1].equals("0") ) aTouch = false ; else aTouch = true ;
  if(valueTempPreScene[2].equals("0") ) bTouch = false ; else bTouch = true ;
  if(valueTempPreScene[3].equals("0") ) cTouch = false ; else cTouch = true ;
  if(valueTempPreScene[4].equals("0") ) dTouch = false ; else dTouch = true ;
  if(valueTempPreScene[5].equals("0") ) eTouch = false ; else eTouch = true ;
  if(valueTempPreScene[6].equals("0") ) fTouch = false ; else fTouch = true ;
  if(valueTempPreScene[7].equals("0") ) gTouch = false ; else gTouch = true ;
  if(valueTempPreScene[8].equals("0") ) hTouch = false ; else hTouch = true ;
  if(valueTempPreScene[9].equals("0") ) iTouch = false ; else iTouch = true ;
  if(valueTempPreScene[10].equals("0") ) jTouch = false ; else jTouch = true ;
  if(valueTempPreScene[11].equals("0") ) kTouch = false ; else kTouch = true ;
  if(valueTempPreScene[12].equals("0") ) lTouch = false ; else lTouch = true ;
  if(valueTempPreScene[13].equals("0") ) mTouch = false ; else mTouch = true ;
  if(valueTempPreScene[14].equals("0") ) nTouch = false ; else nTouch = true ;
  if(valueTempPreScene[15].equals("0") ) oTouch = false ; else oTouch = true ;
  if(valueTempPreScene[16].equals("0") ) pTouch = false ; else pTouch = true ;
  if(valueTempPreScene[17].equals("0") ) qTouch = false ; else qTouch = true ;
  if(valueTempPreScene[18].equals("0") ) rTouch = false ; else rTouch = true ;
  if(valueTempPreScene[19].equals("0") ) sTouch = false ; else sTouch = true ;
  if(valueTempPreScene[20].equals("0") ) tTouch = false ; else tTouch = true ;
  if(valueTempPreScene[21].equals("0") ) uTouch = false ; else uTouch = true ;
  if(valueTempPreScene[22].equals("0") ) vTouch = false ; else vTouch = true ;
  if(valueTempPreScene[23].equals("0") ) wTouch = false ; else wTouch = true ;
  if(valueTempPreScene[24].equals("0") ) xTouch = false ; else xTouch = true ;
  if(valueTempPreScene[25].equals("0") ) yTouch = false ; else yTouch = true ;
  if(valueTempPreScene[26].equals("0") ) zTouch = false ; else zTouch = true ;
  //long touch
  if(valueTempPreScene[27].equals("0") ) cLongTouch = false ; else cLongTouch = true ;
  if(valueTempPreScene[28].equals("0") ) nLongTouch = false ; else nLongTouch = true ;
  if(valueTempPreScene[29].equals("0") ) vLongTouch = false ; else vLongTouch = true ;
  
  if(valueTempPreScene[30].equals("0") ) enterTouch = false ; else enterTouch = true ;
  if(valueTempPreScene[31].equals("0") ) deleteTouch = false ; else deleteTouch = true ;
  if(valueTempPreScene[32].equals("0") ) backspaceTouch = false ; else backspaceTouch = true ;
  if(valueTempPreScene[33].equals("0") ) upTouch = false ; else upTouch = true ;
  if(valueTempPreScene[34].equals("0") ) downTouch = false ; else downTouch = true ;
  if(valueTempPreScene[35].equals("0") ) rightTouch = false ; else rightTouch = true ;
  if(valueTempPreScene[36].equals("0") ) leftTouch = false ; else leftTouch = true ;
  if(valueTempPreScene[37].equals("0") ) ctrlTouch = false ; else ctrlTouch = true ;
  
  //MOUSE, CURSOR, PEN
  //PMOUSE
  // line for the SuperRomanesco object
  if(spaceTouch) {
    pmouseSuperRomanesco.x = map(Float.valueOf(valueTempPreScene[38].replaceAll(",", ".")), 0,1,0, width) ;
    pmouseSuperRomanesco.y = map(Float.valueOf(valueTempPreScene[39].replaceAll(",", ".")), 0,1,0,height) ;
  }
  // line for the camera Pmouse, i don't understand why we need this temp var
  if(cLongTouch) {
    pmouseCamera.x = map(Float.valueOf(valueTempPreScene[38].replaceAll(",", ".")), 0,1,0, width) ;
    pmouseCamera.y = map(Float.valueOf(valueTempPreScene[39].replaceAll(",", ".")), 0,1,0,height) ;
  }
  //
  pmouse[0].x = map(Float.valueOf(valueTempPreScene[38].replaceAll(",", ".")), 0,1,0, width) ;
  pmouse[0].y = map(Float.valueOf(valueTempPreScene[39].replaceAll(",", ".")), 0,1,0,height) ;

  //PEN
  pen[0].x = Float.valueOf(valueTempPreScene[40].replaceAll(",", ".")) ;
  pen[0].y = Float.valueOf(valueTempPreScene[41].replaceAll(",", ".")) ;
  pen[0].z = Float.valueOf(valueTempPreScene[42].replaceAll(",", ".")) ;
  
  //MOUSE
  // line for SuperRomanesco object
  if(spaceTouch) {
    mouseSuperRomanesco.x = map(Float.valueOf(valueTempPreScene[43].replaceAll(",", ".")), 0,1,0, width) ;
    mouseSuperRomanesco.y = map(Float.valueOf(valueTempPreScene[44].replaceAll(",", ".")), 0, 1, 0,height) ;
    mouseSuperRomanesco.z = map(Float.valueOf(valueTempPreScene[45].replaceAll(",", ".")), 0, 1, -750,750) ;
  }
  // line for the camera
  if(cLongTouch) {
    mouseCamera.x = map(Float.valueOf(valueTempPreScene[43].replaceAll(",", ".")), 0,1,0, width) ;
    mouseCamera.y = map(Float.valueOf(valueTempPreScene[44].replaceAll(",", ".")), 0, 1, 0,height) ;
    mouseCamera.z = map(Float.valueOf(valueTempPreScene[45].replaceAll(",", ".")), 0, 1, -750,750) ;
  }
  mouse[0].x = map(Float.valueOf(valueTempPreScene[43].replaceAll(",", ".")), 0,1,0, width) ;
  mouse[0].y = map(Float.valueOf(valueTempPreScene[44].replaceAll(",", ".")), 0, 1, 0,height) ;
  mouse[0].z = map(Float.valueOf(valueTempPreScene[45].replaceAll(",", ".")), 0, 1, -750,750) ;
  
  //BUTTON
  if(valueTempPreScene[46].equals("0") ) clickShortLeft[0] = false ; else clickShortLeft[0] = true ;
  if(valueTempPreScene[47].equals("0") ) clickShortRight[0] = false ; else clickShortRight[0] = true ;
  if(valueTempPreScene[48].equals("0") ) clickLongLeft[0] = false ; else clickLongLeft[0] = true ;
  if(valueTempPreScene[49].equals("0") ) clickLongRight[0] = false ; else clickLongRight[0] = true ;
  
  //WHEEL
  wheel[0] = Integer.parseInt(valueTempPreScene[50]) ;
  //END MOUSE, CURSOR, PEN
  
  //number key
  if(valueTempPreScene[51].equals("0") ) touch1 = false ; else touch1 = true ;
  if(valueTempPreScene[52].equals("0") ) touch2 = false ; else touch2 = true ;
  if(valueTempPreScene[53].equals("0") ) touch3 = false ; else touch3 = true ;
  if(valueTempPreScene[54].equals("0") ) touch4 = false ; else touch4 = true ;
  if(valueTempPreScene[55].equals("0") ) touch5 = false ; else touch5 = true ;
  if(valueTempPreScene[56].equals("0") ) touch6 = false ; else touch6 = true ;
  if(valueTempPreScene[57].equals("0") ) touch7 = false ; else touch7 = true ;
  if(valueTempPreScene[58].equals("0") ) touch8 = false ; else touch8 = true ;
  if(valueTempPreScene[59].equals("0") ) touch9 = false ; else touch9 = true ;
  if(valueTempPreScene[60].equals("0") ) touch0 = false ; else touch0 = true ;
}


//DRAW
void OSCDraw() {
  //GLOBAL
  if(valueButtonGlobal.length > 1 || valueButtonObj.length > 1 || valueButtonTex.length > 1 || valueButtonTypo.length > 1 ) {
    eBeat = valueButtonGlobal[1] ;
    eKick = valueButtonGlobal[2] ;
    eSnare = valueButtonGlobal[3] ;
    eHat = valueButtonGlobal[4] ;
    //meteo
    eMeteo = valueButtonGlobal[5] ;
    //dropdown typo
    whichFont(valueButtonGlobal[7]) ;
    //curtain
    eCurtain = valueButtonGlobal[10] ;
  
  
    //OBJ
    for ( int i = 0 ; i < 9 ; i++) {
      mainButton     [i +1] = valueButtonObj[i *10 +1] ;
      parameterButton[i +1] = valueButtonObj[i *10 +2] ;
      soundButton    [i +1] = valueButtonObj[i *10 +3] ;
      actionButton   [i +1] = valueButtonObj[i *10 +4] ;
      meteoButton    [i +1] = valueButtonObj[i *10 +5] ;
      modeButton     [i +1] = valueButtonObj[i *10 +9] ;
    }
    //TEXTURE
    for ( int i = 0 ; i < 7 ; i++) {
      mainButton     [i +21] = valueButtonTex[i *10 +1] ;
      parameterButton[i +21] = valueButtonTex[i *10 +2] ;
      soundButton    [i +21] = valueButtonTex[i *10 +3] ;
      actionButton   [i +21] = valueButtonTex[i *10 +4] ;
      meteoButton    [i +21] = valueButtonTex[i *10 +5] ;
      modeButton     [i +21] = valueButtonTex[i *10 +9] ;
    }
    
    //TYPO
    for ( int i = 0 ; i < 5 ; i++) {
      mainButton     [i +41] = valueButtonTypo[i *10 +1] ;
      parameterButton[i +41] = valueButtonTypo[i *10 +2] ;
      soundButton    [i +41] = valueButtonTypo[i *10 +3] ;
      actionButton   [i +41] = valueButtonTypo[i *10 +4] ;
      meteoButton    [i +41] = valueButtonTypo[i *10 +5] ;
      modeButton     [i +41] = valueButtonTypo[i *10 +9] ;
    }
  }
}
