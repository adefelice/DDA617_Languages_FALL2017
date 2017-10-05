//creating a simple sketch for state changes 3 states= pregame, game, game over

String state = "pregame"; //create String variable called state and assign initial value

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  textSize(36);
  textAlign(CENTER);
  if (state.equals("pregame")) {
    background(0);
    text("click to start", width/2, height/2);
  } else if (state.equals("game")) {
    background (0, 0, 255);
    text("now this is a fun game.", width/2, height/2);
    text("click again!", width/2, height/2+50);
  } else if (state.equals("game over")) {
    background(255, 0, 0);
    text("everyone loses", width/2, height/2);
  }
  println(state);
}

//click mouse to trigger next state
void mousePressed() {
  if (state.equals("pregame")) {
    state = "game";
  }
  else if (state.equals("game")){
    state = "game over";
  } 
  else if (state.equals("game over")){
   state = "pregame"; 
  }
}