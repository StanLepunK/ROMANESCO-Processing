// LOAD
boolean openLoad = true ;
void loadPrescene() {
	// we must send the load path to Scene to also open the save setting in the scene with only one opening window input
	if((load_Scene_Setting || load_Scene_Setting_local) && openLoad) {
		openLoad = false ;
		selectInput("Load setting Scene", "loadSettingScene") ; // ("display info in the window" , "name of the method callingBack" )
	}
}


String path_to_load_scene_setting = ("") ;
// method callingBack
void loadSettingScene(File selection) {
	println(path_to_load_scene_setting) ;
  if (selection != null) {
  	path_to_load_scene_setting = selection.getAbsolutePath();
  	loadDataObject(path_to_load_scene_setting) ;
  } 
  load_Scene_Setting = false ;
  load_Scene_Setting_local = false ;
  openLoad = true ;
}