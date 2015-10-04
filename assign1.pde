/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage enemy;
PImage  fighter;
PImage hp;
PImage treasure;

int x,x1; 


void setup () 

{
  size(640,480) ; 
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  x=0;
  
 
  
  
}

void draw() 
{
  x+=2;
  image(bg2,x,0);
  image(bg1,x-bg2.width,0);
  x %=640;
  //background 
  
  image(fighter,560,240);
  //fighter
  
  stroke(255,0,0);
  fill(255,0,0);
  rect(53,30,119,12);// hp red
  image(hp,28,22);
  //hp
  
  image(treasure,350,350);
  //treasure
  
  x1+=5;
  x1%=640;
  image(enemy,x1,100);
 
  
 
}
