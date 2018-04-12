class Lines
{
  //Member Variables
  float xpos = 0;
  float ypos = 0;
  float strokeW, lineLength;
  
  // Constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength)
  {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }

  //Display Method
  void display()
  {
    strokeWeight(strokeW);
   // lineLength = random(1, 20);
    stroke(random(10), random(100), random(200));
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0)
    {
      xpos = random(width);
      ypos = random(height);
    } else
    {
      if (random(100)> 70)
      {
        strokeWeight(strokeW);
        moveLeft(lineLength, xpos, ypos);
      } else if (random(100)>65)
      {
        strokeWeight(strokeW);
        moveUp(lineLength, xpos, ypos);
      } else if (random(100)>55)
      {
        strokeWeight(strokeW);
        moveDown(lineLength, xpos, ypos);
      } else
      {
        strokeWeight(strokeW);
        moveRight(lineLength, xpos, ypos);
      }
    }
  }
  
  //Move Methods
  void moveRight(float rep, float startX, float startY )
  {
    for (int i = 0; i < rep; i++)
    {
      point(startX + i, startY);
    }
    xpos = startX + rep;
    ypos = startY;
  }

  void moveLeft(float rep, float startX, float startY)
  {
    for (int i = 0; i < rep; i++)
    {
      point(startX - i, startY);
    }
    xpos = startX - rep;
    ypos = startY;
  }

  void moveUp(float rep, float startX, float startY)
  {
    for (int i = 0; i < rep; i++)
    {
      point(startX, startY - i);
    }
    ypos = startY - rep;
    xpos = startX;
  }

  void moveDown(float rep, float startX, float startY)
  {
    for (int i = 0; i < rep; i++)
    {
      point(startX, startY + i);
    }
    ypos = startY + rep;
    xpos = startX;
  }
}