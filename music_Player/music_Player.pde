//Library: use sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "play list" variable holding extenstions WAV, AIFF, AU, SND, and MP3
//
void setup() {
  size(1200, 900);
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../FreeWare Music/MusicDownload/Little Samba - Quincas Moreira.mp3"); //able to pass absolute path, file name & extension, and URL
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {
  if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  int loopNum = 2; //local variable plays once loops twice
  if ( key=='L' || key=='l' ) song1.loop(loopNum);
}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End main program
