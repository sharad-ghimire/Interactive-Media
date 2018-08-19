PImage img;
PGraphics maskImg;
float r;

void setup() {
  //Load wallpaper
  //Minimilistic shapes 
  //Randomly generated
  background(#031924);
  size(1280,720);
  img = loadImage("earth.jpg"); ///Load the earth texture
  smooth(); //for antialiasing
  
  for(int x = 0; x < 5; x++) {
  float randomX = random(width) ;
  float randomY = random(height);
  fill(255);
  ellipse(randomX, randomY, 2, 2);
  
 }

  
}

void draw() {
  //background(#031924);
  //rotate(radians(0));
  //noStroke();
  
  pushMatrix();
    translate(width/2, height/2);
    rotate(radians(r));
    
    //Sun
    fill(255, 255, 0);
    ellipse(0, 0 , 100, 100);
       
    //Earth
    fill(0, 255, 100);
    ellipse(140, 0, 20, 20);
    pushMatrix();
      //Moon
      translate(140, 0);
      rotate(radians(-r*3));
      fill(255);
      ellipse(25, 0, 5, 5);
   popMatrix();
 popMatrix(); 
 r += 1;

 
}
    
    
    
  
  
  
  
  //maskImg = createGraphics(50, 50);
  //maskImg.beginDraw();
  //maskImg.ellipse(width/2, height/2, 50, 50);
  //maskImg.endDraw();
  //img.mask(maskImg);
  
  //image(img, 0, 0);
  
 
