/*
  Module 2 - Pointilism Canvas
  Karin Novelia - kn2596
  */

import processing.serial.*;

Serial myPort;
String input;

int analogMax = 4095;

int circleColor;
int circleSize;

PShape drawn; 

color red = #E03E1B;
color green = #47BD43;
color blue = #0355AE;
color yellow = #FFFC34;
color cyan = #79FFF7;
color purple = #8347ff;
color white = #FFFFFF;
color black = #000000;

void setup() 
{
  /* Window width and height */
  size(2000, 1000);
  
  /* Set up Serial ports */
  /* Uncomment line below to see your port settings */
  // printArray(Serial.list());
  
  /* Replace with board-connected port */
  String port7 = Serial.list()[2];
  
  /* Note: arg3 number must equal baud rate set in Arduino IDE */
  myPort = new Serial (this, port7, 115200);
  
  /* Initializing blank canvas */
  drawn = createShape(GROUP);
  PShape background = createShape(RECT, 0, 0, 2000, 1000);
  drawn.addChild(background);
}

void draw() 
{
  /* Read input from port */
  if ( myPort.available() > 0) {  
    input = myPort.readStringUntil('\n');         
  }
  
  /* Remove any whitespaces  */
  input = trim(input);
  
  /* Process input string */
  if( input != null ) {
    shape(drawn, 0, 0);
    println(input); 
    int[] splitin = int(split(input, ','));
    
    if(splitin.length == 7) {
      int r = splitin[0];
      int g = splitin[1];
      int b = splitin[2];
      
      int x = splitin[3];
      int y = splitin[4];
      int z = splitin[5];
      int d = splitin[6];
    
      /* Dial input -> circle size */
      circleSize = d;
   
       
      /* Button input -> RGB LED */
      if(r == 1 && g == 0 && b == 0){
        circleColor = red;
      } else if (r == 0 && g == 1 && b == 0){
        circleColor = green;
      } else if (r == 0 && g == 0 && b == 1) {
        circleColor = blue;
      } else if (r == 1 && g == 1 && b == 0) {
        circleColor = yellow;
      } else if (r == 1 && g == 0 && b == 1) {
        circleColor = purple;
      } else if (r == 0 && g == 1 && b == 1) {
        circleColor = cyan;
      } else if (r == 1 && g == 1 && b == 1) {
        circleColor = white;
      } else {
        circleColor = black;
      } 
    
      /* Joystick input -> circle cursor position */
      float circleX = map(x, 0, analogMax, 0, 2000);
      float circleY = map(y, 0, analogMax, 0, 1000);
      
      noStroke();
      fill(circleColor);
      circle(circleX, circleY, circleSize);
    
      /* Joystick press -> draw circle to canvas */
      if(z == 0){
        noStroke();
        fill(circleColor);
        PShape dot = createShape(ELLIPSE, circleX, circleY, circleSize, circleSize);
        drawn.addChild(dot);
      }
    }
  }
}   
 
