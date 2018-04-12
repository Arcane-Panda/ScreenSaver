Lines[] myLines = new Lines [100];
void setup()
{
  fullScreen();
  //size(400,500);
  //size(displayWidth, displayHeight);
  background(0);
  for (int i = 0; i < myLines.length; i++)
  {
    myLines[i] = new Lines(random(width), random(height), 2, 5);
  }
}

void draw()
{

  if (frameCount > 500)
  {
    background(0);
    frameCount = 0;
  } else
  {
    for (int i = 0; i < myLines.length; i++)
    {
      myLines[i].display();
    }
  }
}