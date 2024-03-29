int buzzer = 12;
void keyPressed(){
  switch (key){
    case 'h':
      tab= "Baseline";
       break;
     case 'f':
       tab= "Fitness";
       break;
     case 's':
       tab= "Relaxed_Stressed";
       break;
      case 'b':
       tab= "intro";
       break;
      case 'm':
       tab="meditation";
       break;
      
  }
  
}
public void handleButtonEvents(GButton button, GEvent event) {
  if(button == timer_button && event == GEvent.CLICKED){
    if (timer_state==1)
      timer_state=0;
     else
     timer_state= 1;
     
     if (timer_state==1){
       fitnesstimer.start();
     }
     else{
       fitnesstimer.pause();
     }
    
  }
  else if (button == endf_button && event == GEvent.CLICKED){
    
    if (!fitnesstimer.isPaused()){
       fitnesstimer.pause();
    }
     

    handletimers2(); //<>//
    tab= "endFitness"; //<>//
  }
   else if (button == start_relaxed && event == GEvent.CLICKED){
     if (relaxed_state==1)
      relaxed_state=0;
     else
     relaxed_state= 1;
     
     if (relaxed_state==1){
       relaxedtimer.start();
     }
     else{
       relaxedtimer.pause();
     }
   }
   else if (button == end_relaxed && event == GEvent.CLICKED){
     if (!relaxedtimer.isPaused()){
       relaxedtimer.pause();
       handle_endrelaxed("relaxed");
    }
   }
   else if (button == start_stressed && event == GEvent.CLICKED){
     if (stressed_state==1)
      stressed_state=0;
     else
     stressed_state= 1;
     
     if (stressed_state==1){
       stressedtimer.start();
       myPort.write('1');
     }
     else{
       stressedtimer.pause();
     }
   }
   else if (button == end_stressed && event == GEvent.CLICKED){
     if (!stressedtimer.isPaused()){
       stressedtimer.pause();
       handle_endrelaxed("stressed");
    }
   }
}
void handle_endrelaxed(String str){
  float decrease= ((resting_heartrate- relaxed_heartrate)*100/resting_heartrate );
  if (str == "relaxed")message= "You are RELAXED, by "+ decrease+"%";
  else if  (str == "stressed") {message= "You are STRESSED by "+ decrease+"%";
  myPort.write('1');}
}
