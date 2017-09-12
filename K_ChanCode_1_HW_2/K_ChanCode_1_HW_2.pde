size(500,500);
background(10,160,230);



//backing
int centerofsun = 250;
noStroke();
fill(230,210,60);
ellipse(centerofsun,centerofsun, 350,350);

//body
fill(230,140,20);
ellipse(centerofsun,centerofsun,200,200);

//eyes
int centerofeye = 230;
fill(0);
ellipse(220,centerofeye,20,20);
ellipse(280,centerofeye,20,20);
fill(255);
ellipse(220,235,10,10);
ellipse(280,235,10,10);

//mouth
fill(200,35,80);
ellipse(250,300,40,25);
fill(127,20,0);
ellipse(250,305,30,15);

//hair
stroke(1);
noFill();
arc(230, 150, 50, 50, 0, PI+QUARTER_PI);

//freckles
strokeWeight(4);
point(230,250);
point(212,250);
point(220,265);
point(280,250);
point(292,250);
point(285,265);

//blockout
noStroke();
fill(10,160,230);
ellipse(100,100,150,150);
ellipse(400,100,150,150);
ellipse(100,400,150,150);
ellipse(400,400,150,150);
ellipse(250,50,150,150);
ellipse(250,450,150,150);
ellipse(50,250,150,150);
ellipse(450,250,150,150);

//arms
noFill();
stroke(5);
arc(380, 230, 120, 90, 0, HALF_PI);
arc(120, 230, 120, 90, HALF_PI, PI);