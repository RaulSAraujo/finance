import 'package:finance/pages/transfer_form.dart';
import 'package:flutter/material.dart';
import 'package:finance/models/transferencia.dart';
import 'package:finance/widget/transfers_item.dart';

class ListaTransferencia extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  ListaTransferencia({super.key});

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //cololocar cor no texto Transferência
        title: const Text(
          "Transferência",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: widget._transferencias.length,
          itemBuilder: (context, indice) {
            final transferencia = widget._transferencias[indice];

            return ItemTransferencia(transferencia);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia?> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));

          future.then((transferenciaRecebida) {
            debugPrint('chegou no then do future');
            debugPrint('$transferenciaRecebida');
            setState(() {
              widget._transferencias.add(transferenciaRecebida!);
            });
          });
        },
        backgroundColor: Colors.purple,
        child: const Icon(
          Icons.add_circle_rounded,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
