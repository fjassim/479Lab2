int current_heartrate2 = 0;
long starttime= 0;
long difference = 0;
int blood_oxylvl2= 0;
int conf2= 0;
void intro_draw(){
  // Main menu GUI
  //background(255);
  if (millis() - lastColorChangeTime > 2000) {
    // Change the background color to the next color in the array
    background(colors[currentColorIndex]);
    
    // Increment the current color index, and wrap around if needed
    currentColorIndex = (currentColorIndex + 1) % colors.length;
    
    // Update lastColorChangeTime to the current time
    lastColorChangeTime = millis();
  }
  else{
     background(colors[currentColorIndex]);
  }
  pushStyle();
  
  textSize(28);
  text("Welcome to Fitness Strap!", 100, 40);
  //rectMode(CENTER);
  //rect(width / 2, height / 2,495 , 495);
  fill(0);
  textSize(24);
  image(img, 180, 70);
  //image(img2, 250, 20, 150, 150);

  textAlign(CENTER);/*
  String u= "Current heart rate: "+ String.valueOf(int (current_heartrate2));
  String v= "Time between beats: "+String.valueOf(difference)+"ms" ;
  String w= "Blood oxygen level: "+ String.valueOf(blood_oxylvl2);
  String x= "Confidence: "+ String.valueOf(conf2);
  
  text(u, width/2, 250);
  text(v, width/2, 325);
  text(w, width/2, 275);
  text(x, width/2, 300);
  textSize(18);*/
  
   //background(255);
  
  // Draw a longer and skinnier rectangle with rounded corners (light blue)
  fill(173, 216, 230);  // Light blue color
  float cornerRadius = 15; // Adjust the radius for rounded corners
  rect((float)100, (float)250, (float)300, (float) 50, cornerRadius);
  fill(255);
  textSize(18);
  text("->  Press 'f' for Fitness Mode", 240, 280); // Adjusted text position
  
  fill(173, 216, 230);  // Light blue color
  rect((float)100, (float)300, (float)300, (float) 50, cornerRadius);
  fill(255);
  textSize(18);
  text("->  Press 's' for Stress Monitor Mode", 240, 330); // Adjusted text position
  fill(173, 216, 230);  // Light blue color
  rect((float)100, (float)350, (float)300, (float) 50, cornerRadius);
  fill(255);
  textSize(18);
  text("->  Press 'm' for Meditation Mode", 240, 380); // Adjusted text position
  
  popStyle();
  //delay(5);
  
}
