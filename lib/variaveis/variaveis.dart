// # Declaração de variáveis
void declarando() {
  // # Tipos básicos
  //'String' permite letras, numero e simbolos. Padrao UTF-16.
  String texto1 = '3 tres #';
  // 'int', 'num', 'double' declarações de numeros.
  int numero1 = 1;
  double numero2 = 3.12;
  // booleano
  bool booleano = true;
  // 'List' apresento maiores detalhes depois
  List<String> lista1 = ['a', 'b'];
  // 'Map' apresento maiores detalhes depois. Par key:value
  Map<String, String> mapa1 = {'1': 'um', 'dois': '2'};

  // # Tipos complementares
  num numero3 = 2;

  // # Tipos dinamicos
  // 'var' detecta o tipo pelo valor definido. e NAO pode mudar depois.
  var dinamico1 = 'um';
  //dinamico1 = 1; // isto gera erro
  // 'dynamic' detecta o tipo pelo valor definido. e pode mudar depois.
  dynamic dinamico2 = 'dois';
  //dinamico2 = 2; // nao gera erro.

  // # Modificadores de variáveis
  // 'final'
  final String texto2 = 'quatro';
  //texto2 = 'four'; // isto gera erro
  // 'const' constante definida em tempo de compilação.
  const String texto3 = 'cinco';
}

void main() {
  declarando();

}