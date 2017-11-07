int num = 100; //number of circles
float[] K = new float[num]; //seeting up the array
float x,y,time;
float speed =1;

void setup() {
  size(700, 700);
  smooth();
  background(0);
    y = height/3;
   noFill();

 for (int i = 0; i < K.length; i++) {
  K[i] = random(255); //width of line the ellipses come down in
}
stroke(100);
}


void draw() {
  stroke(random(255),random(255),random(255));
 
   x += speed; 
  ellipse(x-sin(x*200)*100, y + sin(x*100)*100,100,900);

  //point(x-sin(x*200)*100, y + sin(x*100)*100);
  //point(x + tan(x*100)*10, y + cos(x*1)*10);
 
// for (int i = 0; i<K.length;i++) {
//  ellipse((2*width/K.length) * i, K[i],50,50);
// K[i] = K[i]+100; //drags the ellipses down
 //if (K[i] > height) K[i] = 0;}
}