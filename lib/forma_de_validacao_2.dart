import 'package:flutter/material.dart';

class FormaDeValidacao2 extends StatefulWidget {
  const FormaDeValidacao2({super.key});

  @override
  State<FormaDeValidacao2> createState() => _FormaDeValidacao2State();
}

class _FormaDeValidacao2State extends State<FormaDeValidacao2> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forma 2'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo Obrigatório!';
                  }

                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    print('Sucesso');

                    return;
                  }

                  print('Falha');
                },
                child: const Text('Salvar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
