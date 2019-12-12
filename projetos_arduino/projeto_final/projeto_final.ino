#include <Servo.h>
#include <Ultrasonic.h>

// Ultrasonic
const int echoPin = 13;
const int trigPin = 12;
const int ledRed = 2;
const int ledBlue = 4;
const int ledGreen = 3;

Ultrasonic ultrasonic(12,13);

// ServoMotor
Servo servoMotorObj;
int const potenciometroPin = 0;
int const servoMotorPin = 3;
int valPotenciometro;  


void setup() {
  Serial.begin(9600);
  pinMode(echoPin, INPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(ledRed, OUTPUT);
  pinMode(ledGreen, OUTPUT);
  pinMode(ledBlue, OUTPUT);
  servoMotorObj.attach(servoMotorPin);
}

void loop() {
  valPotenciometro =  analogRead(potenciometroPin);
  int distancia = (ultrasonic.Ranging(CM));

  servoMotorObj.write(valPotenciometro);
  valPotenciometro = map(valPotenciometro, 0, 1023,0,180);
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
