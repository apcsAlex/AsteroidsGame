class Bullet extends Floater
{
	public Bullet(Spaceship bob){
		myCenterX = bob.getX();
		myCenterY = bob.getY();
		myPointDirection = bob.getPointDirection();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = 7*Math.cos(dRadians) + bob.getDirectionX();
		myDirectionY = 7*Math.sin(dRadians) + bob.getDirectionY();
		myColor = 255;
	}

	public void show(){
		fill(255,0,0);
		ellipse((int)myCenterX,(int)myCenterY,8,8);
	}
	public void setX(int x){myCenterX = x;}  
    public int getX(){return (int)myCenterX;}   
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x){myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){myDirectionY = y;}  
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;}
}
