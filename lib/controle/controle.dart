void main() {
  String letra1 = 'd';
  // if simples
  if (letra1 == 'a') {
    print('Letra a encontrada com if.');
  }
  // if com else
  if (letra1 == 'a') {
    print('Letra a encontrada com if/else.');
  } else {
    print('Outra letra encontrada com if/else.');
  }
  // if composto
  if (letra1 == 'a') {
    print('Letra a encontrada com if composto.');
  } else if (letra1 == 'b') {
    print('Letra b encontrada com if composto.');
  } else if (letra1 == 'c') {
    print('Letra c encontrada com if composto.');
  }
  // if/else composto
  if (letra1 == 'a') {
    print('Letra a encontrada com if/else composto.');
  } else if (letra1 == 'b') {
    print('Letra b encontrada com if/else composto.');
  } else if (letra1 == 'c') {
    print('Letra c encontrada com if/else composto.');
  } else {
    print('Outra letra encontrada com if/else composto.');
  }
  // if curto
  bool filho = true;
  String parente1;
  if (filho) {
    parente1 = 'sim';
  } else {
    parente1 = 'nao';
  }
  print(parente1);
  var parente2 = filho ? 'sim' : 'nao';
  print(parente2);
  
  // tratando nulos
  var valor = null;
  var a = valor ?? 0;
  print(a);
}
