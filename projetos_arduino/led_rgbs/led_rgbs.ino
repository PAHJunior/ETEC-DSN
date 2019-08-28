 vvfconst int ledRed = 11;
const int ledBlue = 10;
const int ledGreen = 9;
String cor;

void setup() {
  Serial.begin(9600);
  pinMode(ledRed, OUTPUT);
  pinMode(ledBlue, OUTPUT);
  pinMode(ledGreen, OUTPUT);
}

void amarelo(){
  analogWrite(ledBlue, HIGH);
  analogWrite(ledGreen, HIGH);
  analogWrite(ledRed, HIGH);
}

void loop() {
   if(Serial.available()){
    cor = Serial.readString();
    Serial.println(cor);
   }

   if(cor == "a"){
    amarelo();
   }
}
