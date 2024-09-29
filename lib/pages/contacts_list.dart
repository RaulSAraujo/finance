import 'package:finance/models/contato.dart';
import 'package:finance/pages/contacts_form.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  final List<Contato> _contacts = [];

  ListaContatos({super.key});

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contatos'),
      ),
      body: ListView.builder(
        itemCount: widget._contacts.length,
        itemBuilder: (context, index) {
          final contato = widget._contacts[index];

          return Card(
            color: Colors.white,
            child: ListTile(
              title: Text('Nome: ${contato.name}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Endereço: ${contato.andress}'),
                  Text('Telefone: ${contato.telephone}'),
                  Text('Email: ${contato.email}'),
                  Text('CPF ${contato.cpf}')
                ],
              ),
              leading: const CircleAvatar(
                child: Icon(
                  Icons.person,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Contato?> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const FormularioContatos();
          }));

          future.then((contatoRecebida) {
            setState(() {
              widget._contacts.add(contatoRecebida!);
            });
          });
        },
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
