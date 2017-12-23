/*
screen class that holds all the screen aspects of the game
 */
class Screen extends General {

  //General Constants
  final int LEFT_X = 150, TOP_LEFT_Y= 150, RIGHT_X = 500, TOP_RIGHT_Y = 150, BOTTOM_Y = 400, MIDDLE_X = 330, MIDDLE_Y = 260, DELAY = 500 ; 

  //Button Constants
  final int BUTTON_TEXT_SIZE = 35, START_X = 350, START_Y = 550, PLAY_GAME_X = 600, PLAY_GAME_Y = 600, BACK_X = 600, HOME_Y = 600;
  //300, 565

  String currentScreen = "";

  //Buttons that start the game
  Button start = new Button (START_X, START_Y);
  Button playGame = new Button (PLAY_GAME_X, PLAY_GAME_Y);

  //main menu buttons
  Button study = new Button (LEFT_X, TOP_LEFT_Y);
  Button sleep = new Button (RIGHT_X, TOP_RIGHT_Y);
  Button fun = new Button (LEFT_X, BOTTOM_Y);
  Button work = new Button (RIGHT_X, BOTTOM_Y);

  //hours invested buttons
  Button oneHr = new Button (MIDDLE_X, TOP_LEFT_Y - 75);
  Button twoHr = new Button (MIDDLE_X, TOP_LEFT_Y + 100);
  Button threeHr = new Button (MIDDLE_X, BOTTOM_Y + 25);
  Button fourHr = new Button (MIDDLE_X, BOTTOM_Y + 195);
  Button back = new Button (BACK_X, MIDDLE_Y);

  //show hours invested buttons
  Button home = new Button (BACK_X, HOME_Y);


  /*
     drawHoursInvested(): will draw the hours invested screen and assign the hours invested to each activity
   in V1 you will simply draw it
   input: none
   output: none
   
   */

  void drawHoursInvested () {
    //moves the main menu buttons
    study.moveButton();
    sleep.moveButton();
    fun.moveButton();
    work.moveButton();

    //restores the hours buttons
    oneHr.restoreButton();
    twoHr.restoreButton();
    threeHr.restoreButton();
    fourHr.restoreButton();
    back.restoreButton();


    //this is where the screen begins to be drawn
    background(0);

    int deltaX = -60;
    int deltaY = 15;
    int backButtonSize = 35;
    setupText(BUTTON_TEXT_SIZE - 10, "How many hours\ndo you want \nto invest?", 20, 100);
    oneHr.drawButton("1 hr(s)", BUTTON_TEXT_SIZE, MIDDLE_X, TOP_LEFT_Y - 75, deltaX, deltaY);
    twoHr.drawButton("2 hr(s)", BUTTON_TEXT_SIZE, MIDDLE_X, TOP_RIGHT_Y + 100, deltaX, deltaY);
    threeHr.drawButton("3 hr(s)", BUTTON_TEXT_SIZE, MIDDLE_X, BOTTOM_Y + 25, deltaX, deltaY);
    fourHr.drawButton("4 hr(s)", BUTTON_TEXT_SIZE, MIDDLE_X, BOTTOM_Y + 195, deltaX, deltaY);
    back.size = 150;
    back.drawButton ("Back", BUTTON_TEXT_SIZE, 600, MIDDLE_Y, deltaX + 15, deltaY);
  }//end of drawHoursInvested

  /*
  drawHoursOutput(activity): will tell the player how many hours they invested in an activity
   */
  void drawHoursOutput(String activity) {
    println ("drawHoursOutput");
  }//end of drawHoursOutput

  /*
  drawStart(): will draw the start screen, the screen is black, the text is yellow
   input: x: the x coordinate, y: the y coordinate
   output: the start screen
   */
  void drawStart() {

    //sets the background to black
    background(0);

    //sets the color to white
    fill (225);

    //text output to the screen
    setupText (75, "College \nLife\nSimulator", 200, 200, RED, GREEN, BLUE);

    start.drawButton ("Start", BUTTON_TEXT_SIZE, 300, 565, 10, 0);
  }//end of drawStart




  /*
  drawWelcomeScreen(): will draw the welcome screen, which gives an introductuion to the player
   input: none
   output: none  
   */
  void drawWelcomeScreen() {
    //if the mouse is touching the start button then the next screen is drawn
    if ( isTouching(start.x, start.y, start.size)   && mousePressed) {
      start.moveButton();
      background(0);
      playGame.restoreButton();
      setupText (35, "Welcome to College Life Simulator, the \nobjective of this game is to balance \nsleep, grades and a social life. Are you \nup for the challenge?", 10, 60, RED, GREEN, BLUE);
      int deltaX = -50;
      int deltaY = -20;
      playGame.drawButton("Play\nGame", BUTTON_TEXT_SIZE, PLAY_GAME_X, PLAY_GAME_Y, deltaX, deltaY);
    }//end of if statement
  }//end of drawWelcomeScreen

