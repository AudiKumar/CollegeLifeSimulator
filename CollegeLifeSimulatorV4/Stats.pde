class Stats extends General{

  //constants
  final float MINIMUM_WAGE = 9.25; // as of december 2017
  
    
  //General Stats
  float happinessPercentage, fatigue, gradeAvg;
  int money;  

  //default constructor: what your stats will start out as
  //start out with a 50 % happiness and a gradeAvg of 70
  Stats () {
    happinessPercentage = .5;
    gradeAvg = .7;
    money = 0;
  }//end of default constructor

  void changeStats (int activityNum, int hrs){
    // 1 = study, 2 = sleep, 3 = fun, 4 = work
    if (activityNum == 1){
      println("User studied for "+ hrs);
      goStudy(hrs);
    }//end of if statment
    
    if (activityNum == 2){
      println("User slept for "+ hrs);
      goSleep(hrs);
    }//end of if statment
    
    if (activityNum == 3){
      println("User had fun for "+ hrs);
      goFun(hrs);
    }//end of if statment
    
    if (activityNum == 4){
      println("User worked for "+ hrs);
      goWork(hrs);
    }//end of if statment
  }//end of changeStats


  void goStudy(int hrs) {
    gradeAvg += (.01 * hrs);
    happinessPercentage -= .01;
  }//end of goStudy


  void goSleep (int hrs) {
    gradeAvg -= (.005 * (hrs));
    happinessPercentage += .01;
  }//end of goSleep

  void goFun(int hrs) {
    gradeAvg -= (.008 * (hrs));
    happinessPercentage += .10;
    int moneyDelta = int(random (1,5));
    int moneyMultiplier = int (random (1,3));
    money -= (moneyDelta * moneyMultiplier);
  }//end of goFun

  void goWork(int hrs) {
    gradeAvg -= (.005 * (hrs));
    happinessPercentage -= .08;
    money += (MINIMUM_WAGE * hrs);
  }//end of goWorks
}//end of class 