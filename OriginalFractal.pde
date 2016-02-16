public void setup()
{
size(1000,1000);

}
public void draw()
{
background(20);
fractal(500,500,200,200);
}
public void fractal(int x, int y, int ok, int kk)
{
	rect(x - ok/2,y + ok/2,ok,kk);
	if(ok > 10 && kk > 10)
	{
		fractal(x - ok/2, y, ok/2, kk/2 );
		fractal(x + ok/2, y, ok/2, kk/2 );
	}
}
