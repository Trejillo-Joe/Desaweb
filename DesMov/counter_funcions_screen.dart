//import 'package:application_1/main.dart';
import 'package:flutter/material.dart';


/// Pantalla principal del contador, permite incrementar, decrementar y reiniciar el valor.
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

/// Botón personalizado que recibe un ícono y una función al presionar.
class TrejoButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const TrejoButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Botón flotante con ícono
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  // Variable que almacena el valor actual del contador
  int clickCounter = 0;

  /// Reinicia el contador a cero
  void resetCounter() {
    setState(() {
      clickCounter = 0;
    });
  }

  /// Disminuye el contador en uno, solo si es mayor que cero
void decrementCounter() {
  setState(() {
    clickCounter = clickCounter > 0 ? clickCounter - 1 : 0;
  });
}

  /// Incrementa el contador en uno
  void incrementCounter() {
    setState(() {
      clickCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Trejo'),
        actions: [
          // Botón para reiniciar el contador desde la barra superior
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: resetCounter,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Muestra el valor actual del contador
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            // Muestra "Click" o "Clicks" según el valor del contador
            Text(
              clickCounter == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Botón para reiniciar el contador
          TrejoButton(icon: Icons.refresh, onPressed: resetCounter),
          const SizedBox(height: 10),
          // Botón para decrementar el contador
          TrejoButton(icon: Icons.remove, onPressed: decrementCounter),
          const SizedBox(height: 10),
          // Botón para incrementar el contador
          TrejoButton(icon: Icons.add, onPressed: incrementCounter),
        ],
      ),
    );
  }
}

