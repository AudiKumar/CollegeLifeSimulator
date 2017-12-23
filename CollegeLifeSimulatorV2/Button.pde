
//button class holds all of the code to be associated with buttons
class Button extends General {

  //instance vars for the class
  int x, y, oldX, oldY, size = 150; 

  final int MIDDLE_X;
  final int MIDDLE_Y;


  /*
  Button(): constructs the button object 
   input:  xCor: the x coordinate
   yCor: the y coordinate
   output: none 
   */
  Button (int xCor, int yCor) {
    x = xCor; 
    y = yCor;

    oldX = x; 
    oldY = y; 

    MIDDLE_X = x - 50;
    MIDDLE_Y = y + 15;
  }//end of Button constructor


  /*
  drawButton(): will draw the button with the use of the elipse method
   input: none
   output: none
   */
  void drawButton(String text, int textSize, int xCor, int yCor, int deltaX, int deltaY) {
    fill (RED, GREEN, BLUE);
    ellipse(x, y, size, size);
    setupText(textSize, text, xCor + deltaX, yCor + deltaY) ;
  }//end of drawButton

  /*
  moveButton(): will move the button out of the screen so there are not any other issues
   input: none
   output: none
   */

  void moveButton() {
    x = -1000;
    y = -1000;
  }
  /*
  restoreButton(): will restore the x and y coordinates 
   input: none
   output: none
   */
  void restoreButton() {
    x = oldX;
    y = oldY;
  }
   
}//end of button