void meditation_draw(){
  pushStyle();
   background(255);
  fill(0);
  textSize(28);
  text("Meditation Mode", 150, 30);
  textSize(12);
  text("< Press b for back", 20, 25);
  
  String s= "Resting heart rate: "+ String.valueOf(int(resting_heartrate));
  String t= "Resting heart zone: "+ Heartrate_zone;
  String y = "Resting resp rate";
  //String y="Resting respiratory rateL " + String.valueOf(int(resting_resprate));
  
  textSize(14);
  text (s, 170, 60);
  text (t, 170, 85);
  text(y, 170,110);
  
  textSize(20);
  String m = "Meditate. Inhale at 1/3 your exhale rate";
  text(m, 115, 250);
  int meditateStatus = 1; //CHANGE BASED OFF OF WHETHER THE RATE IS CORRECT
  String status;
  
  //if is green make background green, else red
   if(meditateStatus == 1){
      background(144, 238, 144);
      status = "Meditate status: GREEN";
      textSize(28);
      text("Meditation Mode", 150, 30);
      textSize(12);
      text("< Press b for back", 20, 25);
      textSize(14);
      text (s, 170, 60);
      text (t, 170, 85);
      text(y, 170,110);
      text(m, 115, 250);
   } else {
     background(255, 0, 0);
     status = "Meditate status: RED";
     textSize(28);
      text("Meditation Mode", 150, 30);
      textSize(12);
      text("< Press b for back", 20, 25);
      textSize(14);
      text (s, 170, 60);
      text (t, 170, 85);
      text(y, 170,110);
      text(m, 115, 250);
   }
   textSize(21);
   text(status, 140, 280);
  
  //rectMode(CENTER);
  //rect(width / 2, height / 2,495 , 495);
  fill(0);
  
}
