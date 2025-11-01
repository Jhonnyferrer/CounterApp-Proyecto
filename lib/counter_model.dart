class CounterModel {
  int counter = 0; // contador interno

  // Método para obtener el valor actual del contador
  int get count {
    return counter;
  }

  // Sumar 1 al contador
  void increment() {
    counter += 1;
  }

  // Restar 1 al contador
  void decrement() {
    if (counter > 0) {
      counter -= 1;
    }
  }

  // Resetear contador a 0
  void reset() {
    counter = 0;
  }

  // Multiplicar contador por 2
  void multiply() {
    counter *= 2;
  }

  // Dividir contador entre 2 y redondear abajo
  void divide() {
    counter = (counter / 2).floor();
  }
}
