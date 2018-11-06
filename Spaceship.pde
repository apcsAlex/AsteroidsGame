class Spaceship extends Floater  
{   

  public Spaceship() 
  {
	corners = 4;
   	xCorners = new int[corners];
   	yCorners = new int[corners];
   	xCorners[0] = -8;
   	yCorners[0] = -8;
   	xCorners[1] = 16;
   	yCorners[1] = 0;
    xCorners[2] = -8;
   	yCorners[2] = 8;
   	xCorners[3] = -2;
   	yCorners[3] = 0;
 
    myColor = 255;
    myCenterX = 300;
    myCenterY = 300;
    myPointDirection = 0;
    myDirectionX = 0;
    myDirectionY = 0;
    }
  public void fire()
    {
        corners = 7;
        xCorners = new int[corners];
        yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;

        //fire
        xCorners[4] = -8;
        yCorners[4] = 3;
        xCorners[5] = -15;
        yCorners[5] = 0;
        xCorners[6] = -8;
        yCorners[6] = -3;
    }

  public void nofire()
    {
        corners = 9;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = -8;
        yCorners[0] = -5;
        xCorners[1] = -3;
        yCorners[1] = -6;
        xCorners[2] = -4;
        yCorners[2] = -13;
        xCorners[3] = 10;
        yCorners[3] = -3;
        xCorners[4] = 16;
        yCorners[4] = 0;

        xCorners[5] = 10;
        yCorners[5] = 3;
        xCorners[6] = -4;
        yCorners[6] = 13;
        xCorners[7] = -3;
        yCorners[7] = 6;
        xCorners[8] = -8;
        yCorners[8] = 5;
    }
  	public void setX(int x){myCenterX = x;}
  	public int getX(){return (int)myCenterX;}
  	public void setY(int y){myCenterY = y;}
  	public int getY(){return (int)myCenterY; }
  	public void setDirectionX(double x){myDirectionX = x;}
  	public double getDirectionX(){return (int)myDirectionX;}
  	public void setDirectionY(double y){myDirectionY = y;}
  	public double getDirectionY(){return (int)myDirectionY;}
  	public void setPointDirection(int degrees){myPointDirection = degrees;}
  	public double getPointDirection(){return (int)myPointDirection;}
}
