Spaceship bob;
Star[] spaceSky = new Star[250];
ArrayList <Asteroid> astro;

public void setup()
{
	size(900,600);
	bob = new Spaceship();
  	for (int i = 0; i < spaceSky.length; i++)
  	{
  		spaceSky[i] = new Star();
  	}
  	astro = new ArrayList <Asteroid>();
  	for (int i = 0; i <30 ;i++)
  	{
  		astro.add(new Asteroid());
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
	for (int i = 0; i < astro.size();i++)
	{
		astro.get(i).show();
		astro.get(i).move();
		float d = dist(bob.getX(), bob.getY(), astro.get(i).getX(), astro.get(i).getY());
		if (d < 23)
				astro.remove(i);

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
