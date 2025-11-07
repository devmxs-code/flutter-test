import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Customizados',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// Widget customizado reutilizável
class CardCustomizado extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final IconData icone;
  final VoidCallback? onTap;

  const CardCustomizado({
    super.key,
    required this.titulo,
    required this.subtitulo,
    required this.icone,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(icone, size: 40, color: Colors.teal),
        title: Text(
          titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitulo),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Widgets Customizados'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CardCustomizado(
            titulo: 'Card 1',
            subtitulo: 'Este é um widget customizado reutilizável',
            icone: Icons.star,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Card 1 clicado!')),
              );
            },
          ),
          CardCustomizado(
            titulo: 'Card 2',
            subtitulo: 'Pode ser usado em qualquer lugar do app',
            icone: Icons.favorite,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Card 2 clicado!')),
              );
            },
          ),
          CardCustomizado(
            titulo: 'Card 3',
            subtitulo: 'Facilita a manutenção do código',
            icone: Icons.settings,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Card 3 clicado!')),
              );
            },
          ),
        ],
      ),
    );
  }
}
