/*
The purpose of this class is to house methods that I think that would be constantly used in the game
 
 */

class General {

  PFont font = createFont("DejaVuSans-Bold-100.vlw", 100);


  int RED = 255;
  int GREEN = 223;
  int BLUE = 0;
  /*
  setupText(): will do all of the stuff you need to do to setup the text
   input: textSize: size of teh text
   text: the text you want to be in the string
   x: the x coordinate
   y: the y coordinate
   r: red int
   g: green int
   b: blue int
   
   output: none  
   */
  void setupText(int textSize, String text, int x, int y, int r, int g, int b) {

    //sets the text size
    textSize(textSize);

    //makes the text white  
    fill (r, g, b);

    //puts the text in
    text(text, x, y);
  }//end of setupText


  /*
  setupText(): will do all of the stuff you need to do to setup the text
   input: textSize: size of the text is defaulted to white
   text: the text you want to be in the string
   x: the x coordinate
   y: the y coordinate
   
   output: none  
   */
  void setupText(int textSize, String text, int x, int y) {
    //textAlign(CENTER);
    //sets the text size
    textSize(textSize);

    //makes the text white  
    fill (255);

    //puts the text in
    text(text, x, y);
  }//end of setupText

  
  /*
  isTouching(int xCor, int yCor, int size): check to see if your mouse is in an ellipse shape, this is main
                                            used for the button, but it is going to be called in string so 
  input:                                           
  */
  boolean isTouching (int xCor, int yCor, int size) {
    float dist= sqrt((xCor-mouseX)*(xCor-mouseX)+(yCor-mouseY)*(yCor-mouseY));
    if (dist<=size/2) {
      return true;
    }//end of if statemnt 
    else {
      return false;
    }//end of else
    
    
  }//end of isTouching
  
  
  
  
}//end of General classe text in