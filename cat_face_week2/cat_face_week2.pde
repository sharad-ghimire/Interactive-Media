size(800, 600);
background(220);
noFill();

ellipseMode(CORNER);

//HEAD
float headW = 100;
float headH = headW*5/7;
float headX = (width - headW)/2;
float headY = (height - headH)/2;

//NOSE
float noseX1 = headX + (headW/2) ; //400
float noseY1 = headY + (headH/2); //300
float noseX2 = noseX1 - headW/30; //400-20
float noseY2 = noseY1 - headW/30; //300-20
float noseX3 = noseX1 + headW/30; //400+20
float noseY3 = noseY1 - headW/30; //300-20

//Eye1
float eyesLX = headX + (headW*0.25);
float eyesLY = headY + (headH*0.3);
//Eye2
float eyesRX = headX + (headW*0.7);
float eyesRY = headY + (headH*0.3);
float eyesWH = headW/30; //Both height and width


//Ears1
float earLX1 = headX;
float earLY1 = headY;
float earLX2 = headX + headW/12;
float earLY2 = eyesLY;
float earLX3 = headX + headW/6;
float earLY3 = headY + headW/6.667;

//Ears2
float earRX1 = headX + headW;
float earRY1 = headY;
float earRX2 = headX + headW/12 + (headW/6)*5; 
float earRY2 = eyesLY;
float earRX3 = headX + (headW/6)*5;
float earRY3 = headY + headW/6.667;



//ears
fill(157);
noStroke();
triangle(earLX1, earLY1, earLX2 ,  earLY2,earLX3 , earLY3);
triangle(earRX1, earRY1, earRX2 ,  earRY2,earRX3 , earRY3);
stroke(0);
noFill();

//head
fill(255);
ellipse(headX,headY , headW,  headH);

//nose with small mouth 
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
line(noseX1, noseY1, noseX1, noseY1 + headW/30);
noFill();
arc(noseX1 -  headW/30, noseY1 +  headW/60,  headW/30,  headW/30,0 ,PI );
arc(noseX1, noseY1 + headW/60 ,  headW/30,  headW/30, 0,PI );

//eyes
fill(0);
ellipse(eyesLX,eyesLY,eyesWH , eyesWH ); 
ellipse(eyesRX,eyesRY , eyesWH, eyesWH );


//whiskers  - - using line ( two pointss)
//left whiskers

line(headX - ((headW/30) + (headW/20)), headY + (headW/3),                  headX + (headW/6), headY + (headW/3) + headW/30);
line(headX - ((headW/30) + (headW/20)), headY + (headW/3) + (headW/10),     headX + (headW/6), headY + (headW/3) + (headW/30) + (headW/20)); //50
line(headX - ((headW/30) + (headW/20)), headY + (headW/3) + 2*(headW/10),   headX + (headW/6), headY + (headW/3) + (headW/30) + 2*(headW/20) ); //80

//right whisker
line(headX - ((headW/30) + (headW/20)) + (headW + headW*0.2), headY + (headW/3), (headX + (headW/6))  + (headW*0.7)    , headY + (headW/3) + headW/30);
line(headX - ((headW/30) + (headW/20)) + (headW + headW*0.2), headY + (headW/3) + (headW/10),(headX + (headW/6))   +  (headW*0.7), headY + (headW/3) + (headW/30) + (headW/20)); //50
line(headX - ((headW/30) + (headW/20)) + (headW + headW*0.2), headY + (headW/3) + 2*(headW/10),(headX + (headW/6))   +  (headW*0.7)   , headY + (headW/3) + (headW/30) + 2*(headW/20) ); //80

//println("When headW is changed to : " + headW, 10, 100);
textAlign(RIGHT);
text("When headW is changed to " + (int)headW, 220,20);
