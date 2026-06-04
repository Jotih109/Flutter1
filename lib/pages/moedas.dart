import 'dart:math';

import 'package:flutter/material.dart';
import 'package:primeiro/repositories/moedarepo.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({Key? key}) : super(key: key);

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  Color color = Colors.blue;
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cripto Moedas'),
        backgroundColor: color,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                color =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              });
            },
            icon: const Icon(Icons.color_lens),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: tabela.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, moeda) {
          return ListTile(
            leading: Image.asset(tabela[moeda].icone, width: 40),
            title: Text(tabela[moeda].nome),
            trailing: Text(tabela[moeda].preco.toString()),
          );
        },
      ),
      bottomSheet: Container(
        height: 120,
        color: color.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              hintText: 'Filtrar lista...',
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
