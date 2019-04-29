
 int buz = 8; 


void setup() {
 pinMode(buz, OUTPUT);
}

void loop() {
  tone(buz,2000,100);
  delay(1000);
}
