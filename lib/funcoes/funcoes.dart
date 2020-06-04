void main() {
  var soma = somar(2, 3);
  print(soma);

  var produto = multiplicar(2, 3);
  print(produto);
}

num somar(num x, num y) {
  return x + y;
}

num multiplicar(x, y) => x * y;