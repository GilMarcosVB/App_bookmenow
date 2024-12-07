import 'package:flutter/material.dart';

class DetalhesServicosPage extends StatelessWidget {
  final Map<String, dynamic> servico;

// This para puxar o caminho especificio dentro da key
  const DetalhesServicosPage({super.key, required this.servico});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nome Serviço'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.network(
            servico['fotos'][0]['imagem'],
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Titulo do Servico',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Descrição do Serviço'),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'R\$ 20,00',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          const Divider(),
          Text('Endereço: ${servico['endereco']}'),
          Text('Bairro: ${servico['bairro']}'),
          Text('CEP: ${servico['cep']}'),
          Text('Telefone ${servico['telefone']}'),
          Text('Celular ${servico['celular']}'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Ação ao clicar no botão
                  print('Botão clicado!');
                },
                icon: Icon(Icons.phone),
                label: Text('Ligar'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'WhatsApp',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
