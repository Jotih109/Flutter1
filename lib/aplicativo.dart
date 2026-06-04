import 'package:flutter/material.dart';
import './pages/moedas.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro App/Cripto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(141, 251, 255, 0),
        ),
      ),
      home: MoedasPage(),
    );
  }
}
