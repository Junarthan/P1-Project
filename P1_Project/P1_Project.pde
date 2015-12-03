Setup setup1;

int state;

void setup() {
  size (500, 500);

  setup1 = new Setup();
  
  state = 0;
}


void draw() {
  int diameter = 30;
  
  background(0);
  textSize(36);
  fill(255);
  text("Main Screen", 140, 250);

  fill(127);
  ellipse(450, 50, diameter, diameter);
  textSize(16);
  fill(255);
  text("Setup", 430, 80);

  if (state == 1) {
    setup1.display();
  /*}else if(state == 0){
    return;
  }*/
}


void mouseClicked() {
  if (state == 0) {
    if (mouseX < 465 && mouseX > 435 && mouseY < 65 && mouseY > 35)state = 1;
  }
  /*if (state == 1) {
    if (mouseX > 0 && mouseX < 100 || mouseX > 400 && mouseX < 500 
    || mouseY > 0 && mouseY < 100 || mouseY > 400 && mouseY < 500);
  }*/
}