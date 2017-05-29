float cnt;
int amount = 25;

void setup(){
  size(600,600);
  frameRate(30);
}

void draw(){
  background(51);
  strokeWeight(10);
  translate(width / 2, height / 2);
  
  for(int i = 0; i < amount; i++){
    stroke(x(cnt + i), y(cnt), x(cnt));
    rect(x(cnt+i),y(cnt+i),32,32);
  }
  cnt++;
}
float x(float n){ return sin(n * 5) * 100 + sin(n * 20) * 25; }
float y(float n){ return cos(n / 10) * 100 + sin(n / 15) * 100; }
  