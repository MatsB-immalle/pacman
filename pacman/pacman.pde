enum GameMode {
  StartScreen,
  Level1
}

GameMode gameMode = GameMode.StartScreen;

Pacman p1 = new Pacman();

PImage startScreen;
PImage level1;

void setup()
{
  size(900,700); 
  frameRate(80);
  fill(255, 229, 0);  
  stroke(255, 229, 0);
  startScreen = loadImage("Pacman-startScreen.jpg");
  level1 = loadImage("intro.jpg");  
}

void draw()
{  
     
switch(gameMode) {
              case StartScreen:   
                   background(0,0,0);
                   image(startScreen, 0, 0);    
                   p1.teken();
                   break; 
      
              case Level1:
                   image(level1, 0, 0);   
                   break;   
                 }
}