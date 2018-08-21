enum GameMode {
  StartScreen,
  Level1,
  Level2
}

GameMode gameMode = GameMode.StartScreen;

Pacman p1 = new Pacman();

PImage startScreen;
PImage level1;
PImage level2;

float fx1 = 797;
float fx2 = 870;
float fy1 = 675;
float fy2 = 698;


void setup()
{
  size(900,700); 
  frameRate(80);
  fill(255, 229, 0);  
  stroke(255, 229, 0);
  startScreen = loadImage("Pacman-startScreen.jpg");
  level1 = loadImage("intro.jpg");  
  level2 = loadImage("level2.jpg");
}

void draw()
{     

switch(gameMode) {
       case StartScreen:   
             background(0,0,0);
             image(startScreen, 0, 0);                    
             if(mousePressed == true && mouseX >= 304 && mouseX <= 588 && 
                mouseY >= 535 && mouseY <= 617)
               {
                gameMode = GameMode.Level1;
               }
            break; 
      
       case Level1:
            image(level1, 0, 0);   
             p1.teken();
             
            if(p1.x >= fx1 && p1.y > fy1 &&p1.x < fx2 && p1.y < fy2 )
             {
              
                gameMode = GameMode.Level2;
                p1.x = 25;
                p1.y = 25;              
             }
           
            break;
            
       case Level2:
            image(level2, 0, 0);   
            p1.teken();
            
            if(p1.x >= fx1 && p1.y > fy1 &&p1.x < fx2 && p1.y < fy2 )
             {                
                p1.x = 25;
                p1.y = 25;              
             }
            
            break;   
                 }
                 
}