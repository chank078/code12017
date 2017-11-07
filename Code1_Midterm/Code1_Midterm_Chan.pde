import processing.pdf.*;

int num = 500;
Fibonacci[] fibo = new Fibonacci[num];
float x;
float y;
float angle;
float radius;
int dim;

void setup(){
   size(500,500,PDF,"please.pdf");
  dim = width/2;
  frameRate(10);
  colorMode(HSB, 360,100,100);
  background(0);
  for(int i=0; i<num; i++){
    fibo[i] = new Fibonacci(i);
    fill(random(255),random(255),random(255));
    x=cos(angle)*radius;
    y=sin(angle)*radius;
    ellipse(10,10,100,1); 
  }
}

void draw(){
 
  background(0);
  for (int x = 0; x<= width; x+= dim){
    drawGradient(x,height/2);}
  for(int i=0; i<num; i++){
    fibo[i].go();
  }
 line(0,0, frameCount *4, height);
 PGraphicsPDF pdf = (PGraphicsPDF) g; 
 if (frameCount == 100){
   exit();
 } else{ 
   pdf.nextPage();}
}

void drawGradient(float x, float y) {
  int radius = dim/2;
  float h = random(0, 360);
  for (int r = radius; r > 0; --r) {
    fill(h, 90, 90);
    h = (h + 1) % 360;
  }
}


class Fibonacci{
  
  PVector location;
  //PVector velocity;
  float r;
  float theta;
  int id;
  
  float PHI = (1+sqrt(5))/2;
  int  CA = 360;
  float GR = CA - (CA/PHI);

  int Size = 5;
  
  Fibonacci(int id_){
    id = id_;
    r = id;
    theta = radians(GR * id);
    //location = new PVector(r * cos(theta)+(width/2),r * sin(theta)+(height/2));
  }
  
  void go(){
    update();
    display();
  }
  
  void update(){
    theta += 3*0.9; 
    location = new PVector(r * cos(theta)+(width/3),r * sin(theta)+(height/3));
  }
  
  void display(){
    smooth();
    noStroke();
    ellipse(location.x,location.y,Size,Size);
  }
}

void keyPressed(){
  if(key == 'q'){
    endRecord();
    exit();}}