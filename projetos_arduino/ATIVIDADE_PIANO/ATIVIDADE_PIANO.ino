int pianoBuzzer = 7;
char piano;

int led01 = 6;
int led02 = 10;
int led03 = 11;

int botao = 2;


void setup() {
  Serial.begin(9600);
  pinMode(pianoBuzzer, OUTPUT);
  pinMode(led01, OUTPUT);
  pinMode(led02, OUTPUT);
  pinMode(led03, OUTPUT);
  pinMode(botao, OUTPUT);
}

void loop() {
  while(Serial.available() > 0){
    piano = Serial.read();

    //TECLADO    DÓ
    if(piano == 'Q' || piano == 'q'){
      tone(pianoBuzzer, 262,500);
      digitalWrite(led01, HIGH);
    }
    // TECLADO RE
    if(piano == 'W' || piano == 'w'){
      tone(pianoBuzzer, 294,500);
      digitalWrite(led02, HIGH);
    }

    // TECLADO MI
    if (piano == 'E' || piano == 'e'){
      tone(pianoBuzzer, 329,500);
      digitalWrite(led03, HIGH);
    }

    //TECLADO FA
    if (piano == 'R' || piano == 'r'){
      tone(pianoBuzzer, 349,500);
    }

    //TECLADO SOL
    if (piano == 'T' || piano == 't'){
      tone(pianoBuzzer, 392,500);
    }

    //TECLADO LA
    if (piano == 'Y' || piano == 'y'){
      tone(pianoBuzzer, 440,500);
    }

    //TECLADO SI
    if (piano == 'U' || piano == 'u'){
      tone(pianoBuzzer, 494,500);
    }    
  }  

 apagar();
}


void apagar(){
  int buttonState = digitalRead(botao);

  if(buttonState == 1){
    digitalWrite(led01, HIGH);
  }


  Serial.println(buttonState);
  delay(100);   
}
