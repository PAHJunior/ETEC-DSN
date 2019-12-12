#include <Ultrasonic.h>

const int trigPin = 4;
const int echoPin = 5;
const int ledRed = 2;
const int ledBlue = 4;
const int ledGreen = 3;
const int buzz = 6;

Ultrasonic ultrasonic(trigPin,echoPin);

void setup() {
  Serial.begin(9600);
  pinMode(echoPin, INPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(ledRed, OUTPUT);
  pinMode(ledGreen, OUTPUT);
  pinMode(ledBlue, OUTPUT);
}

void loop() {
  int distancia = (ultrasonic.Ranging(CM));

  if(distancia < 15){
    digitalWrite(ledRed, HIGH);
    delay(150);
    digitalWrite(ledRed, LOW);   
  }
  else if (distancia < 5){
    digitalWrite(ledRed, HIGH);
    delay(0);
  }
  else if (distancia < 25){
    digitalWrite(ledGreen, HIGH);
    delay(1000);
    digitalWrite(ledGreen, LOW);
  }
  else if ((distancia >= 25) && (distancia <= 30)){
    digitalWrite(ledBlue, HIGH);
    delay(700);
    digitalWrite(ledBlue, LOW);
  }
  
  
  
  digitalWrite(trigPin, LOW);
  delay(2);  
  digitalWrite(trigPin, HIGH);
  delay(10);
  digitalWrite(trigPin, LOW);

  Serial.print("Distancia em CM: ");
  Serial.println(distancia);
  delay(300);
}
