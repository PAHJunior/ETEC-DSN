#include <Servo.h>

Servo servoMotorObj;
int const potenciometroPin = 0;
int const servoMotorPin = 5;
int valPotenciometro;  

void setup() {
  Serial.begin(9600);
  servoMotorObj.attach(servoMotorPin);  
}

void loop() {
  valPotenciometro =  analogRead(potenciometroPin);

  valPotenciometro = map(valPotenciometro, 0, 1023,0,180);
  Serial.println(valPotenciometro);
  servoMotorObj.write(valPotenciometro);

  delay(15);
}
