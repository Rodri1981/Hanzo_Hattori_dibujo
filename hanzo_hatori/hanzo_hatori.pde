int maxImages = 8;
int imageIndex = 0;

PImage [] images = new PImage[maxImages];

void setup(){
  size(400, 400);
  for(int i = 0; i < images.length; i++){
    images[i] = loadImage("Frame_" + i + ".png");
  }
  frameRate(12);
  imageMode(CENTER);
}

void draw(){
  background(0);
  image(images[imageIndex], width/2, height/2);
  imageIndex = (imageIndex+1) % images.length;
}
