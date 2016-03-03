String[] word = {"yellow,", "vocal,", "automobile,", "small boxes,", "clothes,", "tables,", "chairs,", "paper,", "cups", };
String[] word1 = {"suddenly", "A surprise!", "shockingly", "simultaneously", "then, slowly as possible", "now, folding", "unfolding", "draw", "for as long as you like", "for 60 seconds", "copy"};
String[] word2 = {"in silence", "loudly", "going back and forth", "following the shape", "from a distance"};
String[] word3 = {"Greg:", "Kyle:", "Jassy:", "Fiona:", "Neil:", "Everyone:" };

int i = 0;
int j = 0;
int h = 0;
int k = 0;

void setup() {
  size(900, 500);
  pixelDensity(2);
  smooth(16);
}

void draw() {
  background(255);
  fill(0);
  textSize(72);
  text(word3[k], 20, 80);
  text(word[i], 20, 240); 
  text(word1[j], 20, 160); 
  text(word2[h], 20, 320);
  i = int(random(word.length));
  j = int(random(word1.length));
  h = int(random(word2.length));
  k = int(random(word3.length));
  delay(1000);
}
