import 'package:finance/widget/transfers_item.dart';
import 'package:flutter/material.dart';
import 'package:finance/widget/Editor.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controllerCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controllerCampoValor = TextEditingController();

  FormularioTransferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //cololocar cor no texto Transferência
        title: const Text(
          "Nova Transferência",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Editor(
              controlador: _controllerCampoNumeroConta,
              rotulo: 'Numero da conta',
              dica: '0000'),
          Editor(
              controlador: _controllerCampoValor,
              rotulo: 'Valor',
              dica: '0.00',
              icone: Icons.monetization_on),
          ElevatedButton(
            onPressed: () {
              _criarTransferencia(
                context,
                _controllerCampoNumeroConta,
                _controllerCampoValor,
              );
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.blue),
            ),
            child: const Text(
              'Confirmar',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  void _criarTransferencia(
      BuildContext context, controllerCampoNumeroConta, controllerCampoValor) {
    debugPrint("Clicou em confirmar");
    final int? numeroConta = int.tryParse(controllerCampoNumeroConta.text);
    final double? valor = double.tryParse(controllerCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('Criando transferência');
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
