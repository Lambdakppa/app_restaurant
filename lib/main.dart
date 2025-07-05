import 'package:flutter/material.dart';
import 'routes/app_routes.dart';


const fondoColor = Color(0xFF222222); // Fondo oscuro
const colorPrincipal = Color(0xFF7C3AED); // Morado claro para botones

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurante Cliente',
      theme: ThemeData(

        scaffoldBackgroundColor: fondoColor,
        primaryColor: colorPrincipal,

        //estableciendo esquema de colores
        colorScheme: ColorScheme.fromSeed(
          seedColor: colorPrincipal,
          brightness:  Brightness.dark, // si se usa fondo oscuro
        ),

        //estableciendo color de botones
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorPrincipal,
            foregroundColor: Colors.white,
          ),
        ),

        //estableciendo color del texto
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
        ),

        primarySwatch: Colors.deepOrange,
        useMaterial3: true,

        appBarTheme: const AppBarTheme(
          backgroundColor: colorPrincipal,
        )

      ),
      initialRoute: '/menu',
      routes: AppRoutes.routes,
    );
  }
}