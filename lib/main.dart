import 'package:flutter/material.dart';
import 'package:login/routes/app_routes.dart';
import 'package:login/services/auth_service.dart';
import 'package:login/services/categoria_service.dart';
import 'package:login/services/product_service.dart';
import 'package:login/services/proveedores_service.dart';
import 'package:login/theme/my_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => ProductService()),
        ChangeNotifierProvider(create: (_) => CategoriaService()),
        ChangeNotifierProvider(create: (_) => ProveedorService()),
      ],
      child: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: MyTheme.myTheme,
    );
  }
}
