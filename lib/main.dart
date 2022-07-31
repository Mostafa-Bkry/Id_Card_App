import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.grey),
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
