import 'package:finance/pages/transfer_list.dart';
import 'package:flutter/material.dart';
import 'package:finance/pages/dashboard.dart';

void main() => runApp(const Banco());

class Banco extends StatelessWidget {
  const Banco({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (ctx) => const DashboardScreen(),
        '/listaTransferencia': (ctx) => ListaTransferencia()
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}
