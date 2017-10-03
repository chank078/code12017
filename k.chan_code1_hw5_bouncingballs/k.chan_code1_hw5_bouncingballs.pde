float rectX=450;
float rectY=275;

float[] BXSpeed = new float[50];
float[] BYSpeed = new float[50];
float[] BX = new float[50];
float[] BY = new float[50];
int R = 25;
//int balls =50;
float[] balls= new float [50];
boolean value = false;

void setup(){
  size(800,600);

for (int i = 0; i < 50; i++) {
  BX[i] = random(50,400);
  BY[i] = random(50,550);
  BXSpeed[i] = random(1,6);
  BYSpeed[i] = random(1,6);
}}

void draw(){
  background(200,190,30);
  noStroke();

rect(rectX, rectY, 150,75);

 
for (int i = 0; i < 50; i++){
//Circle
fill(250,90,130);
ellipse(BX[i],BY[i], R,R);


BX[i] += BXSpeed[i];
BY[i] += BYSpeed[i];

//boundaries
if (BX[i]>790){
  BXSpeed[i] = BXSpeed[i] * -1;
    BX[i] = 790;}
if (BY[i]>590){
  BYSpeed[i] = BYSpeed[i] * -1;
    BY[i] =590;}
if (BX[i]<10){
  BXSpeed[i] = BXSpeed[i] * -1;
  BX[i] =10;}
if (BY[i]<10){
  BYSpeed[i] = BYSpeed[i] * -1;
  BY[i]=10;}
  
 //Bounce
  //top button wall
  if (BY[i]+R/2 > rectY && BX[i]>rectX && BX[i]<rectX+150){
    BYSpeed[i] = BYSpeed[i] * -1;
  if(value == false){ value = true;}
  else if (value == true) { value = false;}}
 //bottom Button wall
 if (BY[i]-R/2>rectY+75 && BX[i]>rectX && BX[i] <rectX+150){
   BYSpeed[i]= BYSpeed[i] * -1;
   if(value == false){ value =true;} 
   else if(value==true){value=false;}}
 //left wall
 if (BX[i]+R/2 < rectX && BY[i]>rectY && BY[i]<rectY+75){
    BXSpeed[i] = BXSpeed[i] * -1;
  if(value == false){
    value= true;}
    else if (value ==true) {
      value = false;}}
      //right wall
if(BX[i]-R/2 <rectX+150 && BY[i] > rectY && BY[i] < rectY+75){
    BXSpeed[i] = BXSpeed[i] * -1;
  if(value == false){
    value= true;}
    else if (value ==true) {
      value = false;}}


}}