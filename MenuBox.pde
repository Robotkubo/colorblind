class MenuBox {
  float x, y, w, h;
  boolean clicked;
  boolean hovered = false;
  MenuBox(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    clicked = false;
  }
  void hover(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      hovered = true;
    } else {
      hovered = false;
    }
  }
  void click(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      clicked = !clicked;
    }
  }
  void drawMenuBox() {

    if (clicked == true) {
      fill(240, 240, 240, 250);
    } else if (hovered == false) {
      fill(180, 180, 180, 200);
    } else if (hovered == true) {
      fill(200, 200, 200, 200);
    }
    strokeWeight(2); 
    stroke(220, 220, 220, 250);
    rect(x, y, w, h);
  }
}