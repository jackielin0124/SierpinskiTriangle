public void setup()
{
	size(400,400);
}
public void draw()
{
	sierpinski(0,400,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len>10){
		//Draw a triangle with the left corner at (`x`,`y`) and a base and height equal to `len`
		triangle(x,y,x+len/2,y-len,x+len,y);
		sierpinski(x, y, len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
		
	else  
		triangle(x,y,x+len/2,y-len,x+len,y);
}

