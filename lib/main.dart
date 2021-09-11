import 'package:flutter/material.dart';
import 'layout_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(elevation: 20, unselectedItemColor: Colors.grey),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: false,
          ),
          scaffoldBackgroundColor: Colors.white),
      home: LayoutScreen(),
    );
  }
}
