PImage background;
Gomez gomezMain;
boolean startWiggle;

void setup() {
  frameRate(30);
  background = loadImage("ClickerBackground.png");
  size (1280, 800);
  gomezMain = new Gomez(640,400);
  startWiggle = true;
}

void draw() {
  background(255); //---- Might be unnecessary
  
  //loads and resize the background image
  image(background,0 ,0 );
  background.resize(1280, 800);
  
  //text display and variable who counts score
  textAlign(CENTER);
  textSize(40);
  fill(255);
  text("you have clicked Gomez " + (int) gomezMain.gomScore + " times.", width/2, 100);
  
  gomezMain.gomezDisplay();
  gomezMain.wriggle();
}

void mousePressed()  {
  gomezMain.click(mouseX, mouseY);
}
