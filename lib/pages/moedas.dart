import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cripto Moedas')),
      backgroundColor: Color.fromRGBO(200, 212, 131, 1),
      body: Center(child: Text("data")),
    );
  }
}
