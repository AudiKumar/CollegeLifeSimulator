/*

 File: CollegeLifeSimulator.pde
 Author: Aditya Krishna Yerraguntla Kumar
 Date: 10/30/17
 Description: This is a recreation of my COMP 101 project, in which you play as a 
 new college student, and you have to balance life, school and a social 
 life as well. The game itself takes a minimalistic aproach, based off 
 the Survive Wilderness Survival andriod game in terms of aesthetic 
 
 V1: GENERAL GAME GRAPHICS IMPLEMENTED
 V2: the study hours screen added
 V3: study hours invested screens finished and general graphical adjustments, got rid of unnessacary commments
 */

Screen s;
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
  s.drawWelcomeScreen();
  s.drawMainMenu();
  s.drawStudyHours();
  s.drawSleepHours();
  s.drawFunHours();
  s.drawWorkHours();
  s.showStudyHoursInvested();
  s.showSleepHoursInvested();
  s.showFunHoursInvested();
  s.showWorkHoursInvested() ;
}//end of draw