/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage enemy;
PImage  fighter;
PImage hp;
PImage treasure;

int x,x1,a,treasureX,treasureY; //a=width of hp; 

boolean isPlaying=true;


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
  a=floor(random(0,119));
  treasureX=floor(random(0,640));
  treasureY=floor(random(0,480));
  
 
  
  
}

void draw() 
{
  if(isPlaying){
    x+=2;
    image(bg2,x,0);
    image(bg1,x-bg2.width,0);
    image(bg2,x-bg2.width-bg1.width,0);
    x %=bg1.width+bg2.width;
    //background 
    
    image(fighter,mouseX,mouseY- fighter.width/2.0);
    
    //fighter
    
    stroke(255,0,0);
    fill(255,0,0);
    rect(53,30,a,12);// hp red
    image(hp,28,22);
    //hp
    
    image(treasure,treasureX,treasureY);
    //treasure
    
    x1+=5;
    x1%=640;
    image(enemy,x1,100);
  }
  
 
}
