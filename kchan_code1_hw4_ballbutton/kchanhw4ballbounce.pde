//create a button that a circle will bounce off of
//button needs to be activated by click or bounce
//extra credit for non-sq collision detection and reaction
//200 points to create breakout with a moveable paddle and 2+ breakable brick

float X = 0;
float Y = 0;
float D = 20;

float Xspeed = 4 ;
float Yspeed = -8;

//A is line
float ABY = 450;
float ATY =  20;
float ARX = 580;
float ALX = 20;

float ButtonR = 75;
float BallR = 10;

boolean value = false;


void setup(){
  size(600,600);
}

void draw(){
  background(120,230,250);
  X = X + Xspeed;
  Y = Y + Yspeed;
  fill(0);
  ellipse(X,Y,D,D);
  
   //button structure
 fill(150,0,0);
 ellipse(300,0,150,150);
 fill(0);
 rectMode(CENTER);
 rect(300,10,155,30);
  
//boundaries for bounce
  if(Y > ABY) {
      Yspeed = Yspeed * -1;
      Y = ABY;  }
  if (Y<ATY){
      Yspeed = Yspeed * -1;
      Y = ATY;}

  if (X>ARX){
      Xspeed = Xspeed * -1; //same as Xspeed *= -1
      X=ARX; } 
  if (X<ALX){
      Xspeed = Xspeed * -1;
      X=ALX;}
      
  if (dist(300,0,X,Y) <ButtonR+BallR) {
    Xspeed = Xspeed * -1;
    Yspeed = Yspeed * -1; 
  textSize(150);
  text("Winner!",20,300);
  fill(255);}
  } 
  
  

//EXTRA UNFINISHED NOTES
 //inprogress boundaries for button 
 //if ( 225 < X && X < 375 == true){
  //  Xspeed = Xspeed * -1; }
  //if (Y > 75){
   //Yspeed = Yspeed * -1;}

//can use beginShape to make connect the dots?
      
//moveable paddle
    //fill(200,150,190);
    //noStroke();
    //rectMode(CENTER);
    //rect(mouseX,ABY,130,10,5);
    
 //two bricks
   //fill(190,240,140);
   //rectMode(CORNER);
   //rect(10,200,280,50);
   //rect(310,200,280,50);
 
  //concept: button will turn and stay winner!
  //happycoding.io/tutorials/processing/collision-detection