import ddf.minim.*;

Minim minim;
AudioSample white1, white2, white3, white4, white5, white6, white7, white8, white9, white10;

void setup() {
  size(600,600);
  background(0);
  minim = new Minim(this);
  
  //Initialize Sound of Pianos
  initSoundFiles();
  
  //Initialize the piano Buttons
  initDraw();  
}

void draw() {}

void mousePressed() {   
  playLeft();
  playRight();
}

void initSoundFiles(){
  white1 = minim.loadSample("1.wav", 512);  //buffer
  white2 = minim.loadSample("2.wav", 512);
  white3 = minim.loadSample("3.wav", 512);
  white4 = minim.loadSample("4.wav", 512);
  white5 = minim.loadSample("5.wav", 512);
  white6 = minim.loadSample("6.wav", 512);
  white7 = minim.loadSample("7.wav", 512);
  white8 = minim.loadSample("8.wav", 512);
  white9 = minim.loadSample("9.wav", 512);
  white10 = minim.loadSample("10.wav", 512);
}

void initDraw() {

 //left 
  rect(height*0, width*0, height/3.1, height);
  float x = height/10;
  
  line(height*0, height -9*x, height/3.1, height-9*x ); 
  line(height*0, height -8*x, height/3.1, height -8*x);
  line(height*0, height-7*x, height/3.1, height-7*x);
  line(height*0, height-6*x, height/3.1, height-6*x);
  line(height*0, height-5*x, height/3.1, height-5*x);
  line(height*0, height -4*x, height/3.1, height -4*x);
  line(height*0, height -3*x, height/3.1, height -3*x);
  line(height*0, height -2*x, height/3.1, height -2*x);
  line(height*0, height - x, height/3.1, height - x);
  line(height*0, height, height/3.1, height);
  
  //For blacky
  fill(0);
  
  rectMode(CORNERS);
  rect(0, height -9*x - height/25, (height/3.1)/2, height -9*x + height/25); //1
  rect(0, height -8*x - height/25, (height/3.1)/2, height -8*x + height/25); 
  //rect(0, height -7*x - height/25, (height/3.1)/2, height -7*x + height/25); 
  rect(0, height -6*x - height/25, (height/3.1)/2, height -6*x + height/25); 
  rect(0, height -5*x - height/25, (height/3.1)/2, height -5*x + height/25); 
  rect(0, height -4*x - height/25, (height/3.1)/2, height -4*x + height/25); 
  //rect(0, height -3*x - height/25, (height/3.1)/2, height -3*x + height/25); 
  rect(0, height -2*x - height/25, (height/3.1)/2, height -2*x + height/25); 
  rect(0, height -x - height/25, (height/3.1)/2, height -x + height/25); 
  fill(255);

  //right
  rectMode(CORNER);
  //rect(350, 0, 150, 500);
  rect(width/1.4, 0, height/3.1, height);
  
  line(width/1.4, height -9*x, width, height-9*x ); 
  line(width/1.4, height -8*x, width, height -8*x);
  line(width/1.4, height-7*x, width, height-7*x);
  line(width/1.4, height-6*x, width, height-6*x);
  line(width/1.4, height-5*x, width, height-5*x);
  line(width/1.4, height -4*x, width, height -4*x);
  line(width/1.4, height -3*x, width, height -3*x);
  line(width/1.4, height -2*x, width, height -2*x);
  line(width/1.4, height - x, width, height - x);
  line(width/1.4, height, width, height);
  
  //For blacky
  fill(0);
  
  rectMode(CORNERS);
  rect(width -(height/3.1)/2 , height - 9*x - height/25, width, height -9*x + height/25);
  rect(width -(height/3.1)/2 , height - 8*x - height/25, width, height -8*x + height/25);
  rect(width -(height/3.1)/2 , height - 6*x - height/25, width, height -6*x + height/25);
  rect(width -(height/3.1)/2 , height - 5*x - height/25, width, height -5*x + height/25);
  rect(width -(height/3.1)/2 , height - 4*x - height/25, width, height -4*x + height/25);
  rect(width -(height/3.1)/2 , height - 2*x - height/25, width, height -2*x + height/25);
  rect(width -(height/3.1)/2 , height - x - height/25, width, height - x + height/25);
  fill(255);
}

void playLeft(){
  float x = height/10;
  
  if(mouseX<height/3.1 && mouseY<height-9*x) {
    white1.trigger();
  }
  
  if(mouseX<height/3.1 && mouseY<height-8*x){
    white2.trigger();
  }
  if(mouseX<height/3.1 && mouseY<height-6*x){
    white3.trigger();
  }
  
  
  if(mouseX<height/3.1 && mouseY<height-7*x){
    white4.trigger();
  }
    
  if(mouseX<height/3.1 && mouseY<height-6*x){
    white5.trigger();
  }
    
  if(mouseX<height/3.1 && mouseY<height-5*x){
    white6.trigger();
  }

  if(mouseX<height/3.1 && mouseY<height-4*x){
    white7.trigger();
  }
    
  if(mouseX<height/3.1 && mouseY<height-3*x){
    white8.trigger();
  }
    
  if(mouseX<height/3.1 && mouseY<height-2*x){
    white9.trigger();
  }
    
  if(mouseX<height/3.1 && mouseY<height-x){
    white10.trigger();
  }
  if(mouseX<height/3.1 && mouseY>height-x){
    white10.trigger();
  }
}

void playRight(){
  float x = height/10;
  
  if(mouseX>width-(width/3.1)  && mouseY<height-9*x) {
    white10.trigger();
  }
  
  if(mouseX>width-(width/3.1) && mouseY<height-8*x){
    white2.trigger();
  }
  if(mouseX>width-(width/3.1) && mouseY<height-6*x){
    white3.trigger();
  }

  if(mouseX>width-(width/3.1) && mouseY<height-7*x){
    white4.trigger();
  }
    
  if(mouseX>width-(width/3.1) && mouseY<height-6*x){
    white5.trigger();
  }
    
  if(mouseX>width-(width/3.1) && mouseY<height-5*x){
    white6.trigger();
  }
    
  if(mouseX>width-(width/3.1) && mouseY<height-4*x){
    white7.trigger();
  }
    
  if(mouseX>width-(width/3.1) && mouseY<height-3*x){
    white8.trigger();
  }
    
  if(mouseX>width-(width/3.1) && mouseY<height-2*x){
    white9.trigger();
  }
    
  if(mouseX>width-(width/3.1) && mouseY<height-x){
    white10.trigger();
  }
  if(mouseX>width-(width/3.1) && mouseY>height-x){
    white10.trigger();
  }
  
}
