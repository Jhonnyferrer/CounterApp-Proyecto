import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage('assets/images/logo.jpg'),
            ),
            const SizedBox(height: 24),
            const Text(
              'Desarrollador:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            const Text(
              'Jhonny Ferrer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Correo:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            const Text(
              'jhonnyferrer2022@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Descripción:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            const Text(
              'App hecha en Flutter',
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.arrow_back),
        label: const Text('Regresar', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue,
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
