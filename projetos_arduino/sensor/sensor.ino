#include <Ultrasonic.h>

const int echoPin = 13;
const int trigPin = 12;
const int ledRed = 2;
const int ledBlue = 4;
const int ledGreen = 3;
const int buzz = 6;

Ultrasonic ultrasonic(12,13);

void setup() {
  Serial.begin(9600);
  pinMode(echoPin, INPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(ledRed, OUTPUT);
  pinMode(ledGreen, OUTPUT);
  pinMode(ledBlue, OUTPUT);
  pinMode(buzz, OUTPUT);
}

void loop() {
  int distancia = (ultrasonic.Ranging(CM));

  if(distancia < 15){
    digitalWrite(ledRed, HIGH);
    tone(buzz, 2999, 50);
    delay(150);
    digitalWrite(ledRed, LOW);   
  }
  else if (distancia < 5){
    digitalWrite(ledRed, HIGH);
    tone(buzz, 2999, 50);
    delay(0);
  }
  else if (distancia < 25){
    digitalWrite(ledGreen, HIGH);
    tone(buzz, 2999, 300);
    delay(400);
    digitalWrite(ledGreen, LOW);
  }
  else if ((distancia >= 25) && (distancia <= 30)){
    digitalWrite(ledBlue, HIGH);
    tone(buzz, 2999, 500);
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
  delay(250);
}
