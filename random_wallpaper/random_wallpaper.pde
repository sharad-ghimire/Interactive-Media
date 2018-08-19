float r;

String mode = "earthMode";


void setup() {
  background(#031924);
  size(1280, 720);
  smooth();  

  //Random Stars
  for (int x = 0; x < 70; x++) {
    float randomX = random(width) ;
    float randomY = random(height);
    fill(255);
    ellipse(randomX, randomY, 2, 2);
  }
  frameRate(120);
  textAlign(RIGHT);
  text("Made by Sharad Ghimire", 220, 220);
}

void draw() {

  if (mode.equals("captainAmerica")) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(r));

    //Middle One is Star
    fill(#F6F8F5);
    star(0, 0, 20, 70, 5);
    //Second One is ellipse
    fill(#CC2726);
    ellipse(140, 0, 20, 20);
    pushMatrix();
    //Last One is ellipse
    translate(140, 0);
    rotate(radians(-r*3));
    fill(#1E468B);
    ellipse(25, 0, 5, 5);
    popMatrix();
    popMatrix(); 
    r += 1;
  } else if (mode.equals("ellipseMode")) {

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(r));

    //Middle One is Star
    fill(#BDB76B);
    ellipse(0, 0, 100, 100);
    //Second One is ellipse
    fill(#7CFC00);
    ellipse(140, 0, 20, 20);
    pushMatrix();
    //Last One is ellipse
    translate(140, 0);
    rotate(radians(-r*3));
    fill(255);
    ellipse(25, 0, 5, 5);
    popMatrix();
    popMatrix(); 
    r += 1;
    
  } else if (mode.equals("earthMode")) {
    background(#031924);
    textAlign(RIGHT);
  text("Made by Sharad Ghimire", 220, 220);
    
    for (int x = 0; x < 10; x++) {
    float randomX = random(width) ;
    float randomY = random(height);
    fill(255);
    ellipse(randomX, randomY, 2, 2);
  }

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(r));

    //Middle One is Sun
    fill(#FDFFD6);
    ellipse(0, 20, 100, 100);
    //Second One is ellipse
    fill(#7CFC00);
    ellipse(140, 0, 20, 20);
    pushMatrix();
    //Last One is ellipse
    translate(140, 0);
    rotate(radians(-r*3));
    fill(255);
    ellipse(25, 0, 5, 5);
    popMatrix();
    popMatrix(); 
    r += 1;
  } else {
    //RandomMode
    color firstColor1 = color(#A7C6DA);
    color secondColor1 = color(#EEFCCE);
    
   color firstColor2 = color(#9EB25D);
    color secondColor2 = color(#F1DB4B);
    
    color firstColor3 = color(#EDFF71);
    color secondColor3 = color(#DCABDF);
    color InterpColor1 = lerpColor(firstColor1, secondColor1, random(50));
    color InterpColor2 = lerpColor(firstColor2, secondColor2, random(20));
    color InterpColor3 = lerpColor(firstColor3, secondColor3, random(10));

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(r));

    //Middle One is Star
    fill(InterpColor1);
    //ellipse(0, 0, 100, 100);
    Cat cat - new Cat();
    cat.draw()
    //Second One is ellipse
    fill(InterpColor2);
    ellipse(140, 0, 20, 20);
    pushMatrix();
    //Last One is ellipse
    translate(140, 0);
    rotate(radians(-r*3));
    fill(InterpColor3);
    ellipse(25, 0, 5, 5);
    popMatrix();
    popMatrix(); 
    r += 1;
  }
}


void star(float xPosition, float yPosition, float radiusOne, float radiusSecond, int numberOfPoints) { 
  beginShape();
  for (float i = 0; i < TWO_PI; i += (TWO_PI / numberOfPoints)) {
    float firstPoint = xPosition + cos(i) * radiusSecond;
    float secondPoint = yPosition + sin(i) * radiusSecond;
    vertex(firstPoint, secondPoint);
    firstPoint = xPosition + cos(i+((TWO_PI / numberOfPoints)/2.0)) * radiusOne;
    secondPoint = yPosition + sin(i+((TWO_PI / numberOfPoints)/2.0)) * radiusOne;
    vertex(firstPoint, secondPoint);
  }
  endShape(CLOSE);
}
