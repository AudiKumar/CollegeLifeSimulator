/*

 File: CollegeLifeSimulator.pde
 Author: Aditya Krishna Yerraguntla Kumar
 Date: 10/30/17
 Description: This is a recreation of my COMP 101 project, in which you play as a 
 new college student, and you have to balance life, school and a social 
 life as well. The game itself takes a minimalistic aproach, based off 
 the Survive Wilderness Survival andriod game in terms of aesthetic 
 
 V1: GENERAL GAME GRAPHICS IMPLEMENTED
 */

Screen s;
boolean mouseReleased = false;
/*
setup(): This method will hold the start screen, calls the screen class
 input: none
 output: none
 */
void setup() {
  //sets size of the screen 
  size (700, 700);

  //creates the screen obj
  s = new Screen ();

  //draws the start
  s.drawStart();
}//end of setup

/*
draw(): this will hold all of the other method calls in the game,
 and the majority of the game itself
 */
void draw() {
  //println ("Mouse Released?: "+ mouseReleased );
  mouseReleased = false;
  s.drawWelcomeScreen();
  s.drawMainMenu();
  s.drawStudyHours();
  s.drawSleepHours();
  s.drawFunHours();
  s.drawWorkHours();
  s.showStudyHoursInvested();
  //s.showStudyHoursInvested();
}//end of draw