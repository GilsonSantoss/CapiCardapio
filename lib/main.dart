import 'package:flutter/material.dart';

// SplashScreen
import 'package:CapiCardapio/View/splash_page.dart';

// Pages
import 'package:CapiCardapio/View/AboutPage/AboutPage.dart';
import 'package:CapiCardapio/View/AdminPage/AdminPage.dart';
import 'package:CapiCardapio/View/FavoritePage/FavoritePage.dart';
import 'package:CapiCardapio/View/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twins Bar & Restaurante',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(173, 40, 49, 1),
      ),
      initialRoute: '/splash_screen',
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/home_page': (BuildContext context) => HomePage(title: 'Twins Bar & Restaurante'),
        '/favorite_page': (BuildContext context) => FavoritePage(title: 'Pratos Favoritos'),
        '/about_page': (BuildContext context) => AboutPage(title: 'Twins Bar & Restaurante'),
        '/admin_page': (BuildContext context) => AdminPage(title: 'Admin')
      },
    );
  }
}
