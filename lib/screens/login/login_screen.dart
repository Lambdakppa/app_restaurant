import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  bool _obscurePassword2 = true;
 
  // Función para Google Sign-In
  Future<void> _handleGoogleSignIn() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      await googleSignIn.signIn();
      // Aquí puedes manejar el éxito del inicio de sesión
    } catch (error) {
      // Manejo de errores
      print('Error al iniciar sesión con Google: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Recibe el argumento para saber si es login o registro
    final args = ModalRoute.of(context)?.settings.arguments as String? ?? 'login';
    final isLogin = args == 'login';

    const fondoColor = Color(0xFF44474A); // Gris medio oscuro
    const colorPrincipal = Color(0xFFB388FF);

    return Scaffold(
      backgroundColor: fondoColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Mensaje de bienvenida
                Text(
                  isLogin
                      ? 'Bienvenido, por favor ingresa...'
                      : 'Bienvenido, por favor ingresa...',
                  style: const TextStyle(
                    color: colorPrincipal,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  isLogin
                      ? 'Accede con tu cuenta de Google y comienza a disfrutar'
                      : '“Regístrate para ordenar fácil y rápido”',
                  style: const TextStyle(
                    color: colorPrincipal,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                // Formulario
                if (isLogin)
                  Column(
                    children: [
                      // Email
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Contraseña
                      TextField(
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility_off : Icons.visibility,
                              color: fondoColor,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '¿Olvidaste tu contraseña?',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      // Botón iniciar sesión
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorPrincipal,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          onPressed: () {
                            // Aquí conectarás con backend
                          },
                          child: const Text(
                            'Iniciar sesión',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Divider(color: Colors.white54),
                      const SizedBox(height: 6),
                      const Text(
                        'Iniciar sesión con',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildSocialButton('assets/icons/facebook-icon.png', () {}),
                          const SizedBox(width: 18),
                          _buildSocialButton('assets/icons/google-icon.png', _handleGoogleSignIn),
                          const SizedBox(width: 18),
                          _buildSocialButton('assets/icons/mac-icon.png', () {}),
                        ],
                      ),
                    ],
                  )
                else
                  Column(
                    children: [
                      // Nombre completo
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Nombre completo',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        ),
                      ),
                      const SizedBox(height: 14),
                      // Email
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        ),
                      ),
                      const SizedBox(height: 14),
                      // Contraseña
                      TextField(
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility_off : Icons.visibility,
                              color: fondoColor,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      // Repetir contraseña
                      TextField(
                        obscureText: _obscurePassword2,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Repetir contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword2 ? Icons.visibility_off : Icons.visibility,
                              color: fondoColor,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword2 = !_obscurePassword2;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      // Botón registrar
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorPrincipal,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          onPressed: () {
                            // Aquí conectarás con backend
                          },
                          child: const Text(
                            'Registrar',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Divider(color: Colors.white54),
                      const SizedBox(height: 6),
                      const Text(
                        'Registrarse con',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildSocialButton('assets/icons/facebook-icon.png', () {}),
                          const SizedBox(width: 18),
                          _buildSocialButton('assets/icons/google-icon.png', _handleGoogleSignIn),
                          const SizedBox(width: 18),
                          _buildSocialButton('assets/icons/mac-icon.png', () {}),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String asset, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(asset, width: 48, height: 48),
    );
  }
}