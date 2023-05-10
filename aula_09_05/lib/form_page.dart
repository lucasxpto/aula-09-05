import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController _controladorNome = TextEditingController();
  TextEditingController _controladorCPF = TextEditingController();

  void validarDados() {
    if (_controladorNome.text.isNotEmpty && _controladorCPF.text.isNotEmpty) {
      print('${_controladorNome.text} - ${_controladorCPF.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    // final largura = MediaQuery.of(context).size.width;
    // final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(32, 30, 31, 10),
            child: TextField(
              controller: _controladorNome,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(32, 15, 31, 10),
            child: TextField(
              controller: _controladorCPF,
              decoration: InputDecoration(
                labelText: 'CPF',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(32, 15, 31, 10),
            child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: validarDados,
                child: Text('Enviar Cadastro'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
