int sensor = 0;
int valorSensor = 0;

const int ledVermelho = 10;
const int ledVerde = 9;
const int ledAmarelo = 8;
//const int buzzer = 7;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  pinMode(ledVerde, OUTPUT);
  pinMode(ledAmarelo, OUTPUT);
  pinMode(ledVermelho, OUTPUT);
  //pinMode( buzzer, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int valorSensor = analogRead(sensor);

  if (valorSensor < 85){
    apagaLeds();
     digitalWrite(ledVermelho,HIGH);
    //tone(buzzer, 2500, valorSensor);
  }

  if (valorSensor >= 85  && valorSensor < 450){
    apagaLeds();
    digitalWrite(ledAmarelo,HIGH);
    //tone(buzzer, 1500,valorSensor);
  }

  if (valorSensor >= 450){
    apagaLeds();
    digitalWrite(ledVerde, HIGH);
    //tone(buzzer, 500,valorSensor);
  }
  Serial.println(valorSensor);

  delay(50);
}

void apagaLeds() {
  digitalWrite(ledVerde, LOW);
  digitalWrite(ledAmarelo, LOW);
  digitalWrite(ledVermelho, LOW);
}
