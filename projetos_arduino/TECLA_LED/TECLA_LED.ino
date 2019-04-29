int ledVermelho = 10;
int ledAmarelo = 9;
int ledVerde = 8;
char leitura;


void setup() {
  Serial.begin(9600);
  pinMode(ledVermelho, OUTPUT);
  pinMode(ledAmarelo, OUTPUT);
  pinMode(ledVerde, OUTPUT);
}

void loop() {
  while (Serial.available() > 0){
    leitura = Serial.read();
    
    //LED VERMELHO Q LIGA      W DESLIGA
    if(leitura == 'Q' || leitura == 'q'){
      digitalWrite(ledVermelho, HIGH);
      
    }else if (leitura == 'W' || leitura == 'w'){
      digitalWrite(ledVermelho, LOW);
    }

    //LED AMARELO A LIGA      S DESLIGA
    else if (leitura == 'A' || leitura == 'a'){
      digitalWrite(ledAmarelo, HIGH);
    }else if (leitura == 'S' || leitura == 's'){
      digitalWrite(ledAmarelo, LOW);
    }

    //LED VERDE Z LIGA       X APAGA
    else if (leitura == 'Z' || leitura == 'z'){
      digitalWrite(ledVerde, HIGH);
    }else if (leitura == 'X' || leitura == 'x'){
      digitalWrite(ledVerde, LOW);
    }
  }
}
