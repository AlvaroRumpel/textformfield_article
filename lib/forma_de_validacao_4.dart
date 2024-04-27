import 'package:flutter/material.dart';
import 'package:textformfield_article/validation/validation.dart';

class FormaDeValidacao4 extends StatefulWidget {
  const FormaDeValidacao4({super.key});

  @override
  State<FormaDeValidacao4> createState() => _FormaDeValidacao4State();
}

class _FormaDeValidacao4State extends State<FormaDeValidacao4> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forma 4'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                validator: Required().validate,
              ),
              TextFormField(
                validator: [Required(), NoSpaces()].validate,
              ),
              ElevatedButton(
                onPressed: handleSubmit,
                child: const Text('Salvar'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void handleSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      print('Sucesso');

      return;
    }

    print('Falha');
  }
}
