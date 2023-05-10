import 'package:flutter/material.dart';

import 'form_page.dart';
import 'form_page_validator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _paginaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: IndexedStack(
        index: _paginaSelecionada,
        children: [
          FormPage(),
          FormaPageValidator(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaSelecionada,
        onTap: (int? novoValor) {
          setState(() {
            _paginaSelecionada = novoValor!;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Formulário sem Validação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Formulário com Validação',
          )
        ],
      ),
    );
  }
}
