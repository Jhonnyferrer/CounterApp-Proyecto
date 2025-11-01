import 'package:flutter/material.dart';
import 'counter_model.dart';
import 'info_screen.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ContadorApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      routes: {'/info': (context) => const InfoScreen()},
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterModel counterModel = CounterModel();

  void increment() {
    setState(() => counterModel.increment());
  }

  void decrement() {
    setState(() => counterModel.decrement());
  }

  void reset() {
    setState(() => counterModel.reset());
  }

  void multiply() {
    setState(() => counterModel.multiply());
  }

  void divide() {
    setState(() => counterModel.divide());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContadorApp', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: Container(color: Colors.lightBlueAccent, height: 4),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Info',
            onPressed: () => Navigator.pushNamed(context, '/info'),
          ),
        ],
      ),
      body: Center(
        child: Text(
          '${counterModel.count}',
          style: const TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            tooltip: 'Sumar +1',
            onPressed: increment,
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'decrement',
            tooltip: 'Restar -1',
            onPressed: decrement,
            backgroundColor: Colors.red,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'multiplicar',
            tooltip: 'Multiplicar x2',
            onPressed: multiply,
            backgroundColor: Colors.blue,
            child: const Icon(Icons.clear),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'dividir',
            tooltip: 'Dividir entre 2',
            onPressed: divide,
            backgroundColor: Colors.orange,
            child: const Icon(Icons.horizontal_split),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'reset',
            tooltip: 'Resetear',
            onPressed: reset,
            backgroundColor: Colors.grey,
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
