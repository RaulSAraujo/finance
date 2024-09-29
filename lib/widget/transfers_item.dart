import 'package:flutter/material.dart';
import 'package:finance/models/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia(this._transferencia, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on, color: Colors.purple),
        title: Text(
            'R\$ ${_transferencia.valor.toStringAsFixed(2).replaceAll('.', ',')}'),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}
