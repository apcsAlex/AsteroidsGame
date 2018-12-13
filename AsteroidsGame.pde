Spaceship bob;
Star[] spaceSky = new Star[250];
ArrayList <Asteroid> astro;
ArrayList <Bullet> bullet = new ArrayList <Bullet>();

public void setup()
{
	size(900,600);
	bob = new Spaceship();
  	for (int i = 0; i < spaceSky.length; i++)
  	{
  		spaceSky[i] = new Star();
  	}
  	astro = new ArrayList <Asteroid>();
  	for (int i = 0; i <50 ;i++)
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
		

	for(int i=0; i<bullet.size(); i++){
		for(int a=0; a<astro.size(); a++){
			if(dist(bullet.get(i).getX(),bullet.get(i).getY(),astro.get(a).getX(),astro.get(a).getY()) < 20){
				astro.remove(a);
				bullet.remove(i);
				break;
			}

		}
	}

	for(int i=0; i<bullet.size(); i++){
		if(bullet.get(i).getX() >= 900 || bullet.get(i).getX() <= 0){
			bullet.remove(i);
			break;
		}
	}

	for(int i=0; i<bullet.size(); i++){
		if(bullet.get(i).getY() >= 600 || bullet.get(i).getY() <= 0){
			bullet.remove(i);
			break;
		}
	}

	for(Bullet bull: bullet){
		bull.move();
		bull.show();
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

public void mouseClicked(){
	bullet.add(new Bullet(bob));
} 