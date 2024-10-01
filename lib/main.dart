import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: const HomePage(),
    );
  }
}
