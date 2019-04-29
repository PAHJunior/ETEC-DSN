const int buzzer = 8;

const int led01 = 10;
const int led02 = 11;
const int led03 = 12;

const int DO = 262;
const int RE = 294;
const int MI = 329;
const int FA = 349;
const int SOL = 392;
const int LA = 440;
const int SI = 494;

void setup() {
  pinMode(buzzer, OUTPUT);
  pinMode(led01, OUTPUT);
  pinMode(led02, OUTPUT);
  pinMode(led03, OUTPUT);
}

//PRIMEIRA ESTROFE
void primeira(){
  //PRIMEIRA LINHA
  tone(buzzer,DO,500);
  tone(buzzer,DO,500);
  tone(buzzer,DO,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,MI,500);
  tone(buzzer,MI,500);
  tone(buzzer,DO,500);

  //SEGUNDA LINHA
  tone(buzzer,DO,500);
  tone(buzzer,DO,500);
  tone(buzzer,SI,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,MI,500);
  tone(buzzer,MI,500);
  tone(buzzer,DO,500);

  //TERCEIRA LINHA
  tone(buzzer,MI,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,MI,500);
  tone(buzzer,LA,500);
  tone(buzzer,SOL,500);

  //QUARTA LINHA
  tone(buzzer,MI,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,MI,500);
  tone(buzzer,LA,500);

  //QUINTA LINHA
  tone(buzzer,SOL,500);
  tone(buzzer,MI,500);
  tone(buzzer,LA,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,MI,500);
  tone(buzzer,LA,500);
  tone(buzzer,SOL,500);
  tone(buzzer,SOL,500);
  tone(buzzer,MI,500);
  tone(buzzer,LA,500);
  tone(buzzer,SOL,500);
  tone(buzzer,MI,500);
  tone(buzzer,SOL,500);
}

void loop() {
  primeira();
}

/*DO DO DO sol sol sol sol mi mi do | Me desculpe vir aqui desse jeito
DO DO si sol sol sol sol mi mi do | Me perdoe o traje de maloqueiro
mi sol sol mi la sol | De camisa larga 
mi sol sol mi la | e boné pra trás
sol mi la sol sol mi la sol sol mi la sol sol mi sol | Bem na hora da novela que a senhora gosta mais

DO DO DO sol sol sol sol mi mi do | Faz três dias que eu não durmo direito
DO DO si sol sol sol sol mi mi do | Sua filha me deixou desse jeito
mi sol sol mi la sol | E o que ela mais fala 
mi mi sol sol mi la sol | é que a senhora é brava
DO(10x) RE MI MI | Mas hoje eu não vou aceitar/ Levar um “não” pra casa

MI MI MI DO | Dona Maria
MI MI MI MI MI MI FA MI RE SI | Deixa eu namorar a sua filha
RE (6X) DO RE MI SOL | Vai me desculpando a ousadia
DO (8x) si la la | Essa menina é um desenho no céu

MI MI MI DO | Dona Maria
MI MI MI MI MI MI FA MI RE SI | Deixa eu namorar a sua filha
RE (6X) DO RE MI SOL | Vai me desculpando a ousadia
DO (8x) si la la | Essa menina é um desenho no céu
sol (8x) fa mi do | Que Deus pintou e jogou fora o pincel*/
