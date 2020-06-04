void declarando() {
  List<String> lista1 = List();
  List<String> lista2 = [];
  var lista3 = List<String>();
  var lista4 = [];
  print("$lista1 - $lista2 - $lista3 - $lista4");
}
void manipulando() {
  // declarando e iniciando lista
  List<String> lista1 = ['a', 'b']; 
  print('Inicializou lista: $lista1');
  // limpar lista
  lista1.clear();
  print('Limpou lista: $lista1');
  // adicionar 1 item
  lista1 = ['a', 'b'];
  lista1.add('c'); 
  print('Adicionou um item: $lista1');
  // adicionar muitos itens
  lista1.addAll(['d', 'e']); 
  List<String> lista2 = ['f', 'g'];
  lista1.addAll(lista2);
  print('Adicionou outros itens: $lista1');
  // comprimento da lista
  var tam = lista1.length; 
  print('Tamanho da lista: $tam . Lista ficou: $lista1');
  // obter item do indice 1
  var item = lista1[1]; 
  print('Obter item indice 1: $item');
  // remove item
  var acao = lista1.remove('c'); 
  print('Removendo item c: $lista1. Acao $acao');
  // verifica se tem item
  var nomeItem = 'b';
  var contem =
      lista1.contains(nomeItem); 
  print('Contem item $nomeItem na lista $lista1. Resposta $contem');
  // pega indice de item
  nomeItem = 'd';
  var indice = lista1.indexOf(nomeItem);
  print('Na lista $lista1. O indice do item $nomeItem é $indice');
  // remove e retorna item
  var removido = lista1.removeAt(indice); 
  print(
      'Remove item indice $indice da lista ficando $lista1. Item removido $removido');
  // randomizando
  lista1.shuffle();
  print('Randomize lista: $lista1');
  // ordenar lista
  List<String> lista3 = ['a', 'c','b'];
  lista3.sort();
  print('Ordenar lista: $lista3');
}
void usandoIf() {
  bool incluir = true;
  var lista1 = ['a', 'b', if (incluir) 'c'];
  print('$lista1');
  incluir = false;
  var lista2 = ['a', 'b', if (incluir) 'c'];
  print('$lista2');
}
void usandoWhere() {
  var nomes = ['aaaaa', 'bbb', 'ccc'];
  print(nomes);
  List nomesCurtos = nomes.where((item) => item.length < 4).toList();
  print(nomesCurtos);
}
void usandoMap() {
  var nomes = ['aaaaa', 'bbb', 'ccc'];
  print(nomes);
  var mapNomes = nomes.map((item) => item.length < 4).toList();
  print(mapNomes);
}
void main() {
  declarando();
  manipulando();
  usandoIf();
  usandoWhere();
  usandoMap();
}