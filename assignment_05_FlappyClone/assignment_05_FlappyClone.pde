/* Code for Flappy Bird is based on Daniel Shiffman's Coding Challenge #31,
 * translated from JavaScript to Java. See https://youtu.be/cXgA1d_E-jY .
 */



StateMachine<GameState> sm;
FlappyBird game;
Duration timer;
Feedback fb;






void setup() {
  size(1020, 630);
  //frameRate(90);
  //fullScreen();
  
    BatMedal1=loadImage("BatMedal1.png");
    BatMedal2=loadImage("BatMedal2.png");
    BatMedal3=loadImage("BatMedal3.png");
    BatMedal4=loadImage("BatMedal4.png");
    BatMedal5=loadImage("BatMedal5.png");
    BatMedal6=loadImage("BatMedal6.png");
    BatMedal7=loadImage("BatMedal7.png");
    

  sm = new StateMachine<GameState>(
    new Title(), 
    new Loss(), 
    new Playing() 
    );
    
    
    


  game = new FlappyBird();

  timer = new Timer("Flappy Timer");
  //highScore=2000;
  checkAchievements();
}

void draw() {
  //pointLight(255,255,255,width/2,height/2,500);
  //lights();
  sm.current.onSustain();
}

void mousePressed() {
  sm.current.onMousePressed();
}