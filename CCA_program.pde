// Computer sceince CCA program by Wade & Alex
// This program will allow the user to see an image through the eyes of someone who is color blind

MenuBox[] buttons = new MenuBox[10];
boolean mainBoxActive = false;

ColorBlindness colorBlindness = new ColorBlindness(this); // initialize color blind libary
import colorblind.ColorBlindness; // import color blind library
import java.io.File; // import java file system
PImage img; // initialize image to be loaded

void setup() {
  background (255, 255, 255);
  fullScreen();

  //----------------------------------------------------------------------//
  //This is the initial setup for the buttons

  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new MenuBox(10, 130+100*i, 180, 80);
  }
  buttons[9] = new MenuBox(10, 10, 40, 40);
}

void draw() {  
  println(buttons[9].clicked);
  buttons[9].drawMenuBox();
  if (buttons[9].clicked) {
    //---------------------------------------------------------------------//
    // Here are the text for each button


    for (int i = 0; i < buttons.length; i++) {
      buttons[i].drawMenuBox();
      buttons[i].hover(mouseX, mouseY);

      if (buttons[1].clicked) {
        colorBlindness.simulateProtanopia();
      }
      if (buttons[2].clicked) {
        colorBlindness.simulateDeuteranopia();
      }
      if (buttons[3].clicked) {
        colorBlindness.simulateTritanopia();
      }
      if (buttons[4].clicked) {
        colorBlindness.simulateAchromatopsia();
      }
      if (buttons[5].clicked) {
        colorBlindness.simulateBlueConeMonochromacy();
      }
      if (buttons[6].clicked) {
        colorBlindness.daltonizeDeuteranopia();
      }
      if (buttons[7].clicked) {
        colorBlindness.daltonizeTritanopia();
      }
      if (buttons[8].clicked) {
        colorBlindness.daltonizeAchromatopsia();
      }

      fill(20, 20, 20);
      textSize(14);
      text("Upload Image", 15, 175);
      
      textSize(14);
      text("Simulate Protanopia", 15, 275);


      textSize(14);
      text("Simulate Deuteranopia", 15, 375);


      textSize(14);
      text("Simulate Tritanopia", 15, 475);


      textSize(14);
      text("Simulate Achromatopsia", 15, 575);


      textSize(14);
      text("Simulate BlueCone", 15, 675); 
      textSize(14);
      text("Monochromacy", 15, 690);


      textSize(14);
      text("Simulate Daltonize", 15, 775); 
      textSize(14);
      text("Deuteranopia", 15, 790);

      textSize(14);
      text("Simulate Daltonize", 15, 875);
      textSize(14);
      text("Tritanopia", 15, 890);

      textSize(14);
      text("Simulate Daltonize", 15, 975);
      textSize(14);
      text("Achromatopsia", 15, 990);
    }
  } else if (mainBoxActive == false) {
    background (255, 255, 255);
    //picture draw
    buttons[9].drawMenuBox();
    //here we do the background -> picture draw -> top left box
  }
  if ( img != null) {
    image(img, 200, 200);
  }
}

void imageChosen(File f) {
  if (f.exists() ) {
    img = loadImage( f.getAbsolutePath() );
  }
}

void mouseClicked() {
  if (buttons[0].clicked) {
    selectInput("Select a file to process:", "imageChosen");
  }
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].click(mouseX, mouseY);
  }
}