import 'package:finance/models/contato.dart';
import 'package:finance/widget/Editor.dart';
import 'package:flutter/material.dart';

class FormularioContatos extends StatelessWidget {
  const FormularioContatos({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controllerName = TextEditingController();
    final TextEditingController _controllerAndress = TextEditingController();
    final TextEditingController _controllerTelephone = TextEditingController();
    final TextEditingController _controllerEmail = TextEditingController();
    final TextEditingController _controllerCpf = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Clientes'),
      ),
      body: Column(
        children: [
          Editor(
            controlador: _controllerName,
            rotulo: 'Nome',
          ),
          Editor(
            controlador: _controllerAndress,
            rotulo: 'Endereço',
          ),
          Editor(
            controlador: _controllerTelephone,
            rotulo: 'Telefone',
          ),
          Editor(
            controlador: _controllerEmail,
            rotulo: 'E-mail',
          ),
          Editor(
            controlador: _controllerCpf,
            rotulo: 'CPF',
          ),
          ElevatedButton(
            onPressed: () {
              _criarContato(
                context,
                _controllerName,
                _controllerAndress,
                _controllerTelephone,
                _controllerEmail,
                _controllerCpf,
              );
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.purple),
            ),
            child: const Text(
              'Confirmar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}

void _criarContato(BuildContext context, name, andress, telephone, email, cpf) {
  if (name.text != null &&
      andress.text != null &&
      telephone.text != null &&
      email.text != null &&
      cpf.text != null) {
    final contatoCriado =
        Contato(name.text, andress.text, telephone.text, email.text, cpf.text);

    Navigator.pop(context, contatoCriado);
  }
}
