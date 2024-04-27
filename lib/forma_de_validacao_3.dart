import 'package:flutter/material.dart';

class FormaDeValidacao3 extends StatefulWidget {
  const FormaDeValidacao3({super.key});

  @override
  State<FormaDeValidacao3> createState() => _FormaDeValidacao3State();
}

class _FormaDeValidacao3State extends State<FormaDeValidacao3> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forma 3'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                validator: (value) => validateRequired(value),
              ),
              TextFormField(
                validator: (value) => validateRequiredAndNoSpaces(value),
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

  String? validateRequired(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo Obrigatório!';
    }

    return null;
  }

  String? validateRequiredAndNoSpaces(String? value) {
    final requiredFieldValidation = validateRequired(value);

    if (requiredFieldValidation != null) {
      return requiredFieldValidation;
    }

    if (value!.contains(' ')) {
      return 'Não pode conter espaços!';
    }

    return null;
  }

  void handleSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      print('Sucesso');

      return;
    }

    print('Falha');
  }
}
