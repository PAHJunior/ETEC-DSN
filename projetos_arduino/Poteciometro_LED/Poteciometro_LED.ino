const int LedPin = 10; //PINO DIGITAL ONDE ESTA O LED
const int PostPin = A0; //PINO ANALOGICO ONDE ESTA O PONTECIOMETRO

void setup() {
  Serial.begin(9600);   //PINO DIGITAL ONDE ESTA O LED
  pinMode(LedPin, OUTPUT);   // Modo do pino do LED
}

void loop() {
  
  int PotValue = analogRead(PostPin);

  digitalWrite(LedPin, HIGH); //LIGAR LED


  delay(PotValue);
  digitalWrite(LedPin, LOW);

  delay(PotValue);

  Serial.print("Valor: ");
  Serial.println(PotValue);
}
