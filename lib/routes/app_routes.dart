import 'package:flutter/material.dart';
import '../screens/bienvenida/bienvenida_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/menu/menu_screen.dart';
/*import '../screens/detalle_producto/detalle_producto_screen.dart';
import '../screens/carrito/carrito_screen.dart';
import '../screens/modalidad_pedido/modalidad_pedido_screen.dart';
import '../screens/seguimiento_pedido/seguimiento_pedido_screen.dart';
import '../screens/historial/historial_screen.dart';
import '../screens/calificacion/calificacion_screen.dart';*/

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const BienvenidaScreen(),
    '/login': (context) => const LoginScreen(),
    '/menu': (context) => const MenuScreen(),
    
  };
}