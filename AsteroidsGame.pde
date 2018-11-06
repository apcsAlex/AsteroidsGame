Spaceship bob;
Star[] spaceSky = new Star[100];

public void setup()
{
	size(600,600);
	bob = new Spaceship();
  	for (int i = 0; i < spaceSky.length; i++)
  	{
  		spaceSky[i] = new Star();
  	}
}
public void draw() 
{
	background(0);
	for (int i = 0; i < spaceSky.length; i++)
	{
		spaceSky[i].show();

	}
	bob.show();
	bob.move();
}

public void keyPressed()
{
	if(key =='q')
	{
		bob.setDirectionX(0); 
     	bob.setDirectionY(0);
     	bob.setX((int)(Math.random()*450)+100);
     	bob.setY((int)(Math.random()*450)+100);
     	bob.setPointDirection((int)(Math.random()*360));
	}
	if(key == 'd')
	{
		bob.turn(15);
		bob.nofire();
	}
	if(key =='a')
	{
		bob.turn(-15);
		bob.nofire();
	}
	if(key == 'w')
	{
		bob.accelerate(0.3);
		bob.fire();
	}
}
