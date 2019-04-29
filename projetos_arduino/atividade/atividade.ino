int led1 = 9; //VERDE
int led2 = 10; // BRANCO
int led3 = 11; // AMARELO
int led4 = 12; //VERMELHO
int led5= 13; //AZUL
int buz = 7; // buzer


void setup() {
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
  pinMode(buz, OUTPUT);
}

void loop() {
  
  digitalWrite(led1, HIGH);
  digitalWrite(led2, HIGH);
  digitalWrite(led3, HIGH);
  digitalWrite(led4, HIGH);
  digitalWrite(led5, HIGH); 
  tone (buz, 900);
  delay(1000);
  noTone (buz);
  digitalWrite(led5, LOW);
  delay(2000);
  digitalWrite(led4, LOW);
  delay(2000);
  digitalWrite(led3, LOW);
  delay(2000);
  digitalWrite(led2, LOW);
  delay(2000);
  digitalWrite(led1, LOW);
  delay(2000);


  //PISCAR 
  digitalWrite(led1, HIGH);
  digitalWrite(led2, HIGH);
  digitalWrite(led3, HIGH);
  digitalWrite(led4, HIGH);
  digitalWrite(led5, HIGH);
  delay(1000);
  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
  digitalWrite(led5, LOW);
  delay(1000);
  digitalWrite(led1, HIGH);
  digitalWrite(led2, HIGH);
  digitalWrite(led3, HIGH);
  digitalWrite(led4, HIGH);
  digitalWrite(led5, HIGH);
  delay(1000);
  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
  digitalWrite(led5, LOW);
  delay(2000);
  
  
  //Emitir o som
  tone(buz, 1000);
  delay(2000);
  
  tone(buz,3000);
  delay(2000);
  
  tone(buz,2000);
  delay(2000);
  
  noTone(buz);


  digitalWrite(led1, HIGH);
  delay(1000);
  tone(buz,3000);
  delay(1000);
  noTone(buz);

  digitalWrite(led2, HIGH);
  delay(1000);
  tone(buz,1000);
  delay(1000);
  noTone(buz);

  digitalWrite(led3, HIGH);
  delay(1000);
  tone(buz,3000);
  delay(1000);
  noTone(buz);

  digitalWrite(led4, HIGH);
  delay(1000);
  tone(buz,1000);
  delay(1000);
  noTone(buz);

  digitalWrite(led5, HIGH);
  delay(1000);
  tone(buz,3000);
  delay(1000);
  noTone(buz);  

  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
  digitalWrite(led5, LOW);
  delay(3000); 
  
}
  
  
