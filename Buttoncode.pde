MenuBox[] buttons = new MenuBox[10];
boolean mainBoxActive = false;

void setup() {
  background (255, 255, 255);
  fullScreen();
  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new MenuBox(10, 130+100*i, 180, 80);
  }
  buttons[9] = new MenuBox(10, 10, 40, 40);
}

void draw() {  
  println(buttons[9].clicked);
  buttons[9].drawMenuBox();
  if (buttons[9].clicked) {
    for (int i = 0; i < buttons.length; i++) {
      buttons[i].drawMenuBox();
      buttons[i].hover(mouseX, mouseY);
      if (buttons[0].clicked) {
        ellipse(100, 100, 100, 100);
      }
      if (buttons[1].clicked) {
      }
      if (buttons[2].clicked) {
      }
      if (buttons[3].clicked) {
      }
      if (buttons[4].clicked) {
      }
      if (buttons[5].clicked) {
      }
      if (buttons[6].clicked) {
      }
      if (buttons[7].clicked) {
      }
      if (buttons[8].clicked) {
      }
    }
  } else if (mainBoxActive == false) {
    background (255, 255, 255);
    //picture draw
    buttons[9].drawMenuBox();
    //here we do the background -> picture draw -> top left box
  }
}

void mouseClicked() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].click(mouseX, mouseY);
  }
}