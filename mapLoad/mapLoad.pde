/**
 * Background Image.
 *
 * This example presents the fastest way to load a background image
 * into Processing. To load an image as the background, it must be
 * the same width and height as the program.
 */

PImage bg;
Table coords;
int y;
int dotWidth;
int dotHeight;
void setup() {
  size(1280, 726);
  dotWidth = 4;
  dotHeight = 4;
  // The background image must be the same size as the parameters
  // into the size() method. In this program, the size of the image
  // is 640 x 360 pixels.
  bg = loadImage("map.png");
  coords =  loadTable("coords.csv", "header"); //"header" if the table has header row
}

void draw() {
  background(bg);
  loadData();
}

void loadData() {

  for (TableRow row : coords.rows()) {
    float lng = row.getFloat("lng"); //value accessed by column name or index
    float ltd = row.getFloat("ltd");
    ellipse(lng, ltd, dotWidth, dotHeight);

    }
}
