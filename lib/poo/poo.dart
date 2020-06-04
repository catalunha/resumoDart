import 'dart:math';

class Ponto {
  String id;
  double x = null;
  double y = null;
  Ponto({this.x, this.y});
  // Construtor nomeado
  Ponto.origin() {
    x = 0;
    y = 0;
  }
  Ponto.fromMap(Map<String, dynamic> map) {
    x = map['x'] ?? '';
    y = map['y'] ?? '';
  }


  /// get Quadrante do ponto
  String get quadrante {
    var qd = null;
    if (this.x > 0 && this.y > 0) {
      qd = '1';
    } else if (this.x < 0 && this.y > 0) {
      qd = '2';
    } else if (this.x < 0 && this.y < 0) {
      qd = '3';
    } else if (this.x > 0 && this.y < 0) {
      qd = '4';
    }
    return qd;
  }

  set quadrante(String qd) {
    if (qd == '1') {
      this.x = this.x > 0 ? this.x : -1 * this.x;
      this.y = this.y > 0 ? this.y : -1 * this.y;
    } else if (qd == '2') {
      this.x = (this.x < 0) ? this.x : -1 * this.x;
      this.y = this.y > 0 ? this.y : -1 * this.y;
    } else if (qd == '3') {
      this.x = this.x < 0 ? this.x : -1 * this.x;
      this.y = this.y < 0 ? this.y : -1 * this.y;
    } else if (qd == '4') {
      this.x = this.x > 0 ? this.x : -1 * this.x;
      this.y = this.y < 0 ? this.y : -1 * this.y;
    }
  }

  move(dx, dy) {
    x += dx;
    y += dy;
  }

  distanceTo(Ponto other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  String toString() {
    return '($x,$y)';
  }

  Map<String, dynamic> toMap() {
    return {
      'x': x,
      'y': y,
    };
  }
}

class Poligono {
  String id;
  List<Ponto> pontos;
  Poligono({this.pontos});

  String toString() {
    String lados = '';
    for (var p in pontos) {
      lados += '${p.toString()}|';
    }
    return lados;
  }
}

main() {
  Ponto p = Ponto(x: 1.0, y: 2.0);
  print(p.runtimeType);
  print(p.x);
  // Se p is non-null, set its y value to 4.
  p?.x = 4.0;
  print(p.x);
  p.move(1.0, 1.0);

  Ponto q = Ponto.origin();
  print(q.runtimeType);
  var dist = p.distanceTo(q);
  print('Distancia entre p e q: $dist');

  print(p.toString());
  print('Quadrante: ${p.quadrante}');
  p.quadrante = '4';
  print(p.toString());

  Ponto r = Ponto.fromMap({'x': 2, 'y': 3});
  print(r.toString());
  print(r.toMap());

  Poligono poligono = Poligono(pontos: [p, q, r]);
  print(poligono.toString());
}
