class Spaceship extends Floater  
{   
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  public Spaceship() 
  {

  }
  	public void setX(int x){myCenterX = x;}
  	public int getX(){return x;}
  	public void setY(int y){myCenterY = y;}
  	public int getY(){return y; }
  	public void setDirectionX(){myDirectionX = x;}
  	public double getDirectionX(){return x;}
  	public void setDirectionY(){myDirectionY = y;}
  	public double getDirectionY(){return x;}
  	public void setPointDirection(int degrees){myPointDirection = degrees;}
  	public double getPointDirection(){return (int)myPointDirection;}
}
