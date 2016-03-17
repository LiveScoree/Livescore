import themidibus.*; //Import the library

MidiBus myBus; // The MidiBus
float velo = 0;
float pitch1 = 100;
float count = 0.1;
float prevPitch1 = 100;
int x = 200;
int y = 200;
int z = 200;
int cc = 0 ;
void setup() {
  size(displayWidth, displayHeight,P3D);
  background(0);
  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
  myBus = new MidiBus(this, 3, 4); // Create a new MidiBus using the device index to select the Midi input and output devices respectively.
 pixelDensity(1);
 smooth(16);
}

void draw() {
  background(velo);
  noFill();
 stroke(255);
 translate(width/2, height/2);
 velo = lerp(velo*2,0,0.01);
 //stroke(lerp(0,velo*10,0.01));
 rotateY(lerp(velo,0,0.9));
 rotateX(lerp(velo,0,0.9));
 rotateZ(lerp(velo,0,0.9));
 box(x,y,z);
 box(x/2,y/2,z/2);
 count = count + 0.01;

}

void noteOn(int channel, int pitch, int velocity) {
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
pitch1 = pitch;
velo = velocity;

}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
  cc = value;
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
