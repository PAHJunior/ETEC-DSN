const int LedPin = 10; //PINO DIGITAL ONDE ESTA O LED

void setup() {
  // put your setup code here, to run once:
  pinMode(LedPin, OUTPUT);   // Modo do pino do LED
}

void loop() {
  digitalWrite(LedPin, HIGH); //LIGAR LED

}
