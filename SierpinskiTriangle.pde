int size;
public void setup()
{
  background(0);
  size(500, 500);
  size = 500;
}
public void draw()
{
  noStroke();
  background(0);
  sierpinskiTriangle(0, 400, size);
}

public void sierpinskiTriangle(int x, int y, int len)
{
  if (len <= 20) {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    if (x < width + 250) {
      triangle(x + mouseX - width/2, y + mouseY - height/2, x + len + mouseX - width/2, y + mouseY - height/2, x + len/2 + mouseX - width/2, y - len/2 + mouseY - height/2);
    }
  } else {
    sierpinskiTriangle(x, y, len/2);
    sierpinskiTriangle(x + len/2, y, len/2);
    sierpinskiTriangle(x + len/4, y - len/4, len/2);
  }
}

public void keyPressed()
{
  if (key=='w')
  {
    if (size > 100) {
      size -= 100;
    }
  }
  if (key=='s')
  {
    size += 100;
  }
}
