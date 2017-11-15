Axis axis;

void setup() {
  size(1200, 1000, P2D);
  axis = new Axis(50,height-100,width-100);
}

void draw() {
  background(255,255,255);
  axis.draw();
  if(axis.playButton().getPlay()) {
    axis.sliderButton().drag(axis.sliderButton.getXPos()+1);
  }
}

void mouseDragged(){
  if (this.axis.sliderButton.clicked() || this.axis.sliderButton.getClicked()) {
    this.axis.sliderButton.setClicked(true);
    this.axis.sliderButton.drag(mouseX);
  }
}

void mouseClicked(){
  if (this.axis.playButton.clicked()) {
    this.axis.playButton.resetPlay();
  }
}

void mouseReleased(){
  //this.axis.sliderButton.setClicked(false);
}