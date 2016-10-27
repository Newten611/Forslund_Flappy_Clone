int highScore=0;
int achievementNum=0; // Fat Bat
PImage BatMedal1;
PImage BatMedal2;
PImage BatMedal3;
PImage BatMedal4;
PImage BatMedal5;
PImage BatMedal6;
PImage BatMedal7;


void checkAchievements() {
  if (highScore>=1000) {
    achievementNum=7;
  } else if (highScore>=500) {
      achievementNum=6;
    } else if (highScore>=250) {
        achievementNum=5;
      } else if (highScore>=100) {
          achievementNum=4;
        } else if (highScore>=50) {
            achievementNum=3;
          } else if (highScore>=10) {
              achievementNum=2;
            } else if (highScore>=1) {
                achievementNum=1;
              } else {
                achievementNum=0;
              }
    
  
}

void drawAchievements() {  // I very much wanted to use a for loop here, but for some reason it broke the sketch no matter what I tried. The entire screen would turn gray and refuse to do anything.
  pushStyle();
  fill(150);
  stroke(125);
  strokeWeight(5);
  textAlign(CENTER);
  imageMode(CENTER);
  pushMatrix();
  


  if (achievementNum>0) {
    if (dist(mouseX, mouseY, width/2-width/17*6, height-height/10)<width/17/2) {
      image(BatMedal1,width/2-width/17*6, height-height/10, width/14, width/14);
      textSize(28);
      text("Fat Bat", width/2, height-height/4.5);
      textSize(18);
      text("You beat the first hurdle. How terribly impressive.", width/2, height-height/5.8);
    } else {
      image(BatMedal1,width/2-width/17*6, height-height/10, width/17, width/17);
    }
  }
  if (achievementNum>1) {
    if (dist(mouseX, mouseY, width/2-width/17*4, height-height/10)<width/17/2) {
      image(BatMedal2,width/2-width/17*4, height-height/10, width/14, width/14);
      textSize(28);
      text("Winged Rat", width/2, height-height/4.5);
      textSize(18);
      text("You continue to meet the lowest expectations.", width/2, height-height/5.8);
    } else {
      image(BatMedal2,width/2-width/17*4, height-height/10, width/17, width/17);
    }
  }
  if (achievementNum>2) {
    if (dist(mouseX, mouseY, width/2-width/17*2, height-height/10)<width/17/2) {
      image(BatMedal3,width/2-width/17*2, height-height/10, width/14, width/14);
      textSize(28);
      text("Fruit Bat", width/2, height-height/4.5);
      textSize(18);
      text("You are truly getting the most out of this rich and varied gameplay experience.", width/2, height-height/5.8);
    } else {
      image(BatMedal3,width/2-width/17*2, height-height/10, width/17, width/17);
    }
  }
  if (achievementNum>3) {
    if (dist(mouseX, mouseY, width/2, height-height/10)<width/17/2) {
      image(BatMedal4,width/2, height-height/10, width/14, width/14);
      textSize(28);
      text("Bat Wonder", width/2, height-height/4.5);
      textSize(18);
      text("It is uncertain as to why you continue to play this game.", width/2, height-height/5.8);
    } else {
      image(BatMedal4,width/2, height-height/10, width/17, width/17);
    }
  }
  if (achievementNum>4) {
    if (dist(mouseX, mouseY, width/2+width/17*2, height-height/10)<width/17/2) {
      image(BatMedal5,width/2+width/17*2, height-height/10, width/14, width/14);
      textSize(28);
      text("Just Keep Flying", width/2, height-height/4.5);
      textSize(18);
      text("Your perserverence is a testement to the mindlessness of humanity.", width/2, height-height/5.8);
    } else {
      image(BatMedal5,width/2+width/17*2, height-height/10, width/17, width/17);
    }
  }
  if (achievementNum>5) {
    if (dist(mouseX, mouseY, width/2+width/17*4, height-height/10)<width/17/2) {
      image(BatMedal6,width/2+width/17*4, height-height/10, width/14, width/14);
      textSize(28);
      text("Bat of Legend", width/2, height-height/4.5);
      textSize(18);
      text("Clearly you have no life. Why must you insist on playing this game?", width/2, height-height/5.8);
    } else {
      image(BatMedal6,width/2+width/17*4, height-height/10, width/17, width/17);
    }
  }
  if (achievementNum>6) {
    if (dist(mouseX, mouseY, width/2+width/17*6, height-height/10)<width/17/2) {
      image(BatMedal7,width/2+width/17*6, height-height/10, width/14, width/14);
      textSize(28);
      text("Bat Out Of Hell", width/2, height-height/4.5);
      textSize(18);
      text("Just stop.", width/2, height-height/5.8);
    } else {
      image(BatMedal7,width/2+width/17*6, height-height/10, width/17, width/17);
    }
  }
  popMatrix();
  popStyle();
}