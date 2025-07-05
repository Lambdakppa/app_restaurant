import 'package:flutter/material.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final primary = Theme.of(context).colorScheme.primary;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/images/Logo_Apprestaurant.png',
                  height: 160,
                  fit: BoxFit.contain,
                  color: primary, // Aplica color morado al logo si es SVG o PNG monocromo
                ),
                const SizedBox(height: 32),
                // Título
                const Text(
                  'PUNTO CLASICO,\nRestaurante y Deliverys.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                // Botones
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Botón Sign in
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login',  arguments: 'login');
                      },
                      child: const Text('Sign in'),
                    ),
                    const SizedBox(width: 16),
                    // Botón Register
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB388FF),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login', arguments: 'register');
                      },
                      child: const Text('Register'),
                    ),
                  ],
                ),
                const Spacer(),
                // Versión y créditos
                const Text(
                  'v1.0 - App UTEM\nDesarrollado por Sebastian Poblete, Esteban Sobarzo',
                  style: TextStyle(
                    color: Color(0xFF64B5F6),
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}