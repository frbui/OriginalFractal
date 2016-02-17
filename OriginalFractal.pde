public void setup()
{
size(700,700);

}
public void draw()
{
background(0);
fill(0);
strokeWeight(2);
stroke(0,(int)(Math.random()*102),(int)(Math.random()*204));
fractal(350,250,300,300);
}
public void fractal(int x, int y, int ok, int kk)
{
	rect(x - ok/2,y + ok/2,ok,kk);
	if(ok > 10 && kk > 10)
	{
		fractal(x - ok/2, y, ok/2, kk/2 );
		fractal(x + ok/2, y, ok/2, kk/2 );
	}
	if(ok > 10)
{
  pushMatrix();
  translate(x-ok/2,y);
  fractal(0,0,ok/2, kk /2);
  popMatrix();
  pushMatrix();
  translate(x+ok/2,y);
  fractal(0,0,ok/2, kk/2);
  popMatrix();
}
if(ok > 50)
 {
    pushMatrix();
    translate(x-ok/2,y);
    rotate(-PI/2);
    fractal(0,0,ok/2, kk/2);
    popMatrix();
    pushMatrix();
    translate(x+ok/2,y);
    rotate(PI/2);
    fractal(0,0,ok/2, kk/2);
    popMatrix();
  }
}
