//Library: use sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
float appWidth, appHeight;
float textX, textY;
float forwardX, forwardY, forwardWidth, forwardHeight;
PImage fastForward;
color orange = #FF5F1F;
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "play list" variable holding extenstions WAV, AIFF, AU, SND, and MP3
//
void setup() {
  size(1200, 900);
  appWidth = width;
  appHeight = height;
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../FreeWare Music/MusicDownload/Little Samba - Quincas Moreira.mp3"); //able to pass absolute path, file name & extension, and URL
  //population
  textX = appWidth * 7/20;
  textY = appHeight * 2/20;
  forwardX = appWidth * 8.5/20;
  forwardY = appHeight * 4/20;
  forwardWidth = appWidth * 3/20;
  forwardHeight = appHeight * 2/20;
  fastForward = loadImage ("../images/fast forward.jpg");
}//End setup
//
void draw() {
  background(orange);
  fill(0);
  textSize(60);
  text("Music Player", textX, textY);
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  image(fastForward, forwardX, forwardY, forwardWidth, forwardHeight);
}//End draw
//
void keyPressed() {
  //if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  if ( key=='P' || key=='p' ) { //Play Pause stop Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }//End play pause stop button
  int loopNum = 2; //local variable plays once loops twice
  if ( key=='L' || key=='l' ) song1.loop(loopNum);
  if ( key=='I' || key=='i' ) song1.loop(-1); // parameter is for infinite loops
  if ( key=='F' || key=='f' ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( key=='R' || key=='r' ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  if ( key=='M' || key=='m' ) {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button
  if ( key=='S' || key=='s' ) {//STOP Button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); // Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song posistion is at the end
    }
  }//End STOP Button
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End main program
