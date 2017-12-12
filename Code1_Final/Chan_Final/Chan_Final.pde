//reference: https://www.openprocessing.org/sketch/60845#//

int value =0;
root [] roots = new root[0];
Dline [] Dlines = new Dline[0];
int r=46;
int g=105;
int b=100;


//ArrayList<PVector> positions = new ArrayList<PVector>(); give thrush hold of 7, could let big roots touch
void setup() {
   background(r,g,b); //traces the path of the circle
  size(800, 800);

}

void draw() {

  stroke(106,65,65, 50);
  smooth();
  //background(r,g,b);  //shows the position of the current moment of the circles
  for(int i = 0; i < roots.length; i++) {
    if(!roots[i].done())
    roots[i].go();
  }
}
  
void mouseClicked() {
    roots = (root[]) append(roots, new root(mouseX, mouseY, 15, 1, 1));
    background(r,g,b);
   for (int i=0; i<Dlines.length; i++){
      strokeWeight(Dlines[i].wl); 
      line(Dlines[i].X1, Dlines[i].Y1, Dlines[i].X2, Dlines[i].Y2); 
   }   
    r += 20;
    g += 20;
    b += 20;
} 


  class Dline {
  float X1;
  float Y1;
  float X2;
  float Y2;
  float wl;
  
    Dline (float tX1, float tY1, float tX2, float tY2, float twl) {
    X1 = tX1;
    Y1 = tY1;
    X2 = tX2;
    Y2 = tY2;
    wl = twl;

  }
  }
  
  class root {
  float X;
  float Y;
  float rot;   //rotation
  float V;     //velocity
  float tm;    //strokeweight
  
    root(int tX, int tY, float tfm, float trot, float tV) { //constructor
    X = tX;
    Y = tY;
    rot = trot;
    tm = tfm;
    V = tV;
  
  }
  


  void go() {
    tm /= 1.01; // Thickeness
    strokeWeight(tm);
    rot += random(-0.2, 0.2); //adds curves
    line(X, Y, X + V*sin(rot), Y + V*cos(rot)); 
    Dlines = (Dline[]) append(Dlines, new Dline(X, Y, X + V*sin(rot), Y + V*cos(rot),tm));
    
    X += V*sin(rot); //moves vertical 
    Y += V*cos(rot); //moves horizontal
     //positions.add(new PVector(X, Y) );
    if(random(400) > 399) { //if(random(400) > 398.5-(fm/20)) {
      roots = (root[]) append(roots, new root(int(X), int(Y), tm, rot + random(-0.2, 0.2), V));
    }
  } 
    
  
  boolean done() {   //stops drawing more line, but it doesnt stop running
    if(tm < 1.01) {
      return true;
    }
    else{
      return false;
    }
 }

  }