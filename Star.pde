class Star //note that this class does NOT extend Floater
{

  private int myX, myY, myColor;
  public Star()
  {
  	myX =  (int)(Math.random()*900);
  	myY =  (int)(Math.random()*600);

  }

  public void show()
  {
  	fill(255);
  	ellipse(myX, myY, 1 ,1);
  }
  public void walk()
  {
    myX = myX + 1;
    myY = myY + 1;

  	if(myX > width){
  		myX = 0;
  
  }
  else if (myX < 0)
    
    myX= width;

  if(myY > height){

		myY = 0;
		}
    else if (myY < 0)
      
      myY = height;

	}

}