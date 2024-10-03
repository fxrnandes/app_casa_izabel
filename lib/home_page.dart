import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA0248D),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA0248D),
        elevation: 0, 
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
        borderRadius: BorderRadius.zero, // Define bordas retas
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
            const ListTile(
              title: Text(
                'Conheça a Casa Izabel', 
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Image.asset(
              'assets/images/logo.png', 
              width: 300,
              height: 200,
            ),
            const Spacer(),
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFF2FF),
                  foregroundColor: const Color(0xFF9C258B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  textStyle: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                child: const Text('Entenda sobre violência'),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
