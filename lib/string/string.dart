void declarando() {
  // concatenar strings
  String t1 = 'um';
  String t2 = 'dois';
  String s1 = t1 + t2 + '-três';
  print(s1);
  // concatenar valor a uma string com ${}
  int i1 = 3;
  String s2 = '$t1-${t2}-${i1}-quatro';
  print(s2);
  // comparar strings
  String s3 = 'um';
  print(t1 == s3);
  // string em multiplas linhas
  String s4 = '''
quatro
''';
  print(s4);
  // string padrao imprimi 'a', newline, 'b'
  String s5 = 'a\nb';
  print(s5);
  // raw string imprimi 'a', barra, 'n', 'b'
  String s6 = r'a\nb';
  print(s6);
}
void alterandoTipo() {
  // String para int
  int um = int.parse('1');
  print(um);
  // String para double
  double meio = double.parse('0.5');
  print(meio);
  //  int para string
  String dois = 2.toString();
  print(dois);
  // double para String
  String pi1 = 0.3141516.toStringAsExponential(2);
  print(pi1);
  String pi2 = 3.141516.toStringAsFixed(2);
  print(pi2);
  String pi3 = 13.141516.toStringAsPrecision(2);
  print(pi3);
}
void main(){
declarando();
alterandoTipo();
}