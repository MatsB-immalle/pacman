class Pacman
{
 boolean isOpen = true;
 float hoek = 0;
 float verandering = TWO_PI/180;

 float x = 25;
 float y = 25;
 
 void teken()
 {
  translate(x,y);
  
  if (isOpen == true) hoek += verandering;
  else hoek -= verandering;  
  if (hoek >= TWO_PI/8 || hoek <= 0) isOpen = !isOpen; 
  
  rectMode(CENTER);
  
  if(mousePressed && (mouseButton == LEFT) )
  { 
    if (key == 's')
    {          
      y++; 
      rotate(radians(90));      
    }
    
    if (key == 'z')
    {         
       y--;
       rotate(radians(270));      
    } 
    if (key == 'd')
    {
       x++;
       rotate(radians(0));        
    } 
    if (key == 'q')
    {
       x--;
       rotate(radians(180));        
    }      
        
       arc(0, 0, 50, 50, 0+hoek, TWO_PI-hoek);
  }   
 }
}