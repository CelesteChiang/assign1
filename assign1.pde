/* please implement your assign1 code in this file. */

PImage healthPoint , treasure , outerSpace1 , outerSpace2 , enemy , fighter ;
int xOuterSpace , hpAmount , xEnemy , yEnemy , xTreasure , yTreasure ;

void setup () {
  size(640,480) ; 
  
  outerSpace1 = loadImage("img/bg1.png") ;
  outerSpace2 = loadImage("img/bg2.png") ;
  xOuterSpace = 0 ;
  
  healthPoint = loadImage("img/hp.png") ;
  hpAmount = floor(random(205)) ;
  
  treasure = loadImage("img/treasure.png") ;
  xTreasure = floor(random(280,600)) ;
  yTreasure = floor(random(100,400)) ;
  
  
  enemy = loadImage("img/enemy.png") ; 
  xEnemy = -15 ;
  yEnemy = floor(random(80,400)) ;
  
  fighter = loadImage("img/fighter.png") ;
  
}

void draw() {
  
  //outer space  
  image(outerSpace2,xOuterSpace,0) ;
  image(outerSpace1,xOuterSpace-outerSpace2.width,0) ;
  image(outerSpace2,xOuterSpace-outerSpace2.width-outerSpace1.width,0) ;
  xOuterSpace++ ;
  xOuterSpace %= (outerSpace2.width+outerSpace1.width) ;
  
  //health point
  fill(255,0,0);
  rect(45, 10, hpAmount, 30, 25) ;
  image(healthPoint,40,10) ;  

  //treasure
  image(treasure, xTreasure, yTreasure) ;

  //fighter
  image(fighter,550,300);
  
  //enemy
  image(enemy,xEnemy,yEnemy) ;  
  xEnemy += 3 ;
  xEnemy %= 640 ;
    
}