  /*
   drawMainMenu(): will draw the main menu that shows the four options you can do in the game and shit
   input: none
   output: none
   */
  void drawMainMenu() {
    if ((isTouching (playGame.x, playGame.y, playGame.size) || isTouching (back.x, back.y, back.size) || isTouching (home.x, home.y, home.size)) && mousePressed) {
      playGame.moveButton();
      study.restoreButton();
      sleep.restoreButton(); 
      fun.restoreButton(); 
      work.restoreButton(); 
      background(0);
      int deltaX = -55;
      int deltaY = 15;
      study.drawButton("Study", BUTTON_TEXT_SIZE, LEFT_X, TOP_LEFT_Y, deltaX, deltaY);
      sleep.drawButton("Sleep", BUTTON_TEXT_SIZE, RIGHT_X, TOP_RIGHT_Y, deltaX, deltaY);
      fun.drawButton("Fun", BUTTON_TEXT_SIZE, LEFT_X, BOTTOM_Y, deltaX + 10, deltaY);
      work.drawButton("Work", BUTTON_TEXT_SIZE, RIGHT_X, BOTTOM_Y, deltaX, deltaY);
    }//end of if statement
  }//end of drawMainMenu


  /*
  HAVE SEPERATE HOURS INVESTED IN WHICH YOU CALL THE GENERAL DRAW 
   HOURS INVESTED AND THEN YOU ADJUST THE INFO ACCODINGLY IN V2
   */

  /*
  drawStudyHours(): will draw the hours invested screen and manipulate the specific values
   V1: will simply call the drawHoursInvested and not change values
   input: none
   output: none
   */

  void drawStudyHours() {
    if (isTouching(study.x, study.y, study.size) && mousePressed) {
      currentScreen = "study";
      drawHoursInvested ();
    }//end of if statement
  }//end of drawStudyHours

  /*
  drawStudyHours(): will draw the hours invested screen and manipulate the specific values
   V1: will simply output the hours invested screen
   input: none
   output: none
   */

  void drawSleepHours() {
    if (isTouching(sleep.x, sleep.y, sleep.size) && mousePressed) {
      currentScreen = "sleep";
      drawHoursInvested ();
    }//end of if statement
  }//end of drawStudyHours


  /*
  drawFunHours(): will the hours invested screen and maninpulate specific values
   V1: will simply output the hours invested screen
   input: none
   output: none
   */

  void drawFunHours() {
    if (isTouching(fun.x, fun.y, fun.size) && mousePressed) {
      currentScreen = "fun";
      drawHoursInvested();
    }//end of if statement
  }//end of drawFunHours


  /*
  drawWorkHours(): will the hours invested screen
   V1: will simply output the hours invested screen
   input: none
   output: none
   */

  void drawWorkHours() {
    if (isTouching(work.x, work.y, work.size) && mousePressed) {
      currentScreen = "work";
      drawHoursInvested();
    }//end of if statement
  }//end of drawFunHours


  //create work sleep fun study hours output output with the help of the screen instance variable
  //the screen will be set when you get to the specific hours fn and this fn will be used to 
  //create different output
  /*
  showHoursInvested(): general method for showing the hours invested in the game
   input: activity: a string with the activity that you want to do
   output: none
   */
  void showHoursInvested (String activity, int screenX, int screenY) {

    int deltaX = -55;
    int deltaY = 15;

    if (isTouching(oneHr.x, oneHr.y, oneHr.size) && mousePressed) {
      oneHr.moveButton();
      twoHr.moveButton();
      threeHr.moveButton();
      fourHr.moveButton();
      back.moveButton();
      background(0);
      setupText (35, "You Spent 1 Hour "+ activity, screenX, screenY, RED, GREEN, BLUE);
      home.drawButton("Home", BUTTON_TEXT_SIZE, BACK_X, HOME_Y, deltaX, deltaY);
    }//end of if statement

    if ( isTouching(twoHr.x, twoHr.y, oneHr.size)   && mousePressed) {
      oneHr.moveButton();
      twoHr.moveButton();
      threeHr.moveButton();
      fourHr.moveButton();
      back.moveButton();
      background(0);
      setupText(35, "You Spent 2 hours "+ activity, screenX, screenY, RED, GREEN, BLUE);
      home.drawButton("Home", BUTTON_TEXT_SIZE, BACK_X, HOME_Y, deltaX, deltaY);
    }//end of if statement

    if ( isTouching(twoHr.x, threeHr.y, oneHr.size)   && mousePressed) {
      oneHr.moveButton();
      twoHr.moveButton();
      threeHr.moveButton();
      fourHr.moveButton();
      back.moveButton();
      background(0);
      setupText(35, "You Spent 3 hours "+ activity, screenX, screenY, RED, GREEN, BLUE);
      home.drawButton("Home", BUTTON_TEXT_SIZE, BACK_X, HOME_Y, deltaX, deltaY);
    }//end of if statement

    if ( isTouching(twoHr.x, fourHr.y, oneHr.size)   && mousePressed) {
      oneHr.moveButton();
      twoHr.moveButton();
      threeHr.moveButton();
      fourHr.moveButton();
      back.moveButton();
      background(0);
      setupText(35, "You Spent 4 hours "+activity, screenX, screenY, RED, GREEN, BLUE);
      home.drawButton("Home", BUTTON_TEXT_SIZE, BACK_X, HOME_Y, deltaX, deltaY);
    }//end of if statement
  }//end of showHoursInvested

  /*
  showStudyHoursInvested(): will show the hours invested in studying and change values
   input: none
   output: nonw
   */

  void showStudyHoursInvested() {
    int screenX = 120;
    int screenY = 200; 
    if (currentScreen == "study" && mousePressed) {
      showHoursInvested ("Studying", screenX, screenY);
    }//end of if statement
  }//end of showHoursInvested
}//end of screen