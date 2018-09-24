import ddf.minim.*;

Minim minim;

void setup() {
  size(500, 500);
  minim = new Minim(this);
  
  //Drawing
  background(0);
//left 
  rect(0, 0, 150, 500);
 
  line(0, 50, 150, 50);
  line(0, 100, 150, 100);
  line(0, 150, 150, 150);
  line(0, 200, 150, 200);
  line(0, 250, 150, 250);
  line(0, 300, 150, 300);
  line(0, 350, 150, 350);
  line(0, 400, 150, 400);
  line(0, 450, 150, 450);
  line(0, 500, 150, 500);
  
  //For blacky
  fill(0);
  rect(0, 35, 100, 30); //first blacky
  rect(0, 85, 100, 30); //2nd
  
  rect(0, 185, 100, 30); //3rd
  rect(0, 235, 100, 30); //4th
  rect(0, 285, 100, 30); //5th
  
  rect(0, 385, 100, 30); //6th
  rect(0, 435, 100, 30); //7th
  

  fill(255);

//right
  rect(350, 0, 150, 500);
  line(350, 50, 500, 50);
  line(350, 100, 500, 100);
  line(350, 150, 500, 150);
  line(350, 200, 500, 200);
  line(350, 250, 500, 250);
  line(350, 300, 500, 300);
  line(350, 350, 500, 350);
  line(350, 400, 500, 400);
  line(350, 450, 500, 450);
  line(350, 500, 500, 500);
  
  //Blacky
  fill(0);
  rect(400, 35, 100, 30); //first blacky
  rect(400, 85, 100, 30); //2nd
  
  rect(400, 185, 100, 30); //3rd
  rect(400, 235, 100, 30); //4th
  rect(400, 285, 100, 30); //5th
  
  rect(400, 385, 100, 30); //6th
  rect(400, 435, 100, 30); //7th
  
  
  
  
  
  
  
  
  
}

void draw() {
  
  
}

void mousePressed() {
  
}
