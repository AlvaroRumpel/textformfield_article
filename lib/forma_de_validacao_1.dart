import 'package:flutter/material.dart';

class FormaDeValidacao1 extends StatefulWidget {
  const FormaDeValidacao1({super.key});

  @override
  State<FormaDeValidacao1> createState() => _FormaDeValidacao1State();
}

class _FormaDeValidacao1State extends State<FormaDeValidacao1> {
  final formKey = GlobalKey<FormState>();
  var _errorText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forma 1'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              onChanged: (text) {
                if (text.isEmpty) {
                  setState(() {
                    _errorText = 'Preencha o campo!';
                  });

                  return;
                }

                if (_errorText.isNotEmpty) {
                  setState(() {
                    _errorText = '';
                  });
                }
              },
            ),
            Text(
              _errorText,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Salvar'),
            )
          ],
        ),
      ),
    );
  }
}
