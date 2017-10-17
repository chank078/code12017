Bug b;

void settings(){
  size(600,600);
}
  
void setup() {
  b = new Bug();
}

void draw(){
 background(20,200,90);

 b.display();
 b.draw();
 b.mousePressed();
 b.control();
}