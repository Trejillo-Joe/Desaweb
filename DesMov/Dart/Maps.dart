void main() {
  final Map<String, dynamic> personas = {
    'nombre': 'Jose Trejillo',
    'edad': 23,
    'trabajo': 'Desarrollador',
    'habilidades': ['Dart', 'Flutter', 'Firebase'],
    'redes_sociales': {'GitHub': 'https://github.com/Trejillo-Joe/'}
  };

  print(personas);
  print('Nombre: ${personas['nombre']} y tiene ${personas['edad']} años');
  print('Trabajo: ${personas['trabajo']}');
  print('Mis habilidades son : ${personas['habilidades'].join(', ')}');
  print('pero las que mas me gustan son: ${personas['habilidades'][0]} y ${personas['habilidades'][1]}');