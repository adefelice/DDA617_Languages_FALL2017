
boolean shot=false;
boolean alive=true;
int shotPosX=0;
int shotPosY=0;
float ball1X = random(0, width-20);
float ball1Y = -20;
float ball2X = random(0, width-20);
float ball2Y = -30;
float ball3X = random(0, width-20);
float ball3Y = -50;
float ballspd = 1;
int score = 0;
int hiscore = 0;
boolean c = true;


float s1x = 50;
float s1y = 0;
float s2x = 200;
float s2y = -10;
float s3x = 100;
float s3y = -20;
float s4x = 400;
float s4y = -5;
float s5x = 150;
float s5y = -30;


boolean hasShot=false;
float grasp=0;


void resetShootingGame() {
  
  alive = true;
  score = 0;
  shot = false;
  ball1X = random(0, width-20);
  ball1Y = -20;
  ball2X = random(0, width-20);
  ball2Y = -30;
  ball3X = random(0, width-20);
  ball3Y = -50;
  ballspd = 1;
}

void drawShootingGame() {
  
  pushStyle();
  frameRate(60);
  noStroke();
  fill(0, 24);
  rectMode(CORNER);
  rect(0, 0, width, height);


  stroke(255);
  strokeWeight(1);
  if (s1y < height) {
    point(s1x, s1y);
    s1y++;
  } else {
    s1x=random(0, width);
    s1y=0;
  }
  if (s2y < height) {
    point(s2x, s2y);
    s2y+=3;
  } else {
    s2x=random(0, width);
    s2y=0;
  }
  if (s3y < height) {
    point(s3x, s3y);
    s3y+=4;
  } else {
    s3x=random(0, width);
    s3y=0;
  }
  if (s4y < height) {
    point(s4x, s4y);
    s4y++;
  } else {
    s4x=random(0, width);
    s4y=-10;
  }
  if (s5y < height) {
    point(s5x, s5y);
    s5y+=2;
  } else {
    s5x=random(0, width);
    s5y=0;
  }






  if (alive==true) {
    fill(255, 255, 0);
    noStroke();
    rectMode(CENTER);

    rect(handX, handY, 10, 20);

    triangle(handX, handY+3, handX+10, handY+10, handX-10, handY+10);


    if (shot==true) {
      strokeWeight(1);
      stroke(0, 255, 0);
      line(shotPosX, shotPosY, shotPosX, shotPosY-10);
      shotPosY-=10;
      if (shotPosY<-5) {
        shot=false;
      }
    }


    if (handX > ball1X) {
      if (handY > ball1Y) {
        if (handX < ball1X+20) {
          if (handY < ball1Y+20) {
            alive=false;
            page=6;
            fill(255, 255, 0);
            stroke(255, 0, 0);
            strokeWeight(10);
            ellipseMode(CENTER);
            ellipse(handX, handY, 40, 40);
            ellipseMode(CORNERS);
            noStroke();
            println("You are dead!");
            println("Asteroids shot: " + score +".");
            if (score>hiscore) {
              hiscore = score;
              println("New Highscore!");
            } else {
              println("Highscore: " + hiscore);
            }
          }
        }
      }
    }
    if (handX > ball2X) {
      if (handY > ball2Y) {
        if (handX < ball2X+20) {
          if (handY < ball2Y+20) {
            alive=false;
            println("You are dead!");
            println("Asteroids shot: " + score +".");
            if (score>hiscore) {
              hiscore = score;
              println("New Highscore!");
            } else {
              println("Highscore: " + hiscore);
            }
          }
        }
      }
    }
    if (handX > ball3X) {
      if (handY > ball3Y) {
        if (handX < ball3X+20) {
          if (handY < ball3Y+20) {
            alive=false;
            page=6;
            println("You are dead!");
            println("Asteroids shot: " + score +".");
            if (score>hiscore) {
              hiscore = score;
              println("New Highscore!");
            } else {
              println("Highscore: " + hiscore);
            }
          }
        }
      }
    }
  }



  ellipseMode(CORNERS);

  
  fill(100, 0, 0);
  noStroke();
  if (ball1Y < height) {
    ellipse(ball1X, ball1Y, ball1X+20, ball1Y+20);
    ball1Y+=ballspd;
  } else {
    ball1X=random(0, width-20);
    ball1Y=-20;
  }
  if (score>10) {
    fill(150, 0, 0);
    noStroke();
    if (ball2Y < height) {
      ellipse(ball2X, ball2Y, ball2X+20, ball2Y+20);
      ball2Y+=ballspd+3;
    } else {
      ball2X=random(0, width-20);
      ball2Y=-20;
    }
  }

  if (score>20) {
    fill(150, 50, 50);
    noStroke();
    if (ball3Y < height) {
      ellipse(ball3X, ball3Y, ball3X+20, ball3Y+20);
      ball3Y+=ballspd+5;
    } else {
      ball3X=random(0, width-20);
      ball3Y=-20;
    }
  }

  if (score>30) {
    ballspd=4;
    if (score>35) {
      ballspd=5;
      if (score>40) {
        ballspd=6;
      }
    }
  }





  ellipseMode(CORNERS);
  if (shotPosX > ball1X) {
    if (shotPosY > ball1Y) {
      if (shotPosX < ball1X+20) {
        if (shotPosY < ball1Y+20) {
          fill(255, 0, 0);
          stroke(255, 255, 0);
          strokeWeight(10);
          ellipse(ball1X, ball1Y, ball1X+20, ball1Y+20);
          ball1X=random(0, width-20);
          ball1Y=-20;
          score++;
        }
      }
    }
  }
  if (shotPosX > ball2X) {
    if (shotPosY > ball2Y) {
      if (shotPosX < ball2X+20) {
        if (shotPosY < ball2Y+20) {
 
          fill(255, 0, 0);
          stroke(255, 255, 0);
          strokeWeight(10);
          ellipse(ball2X, ball2Y, ball2X+20, ball2Y+20);

          ball2X=random(0, width-20);
          ball2Y=-20;

          score++;
        }
      }
    }
    if (shotPosX > ball3X) {
      if (shotPosY > ball3Y) {
        if (shotPosX < ball3X+20) {
          if (shotPosY < ball3Y+20) {

            fill(255, 0, 0);
            stroke(255, 255, 0);
            strokeWeight(10);
            ellipse(ball3X, ball3Y, ball3X+20, ball3Y+20);
        
            ball3X=random(0, width-20);
            ball3Y=-20;
    
            score++;
          }
        }
      }
    }
  }

  if (grasp==1 && hasShot==false) {
    if (alive==true) {
     
      if (shot==false) {
        shot=true;
        shotPosY=int(handY)+10;
        shotPosX=(int)handX;
      }
    }
    hasShot=true;
  }

  if (grasp<0.5) {
    hasShot=false;
  }
  
  textSize(20);
  textAlign(RIGHT,TOP);
  fill(255);
  text("Open your hand then make fist to shoot",width-30,30);

  if(leap.getHands().size()==2){
    page=0;
  }
  popStyle();
}