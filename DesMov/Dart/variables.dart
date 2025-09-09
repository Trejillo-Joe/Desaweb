void main() {
  // Variables
  var name = 'John';
  String email = 'john@example.com';
  int age = 30;
  double height = 5.9;
  bool isStudent = false;

  // Printing variables
  print('Name: $name');
  print('Email: $email');
  print('Age: $age');
  print('Height: $height');
  print('Is Student: $isStudent');
}

void main(){
  String name = 'Jose Trejo';
  int age = 25;
  print('la persona se llama ${name.toUpperCase()} y tiene $age años.');
  bool works = true;
  print('¿Trabaja? ${works ? "Sí" : "No"}');
  List<String> habilidades = ['Flutter', 'Dart', 'JavaScript'];
  print('Habilidades de la persona: ${habilidades.join(", ")}');
  final redes_sociales = <String> ['Facebook', 'X', 'Instagram'];
  print('Redes sociales de la persona: ${redes_sociales.join(", ")}');
  redes_sociales.add('LinkedIn');
  print('Después de agregar LinkedIn: ${redes_sociales.join(", ")}');
  
}