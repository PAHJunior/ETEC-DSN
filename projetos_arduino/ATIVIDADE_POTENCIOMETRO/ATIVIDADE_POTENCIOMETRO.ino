//DECLARANDO AS PORTAS DOS LED'S
const int led01 = 7;
const int led02 = 8;
const int led03 = 9;
const int led04 = 10;

//DECLARANDO A PORTA DO BUZZER
const int buzzer = 6;

// DECLARANDO O POTENCIOMETRO
const int PotValue = A0;


void setup() {
   Serial.begin(9600);   //PINO DIGITAL ONDE ESTA O LED
   
   //LEDS
   pinMode(led01, OUTPUT);   // Modo do pino do LED
   pinMode(led02, OUTPUT);   // Modo do pino do LED
   pinMode(led03, OUTPUT);   // Modo do pino do LED
   pinMode(led04, OUTPUT);   // Modo do pino do LED
   
}

void loop() {

  int PotValue = analogRead(PotValue);
  //BUZZER IRÁ EMETIR UM SOM COM O TEMPO DETERMINADO PELO POTECIOMETRO
  tone(buzzer, PotValue);
  
  //IF PARA SE O POTENCIOMETRO FOR MENOR QUE 350, ACENDER O LED 1
  if (PotValue < 350){
    digitalWrite(led01, HIGH);
    digitalWrite(led02, LOW);
    digitalWrite(led03, LOW);
    digitalWrite(led04, LOW);    
  }
  // ELSE IF PARA SE O POTENCIOMETRO FOR IGUAL OU MAIOR QUE 350 E MENOR QUE 600, ACENDER O LED 1 E 2
  else if(PotValue >= 350 && PotValue < 600){
    digitalWrite(led01, HIGH);
    digitalWrite(led02, HIGH);
    digitalWrite(led03, LOW);
    digitalWrite(led04, LOW);
  }
  // ELSE IF PARA SE O POTENCIOMETRO FOR IGUAL OU MAIOR QUE 600 E MENOR QUE 900, ACENDER LED 1, 2 E 3
  else if(PotValue >= 600 && PotValue < 900){
    digitalWrite(led01, HIGH);
    digitalWrite(led02, HIGH);
    digitalWrite(led03, HIGH);
    digitalWrite(led04, LOW);
  }
  // ELSE IF PARA SE O POTENCIOMETRO FOR MAIOR QUE 900, ACENDER LED 1,2,3 E 4
  else if(PotValue >= 900){
    digitalWrite(led01, HIGH);
    digitalWrite(led02, HIGH);
    digitalWrite(led03, HIGH);
    digitalWrite(led04, HIGH);
  }
  Serial.print("Valor: ");
  Serial.println(PotValue);  
}
