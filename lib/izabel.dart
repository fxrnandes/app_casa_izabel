import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IzabelScreen extends StatelessWidget {
  const IzabelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA0248D), 
      appBar: AppBar(
        backgroundColor: const Color(0xFFA0248D), 
        elevation: 0, 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFFFF2FF)), 
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Color(0xFFFFF2FF)), 
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0xFFFFF2FF),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: const Color(0xFFFFF2FF),
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Color(0xFFA0248D)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            const SizedBox(height: 80),
            ListTile(
              title: const Text(
                'Conheça a Casa Izabel',
                style: TextStyle(color: Color(0xFFA0248D)),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/izabel'); 
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                color: Color(0xFFA0248D),
                thickness: 1,
              ),
            ),
            const ListTile(
              title: Text(
                'Veja ONGs próximas',
                style: TextStyle(color: Color(0xFFA0248D)),
                textAlign: TextAlign.center,
              ),
              onTap: null, 
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                color: Color(0xFFA0248D),
                thickness: 1,
              ),
            ),
            const ListTile(
              title: Text(
                'Cadastre uma ONG',
                style: TextStyle(color: Color(0xFFA0248D)),
                textAlign: TextAlign.center,
              ),
              onTap: null, 
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                color: Color(0xFFA0248D),
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false), // Remove o efeito elástico
        child: SingleChildScrollView( // Adiciona rolagem
          padding: const EdgeInsets.all(20.0), // Definindo margens
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), 
              Image.asset(
                'assets/images/logo.png', 
                width: 300,
                height: 200,
              ),
              const SizedBox(height: 50),
              Text(
                'Quem somos?',
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFF2FF),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'A Casa Izabel é uma organização sem fins lucrativos que se dedica ao acolhimento, aconselhamento e apoio a mulheres vítimas de violência. A violência contra a mulher é uma questão grave e sistêmica, manifestando-se de diversas formas, como violência física, psicológica, sexual e financeira.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: const Color(0xFFFFF2FF),
                ),
              ),
              const SizedBox(height: 150),
              Text(
                'Juntos por uma causa maior',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFF2FF),
                ),
              ),
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/women_power.png', 
                width: 105,
                height: 150,
              ),
              const SizedBox(height: 60),
              Text(
                'Nos acompanhe pelas redes sociais',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFF2FF),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt, color: Color(0xFFFFF2FF)), // Ícone para Instagram
                  SizedBox(width: 8),
                  Text(
                    '@Casa_Izabel',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFFF2FF),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, color: Color(0xFFFFF2FF)), // Ícone para Facebook
                  SizedBox(width: 8),
                  Text(
                    'Casa Izabel',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFFF2FF),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Venha nos visitar',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFF2FF),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Jaraguá do Sul, SC\nRua sdaoaos dasdsa, 111\n(47) 99999-9999',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: const Color(0xFFFFF2FF),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
