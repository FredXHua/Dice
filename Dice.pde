 Die Alpha;
 int totalSum = 0;

void setup()
  {
    size(600,600);  
    noLoop();
  }
void draw()
  {
    background(50);
    
    for(int yq = 0; yq < 10; yq++)
    for(int q = 0; q < 7; q++)
    {
      Alpha = new Die((int)(Math.random() * 20)+80*q+20, (int)(Math.random() * 20)+60*yq); 
      Alpha.roll();
      totalSum += Alpha.show();
    } 
    
    textSize(300);    
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),80);
    text(totalSum, 0, 600);

  }
   
   void mousePressed()
  {
    redraw();
    Die Alpha;
    totalSum = 0;
  }
  
  class Die
  {
      int Dot, AlphaX, AlphaY;
  Die(int x, int y)
      {
          AlphaX = x;
          AlphaY = y;
      }
      void roll()
      {
        Dot = (int)(Math.random()*6)+1;
      }
  int show(){
    if (Dot == 1)
    {

      rect(AlphaX, AlphaY, 40, 40, 7);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(AlphaX + 20, AlphaY + 20, 5, 5);
      return 1;
    }
    if (Dot == 2)
    {

      rect(AlphaX, AlphaY, 40, 40, 7);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(AlphaX + 30, AlphaY +10, 5, 5);
      ellipse(AlphaX + 10, AlphaY +30, 5, 5);
      return 2;
    }
    if (Dot == 3)
    {

      rect(AlphaX, AlphaY, 40, 40, 7);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(AlphaX + 10, AlphaY +30, 5, 5);
      ellipse(AlphaX + 20, AlphaY +20, 5, 5);
      ellipse(AlphaX + 30, AlphaY +10, 5, 5);
      return 3;
    }
    if (Dot == 4)
    {

      rect(AlphaX, AlphaY, 40, 40, 7);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(AlphaX + 10, AlphaY + 10, 5, 5);
      ellipse(AlphaX + 10, AlphaY + 30, 5, 5);
      ellipse(AlphaX + 30, AlphaY + 10, 5, 5);
      ellipse(AlphaX + 30, AlphaY + 30, 5, 5);
      return 4;
    }
    if (Dot == 5)
    {

      rect(AlphaX, AlphaY, 40, 40, 7);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(AlphaX + 10, AlphaY +30, 5, 5);
      ellipse(AlphaX + 20, AlphaY +20, 5, 5);
      ellipse(AlphaX + 30, AlphaY +10, 5, 5);
      ellipse(AlphaX + 30, AlphaY +30, 5, 5);
      ellipse(AlphaX + 10, AlphaY +10, 5, 5);
      return 5;
    }
    if (Dot == 6)
    {
      rect(AlphaX, AlphaY, 40, 40, 7);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(AlphaX + 13, AlphaY + 10, 5, 5);
      ellipse(AlphaX + 13, AlphaY + 20, 5, 5);
      ellipse(AlphaX + 13, AlphaY + 30, 5, 5);
      ellipse(AlphaX + 27, AlphaY + 10, 5, 5);
      ellipse(AlphaX + 27, AlphaY + 20, 5, 5);
      ellipse(AlphaX + 27, AlphaY + 30, 5, 5);
      return 6;
    }
    else 
      return 0;
  }
}
