Spaceship bob;
Star[] spaceSky = new Star[250];
Asteroid[] astro = new Asteroid[30];

public void setup()
{
	size(900,600);
	bob = new Spaceship();
  	for (int i = 0; i < spaceSky.length; i++)
  	{
  		spaceSky[i] = new Star();
  	}
  	for (int i = 0; i < astro.length;i++)
  	{
  		astro[i] = new Asteroid();
  	}
}
public void draw() 
{
	background(0);
	for (int i = 0; i < spaceSky.length; i++)
	{
		spaceSky[i].show();
		spaceSky[i].walk();
	}
	for (int i = 0; i < astro.length;i++)
	{
		astro[i].show();
		astro[i].move();
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
     	bob.setX((int)(Math.random()*650)+100);
     	bob.setY((int)(Math.random()*450)+100);
     	bob.setPointDirection((int)(Math.random()*360));
     	bob.nofire();
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
