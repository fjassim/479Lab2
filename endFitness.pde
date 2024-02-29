void endFitness_draw(){
  pushStyle();
  background(255);
  fill(0);
  textSize(30);
  textAlign(CENTER);
  text("EXERCISE ZONES", width/2, 40);
  textSize(12);
  text("< Press b for back", 60, 25);
  
  // Define background colors for each zone
  fill(255, 0, 0); // Red for MAXIMUM zone
  rect(50, 50, width - 100, 65);
  
  fill(255, 165, 0); // Orange for HARD zone
  rect(50, 130, width - 100, 65);
  
  fill(255, 255, 0); // Yellow for MODERATE zone
  rect(50, 210, width - 100, 65);
  
  fill(0, 255, 0); // Green for LIGHT zone
  rect(50, 290, width - 100, 65);
  
  fill(135, 206, 250); // Light blue for VERY LIGHT zone
  rect(50, 370, width - 100, 65);
  
  fill(0);
  String u="MAXIMUM: "+zones.get(0).hour() + ":" + nf(zones.get(0).minute(), 2) + ":" +
   nf(zones.get(0).second(), 2) + ":" + nf(zones.get(0).millis(), 3) + "\nRespiratory rate change:" + "\nInhalation duration:" + "\nRespiration duration:";
   String v="HARD: "+zones.get(1).hour() + ":" + nf(zones.get(1).minute(), 2) + ":" +
   nf(zones.get(1).second(), 2) + ":" + nf(zones.get(1).millis(), 3) + "\nRespiratory rate change:" + "\nInhalation duration:" + "\nRespiration duration:";
   String w="MODERATE: "+zones.get(2).hour() + ":" + nf(zones.get(2).minute(), 2) + ":" +
   nf(zones.get(2).second(), 2) + ":" + nf(zones.get(2).millis(), 3) + "\nRespiratory rate change:" + "\nInhalation duration:" + "\nRespiration duration:";
   String x="LIGHT: "+zones.get(3).hour() + ":" + nf(zones.get(3).minute(), 2) + ":" +
   nf(zones.get(3).second(), 2) + ":" + nf(zones.get(3).millis(), 3) + "\nRespiratory rate change:" + "\nInhalation duration:" + "\nRespiration duration:";
   String y="VERY LIGHT: "+zones.get(4).hour() + ":" + nf(zones.get(4).minute(), 2) + ":" +
   nf(zones.get(4).second(), 2) + ":" + nf(zones.get(4).millis(), 3) + "\nRespiratory rate change:" + "\nInhalation duration:" + "\nRespiration duration:";
  
  text(u, width/2, 70);
  text(v, width/2, 150);
  text(w, width/2, 230);
  text(x, width/2, 310);
  text(y, width/2, 390);
  textSize(20);
  timer_button.moveTo(10, 900);
  endf_button.moveTo(300, 900);
  popStyle();
}
