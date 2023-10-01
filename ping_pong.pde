int enemyBarX = width/2;
int enemyBarY = 20;
int enemyBarSpeed = 2;
int ballX = width/2;
int ballY = height/2;
int ballSpeedX = 1;
int ballSpeedY = 1;
int enemyScore = 0;
int userScore = 0;
void setup() {
  size(200,500);
  frameRate(120);
  rectMode(CENTER);
}
 
void draw() {
  background(80,45,12);
  line(0,height/2,width,height/2);
  fill(0,0,255);
  rect(mouseX,480,100,10);
  fill(255,0,0);
  enemyBar();
  fill(0);
  ball();
  textSize(30);
  text(enemyScore,width-20,height/2-5);
  text(userScore,width-20,height/2+25);
}
void ball() {
  ellipse(ballX,ballY,25,25);
  ballX = ballX + ballSpeedX; 
  ballY = ballY + ballSpeedY;
  if((ballX>width-5)||(ballX<5)) {
    ballSpeedX = ballSpeedX * -1;
  } 
  if((ballY>height-5)||(ballY<5)) {
    
    if(ballY>height-5) {
      enemyScore += 1;
      ballY = height/2;
    } else if(ballY<5) {
      userScore += 1;
      ballY = height/2;
    }
  }
  if((ballY==enemyBarY+10)&&((ballX>enemyBarX-55)&&(ballX<enemyBarX+55))) {
    ballSpeedY = ballSpeedY * -1;
  }
  if((ballY==470)&&((ballX>mouseX-55)&&(ballX<mouseX+55))) {
    ballSpeedY = ballSpeedY * -1;
  }
}
void enemyBar() {
  rect(enemyBarX,enemyBarY,100,10);
  enemyBarX = enemyBarX + enemyBarSpeed;
  if((enemyBarX>width-25)||(enemyBarX<25)) {
    enemyBarSpeed =  enemyBarSpeed * -1;
  }
}
    ballSpeedX = ballSpeedX * -1;
  } 
  if((ballY>height-5)||(ballY<5)) {
    
    if(ballY>height-5) {
      enemyScore += 1;
      ballY = height/2;
    } else if(ballY<5) {
      userScore += 1;
      ballY = height/2;
    }
  }
  if((ballY==enemyBarY+10)&&((ballX>enemyBarX-55)&&(ballX<enemyBarX+55))) {
    ballSpeedY = ballSpeedY * -1;
  }
  if((ballY==470)&&((ballX>mouseX-55)&&(ballX<mouseX+55))) {
    ballSpeedY = ballSpeedY * -1;
  }
}
void enemyBar() {
  rect(enemyBarX,enemyBarY,100,10);
  enemyBarX = enemyBarX + enemyBarSpeed;
  if((enemyBarX>width-25)||(enemyBarX<25)) {
    enemyBarSpeed =  enemyBarSpeed * -1;
  }
}

