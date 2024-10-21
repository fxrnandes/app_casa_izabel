import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/izabel.dart'; // Importando a tela izabel.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Casa Izabel',
      theme: ThemeData(
        textTheme: GoogleFonts.lexendTextTheme(),
        useMaterial3: true,
      ),
      initialRoute: '/', // Define a rota inicial
      routes: {
        '/': (context) => const HomePage(), // Rota para HomePage
        '/izabel': (context) => const IzabelScreen(), // Rota para a IzabelScreen
      },
    );
  }
}
