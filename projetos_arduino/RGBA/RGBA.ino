//RGB LED Circuit

const int pinkLED = 9; //red LED connects to digital pin 9
const int greenLED = 10; //green LED connects to digital pin 10
const int blueLED = 11; //blue LED connects to digital pin 11

void setup()
{
  //sets all LEDs as outputs
  pinMode(pinkLED, OUTPUT); 
  pinMode(greenLED, OUTPUT); 
  pinMode(blueLED, OUTPUT); 
}

void loop()
{
  digitalWrite(pinkLED,HIGH); //turns the LED on
  delay(1000); //waits 3 seconds
  digitalWrite(pinkLED, LOW); //turns off the red LED
  digitalWrite(greenLED,HIGH); //turns on the green LED
  delay(1000); //waits 3 seconds
  digitalWrite(greenLED, LOW); //turns green LED off
  digitalWrite(blueLED, HIGH); //turns blue LED on 
  delay(1000); //waits 3 seconds
  digitalWrite(blueLED, LOW); //turns blue LED off
} 
