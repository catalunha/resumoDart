void usandoFor() {
  for (var i = 0; i < 3; i++) {
    print(i);
  }
    var nomes = ['a', 'b', 'c'];
  for(int i=0;i<nomes.length;i++){
    print('Listando com for(;) ${nomes[i]}');
    
  }
  for (var nome in nomes) {
    print('Listando com for(in) $nome');
  }
  nomes.forEach((n) => print('Listando com forEach $n'));
  nomes.forEach(printElement);
}
void printElement(String element) {
  print('Listando com funcao $element');
}
void usandoWhile() {
  int num = 0;

  while (num < 10) {
    print(num);
    num = num + 1;
    //num++;
  }
}
void usandoDoWhile() {
  int num = 0;

  do {
    print(num);
    num = num + 1;
    //num++;
  } while (num < 10);
}
void comparando() {
  int num = 0;

  int num1 = num;
  while (num1 < 10) {
    print('while $num1');
    num1 = num1 + 1;
    //num1++;
  }

  int num2 = num;
  do {
    print('do $num2');
    num2 = num2 + 1;
    //num2++;
  } while (num2 < 10);
}

void main() {
  usandoFor();
  usandoWhile();
  usandoWhile();

}