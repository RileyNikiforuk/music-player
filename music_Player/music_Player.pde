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
float backwardsX, backwardsY, backwardsWidth, backwardsHeight;
float loopX, loopY, loopWidth, loopHeight;
float infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight;
float muteX, muteY, muteWidth, muteHeight;
float playX, playY, playWidth, playHeight;
float stopX, stopY, stopWidth, stopHeight;
float playFireX, playFireY, playFireWidth, playFireHeight;
float stopFireX, stopFireY, stopFireWidth, stopFireHeight;
PImage fastForward, backwards, loop, infiniteLoop, mute, play, stop;
color orange = #FF5F1F;
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "play list" variable holding extenstions WAV, AIFF, AU, SND, and MP3
AudioPlayer song2;
//
void setup() {
  size(1200, 900);
  appWidth = width;
  appHeight = height;
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../FreeWare Music/MusicDownload/Little Samba - Quincas Moreira.mp3"); //able to pass absolute path, file name & extension, and URL
  song2 = minim.loadFile("../FreeWare Music/MusicDownload/Daytime Forest Bonfire.mp3");
  //population
  textX = appWidth * 7/20;
  textY = appHeight * 2/20;
  forwardX = appWidth * 8.5/20;
  forwardY = appHeight * 4/20;
  forwardWidth = appWidth * 3/20;
  forwardHeight = appHeight * 2/20;
  fastForward = loadImage ("../images/fastforward.png");
  backwardsX = appWidth * 8.5/20;
  backwardsY = appHeight * 7/20;
  backwardsWidth = appWidth * 3/20;
  backwardsHeight = appHeight * 2/20;
  backwards = loadImage ("../images/rewind.png");
  loopX = appWidth * 8.5/20;
  loopY = appHeight * 10/20;
  loopWidth = appWidth * 3/20;
  loopHeight = appHeight * 2/20;
  loop = loadImage ("../images/loop.jpg");
  infiniteLoopX = appWidth * 8.5/20;
  infiniteLoopY = appHeight * 13/20;
  infiniteLoopWidth = appWidth * 3/20;
  infiniteLoopHeight = appHeight * 2/20;
  infiniteLoop = loadImage ("../images/infiniteLoop.png");
  muteX = appWidth * 8.5/20;
  muteY = appHeight * 16/20;
  muteWidth = appWidth * 3/20;
  muteHeight = appHeight * 2/20;
  mute = loadImage ("../images/muteUnmute.png");
  playX = appWidth * 4.5/20;
  playY = appHeight * 4/20;
  playWidth = appWidth * 3/20;
  playHeight = appHeight * 2/20;
  play = loadImage ("../images/play.png");
  stopX = appWidth * 12.5/20;
  stopY = appHeight * 4/20;
  stopWidth = appWidth * 3/20;
  stopHeight = appHeight * 2/20;
  stop = loadImage ("../images/stop.png");
  playFireX = appWidth * 4.5/20;
  playFireY = appHeight * 7/20;
  playFireWidth = appWidth * 3/20;
  playFireHeight = appHeight * 2/20;
  stopFireX = appWidth * 4.5/20;
  stopFireY = appHeight * 10/20;
  stopFireWidth = appWidth * 3/20;
  stopFireHeight = appHeight * 2/20;
}//End setup
//
void draw() {
  background(orange);
  fill(0);
  textSize(60);
  text("Music Player", textX, textY);
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  image(fastForward, forwardX, forwardY, forwardWidth, forwardHeight);
  rect(backwardsX, backwardsY, backwardsWidth, backwardsHeight);
  image(backwards, backwardsX, backwardsY, backwardsWidth, backwardsHeight);
  rect(loopX, loopY, loopWidth, loopHeight);
  image(loop, loopX, loopY, loopWidth, loopHeight);
  rect(infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight);
  image(infiniteLoop, infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight);
  rect(muteX, muteY, muteWidth, muteHeight);
  image(mute, muteX, muteY, muteWidth, muteHeight);
  rect(playX, playY, playWidth, playHeight);
  image(play, playX, playY, playWidth, playHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  image(stop, stopX, stopY, stopWidth, stopHeight);
  fill(0, 255, 0);
  rect(playFireX, playFireY, playFireWidth, playFireHeight);
  fill(0);
  text("Play Fire", playFireX, playFireY, playFireWidth, playFireHeight);
  fill(255, 0, 0);
  rect(stopFireX, stopFireY, stopFireWidth, stopFireHeight);
  fill(0);
  text("Stop Fire", stopFireX, stopFireY, stopFireWidth, stopFireHeight);
}//End draw
//
void keyPressed() {
  //if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  //if ( key=='P' || key=='p' ) { //Play Pause stop Button
    //if ( song1.isPlaying() ) {
      //song1.pause();
    //} else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
      //song1.rewind();
      //song1.play();
    //} else {
      //song1.play();
    //}
  //}//End play pause stop button
  //int loopNum = 2; //local variable plays once loops twice
  //if ( key=='L' || key=='l' ) song1.loop(loopNum);
  //if ( key=='I' || key=='i' ) song1.loop(-1); // parameter is for infinite loops
  //if ( key=='F' || key=='f' ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  //if ( key=='R' || key=='r' ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  /*if ( key=='M' || key=='m' ) {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button*/
  //if ( key=='S' || key=='s' ) {//STOP Button
    //if ( song1.isPlaying() ) {
      //song1.pause();
      //song1.rewind(); // Cue SONG to play from beginning
    //} else {
      //song1.rewind(); //Not playing means song is paused or song posistion is at the end
    //}
  //}//End STOP Button
}//End keyPressed
//
void mousePressed() {
  int loopNum = 2; //local variable plays once loops twice
  if ( mouseX > forwardX && mouseX < forwardX+forwardWidth && mouseY > forwardY && mouseY < forwardY+forwardHeight ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( mouseX > backwardsX && mouseX < backwardsX+backwardsWidth && mouseY > backwardsY && mouseY < backwardsY+backwardsHeight ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  if ( mouseX > loopX && mouseX < loopX+loopWidth && mouseY > loopY && mouseY < loopY+loopHeight ) song1.loop(loopNum);
  if ( mouseX > infiniteLoopX && mouseX < infiniteLoopX+infiniteLoopWidth && mouseY > infiniteLoopY && mouseY < infiniteLoopY+infiniteLoopHeight ) song1.loop(-1); // parameter is for infinite loops
  if ( mouseX > muteX && mouseX < muteX+muteWidth && mouseY > muteY && mouseY < muteY+muteHeight ) {
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
  if ( mouseX > playX && mouseX < playX+playWidth && mouseY > playY && mouseY < playY+playHeight ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  if ( mouseX > stopX && mouseX < stopX+stopWidth && mouseY > stopY && mouseY < stopY+stopHeight ) {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); // Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song posistion is at the end
    }
  }
  if ( mouseX > playFireX && mouseX < playFireX+playFireWidth && mouseY > playFireY && mouseY < playFireY+playFireHeight ) {
    if ( song2.isPlaying() ) {
      song2.pause();
    } else if ( song2.position() >= song2.length()-song2.length()*1/5 ) {
      song2.rewind();
      song2.play();
    } else {
      song2.play();
    }
  }
  if ( mouseX > stopFireX && mouseX < stopFireX+stopFireWidth && mouseY > stopFireY && mouseY < stopFireY+stopFireHeight ) {
    if ( song2.isPlaying() ) {
      song2.pause();
      song2.rewind(); // Cue SONG to play from beginning
    } else {
      song2.rewind(); //Not playing means song is paused or song posistion is at the end
    }
  }
}//End mousePressed
//
//End main program
