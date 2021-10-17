PFont font;
String[] str;

float x;
float y;
float angle = 0.0;
float offset = 400;
float scalar = 1;
float speed = 0.05;

void setup(){
  size(800,800);
  background(255);
  smooth();
  font = loadFont("TimesNewRomanPSMT-48.vlw");
  textFont(font);
  textAlign(CENTER,CENTER);
  str = loadStrings("Asong.md");
}

void draw(){
  Pressed();
  fill(255,3);
  rect(0,0,width,height);
  fill(0);
  textSize(32);
    for(int i = 0;i < str.length;i ++){
      x = offset + sin(angle/10)*scalar;
      y = offset - 200 + cos(angle/10)*scalar;
      text(str[i],x,y + 30*i);
      angle += speed;
      scalar += speed/5;
  }
}

void Pressed(){
  if(key == 'p'){
    x = offset;
    y = offset - 200;
    angle = 0;
  }else if(key == 's'){
    speed = 0.05;
    angle += speed;
    scalar = 4;
    scalar += speed/3;
  }else if(mousePressed){
    speed = 0;
  }
}
