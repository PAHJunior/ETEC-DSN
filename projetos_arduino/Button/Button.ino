//variaveis
  int pushButton = 2;
  int ledPin = 11;

void setup() {

  Serial.begin(9600);
  pinMode(pushButton, INPUT);
  pinMode(ledPin, OUTPUT);


}

void loop() {
  int buttonState = digitalRead(pushButton);

  if(buttonState == 1){
    digitalWrite(ledPin, HIGH);
  }else{
    digitalWrite(ledPin, LOW);  
  }


  Serial.println(buttonState);
  delay(50);

}
