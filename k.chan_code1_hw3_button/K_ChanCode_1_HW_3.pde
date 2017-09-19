int X=250;
int Y=250;
int H=150;
int W=150;
boolean value = false;

void setup() {
  size(500,500);
  background(40,159,180);
}
void draw() {
   noStroke();
   fill(250,132,190);
  ellipse(X,Y,W,H);

if (value == true){
  noStroke();
   fill(250,132,190);
  ellipse(X,Y,W,H);
  }  
else {
 noStroke();
   fill(250,132,190);
  ellipse(X,Y,W,H);

if(mouseX > X - (W/2) && mouseX < X + (W/2) && mouseY > Y -(W/2) && mouseY < Y +(W/2)){
     fill(210,160,215);
     noStroke();
     ellipse(X,Y, W,H);
  } 
}
}
void mousePressed(){
  if(mouseX > X - (W/2) && mouseX < X + (W/2) && mouseY > Y -(W/2) && mouseY < Y +(W/2)){
  value = true;
  background(color(random(255),random(255),random(255)));
  }

}