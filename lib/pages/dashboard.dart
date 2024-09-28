import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2, // Define 2 colunas
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: <Widget>[
            // Botão de Contatos
            GestureDetector(
              onTap: () {
                // Ação para abrir a tela de Contatos
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.contacts, size: 50, color: Colors.white),
                    SizedBox(height: 10),
                    Text(
                      'Contatos',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            // Botão de Transferências
            GestureDetector(
              onTap: () {
                // Ação para abrir a tela de Transferências
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.monetization_on, size: 50, color: Colors.white),
                    SizedBox(height: 10),
                    Text(
                      'Transferências',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
