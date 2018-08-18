PImage img;
PGraphics maskImg;

void setup() {
  //Load wallpaper
  //Minimilistic shapes 
  //Randomly generated
  background(#031924);
  size(1280,720);
  img = loadImage("earth.jpg"); ///Load the earth texture
  smooth(); //for antialiasing
}

void draw() {
  background(#031924);
  rotate(radians(0));
  noStroke();
  
  
  
  //maskImg = createGraphics(50, 50);
  //maskImg.beginDraw();
  //maskImg.ellipse(width/2, height/2, 50, 50);
  //maskImg.endDraw();
  //img.mask(maskImg);
  
  //image(img, 0, 0);
  
 
  
}
