import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Storage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const StoragePage(),
    );
  }
}

class StoragePage extends StatefulWidget {
  const StoragePage({super.key});

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  final _textController = TextEditingController();
  String _savedText = 'Nenhum texto salvo';

  @override
  void initState() {
    super.initState();
    _carregarTexto();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  Future<void> _salvarTexto() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('texto_salvo', _textController.text);
    setState(() {
      _savedText = _textController.text;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Texto salvo com sucesso!')),
    );
  }

  Future<void> _carregarTexto() async {
    final prefs = await SharedPreferences.getInstance();
    final texto = prefs.getString('texto_salvo') ?? 'Nenhum texto salvo';
    setState(() {
      _savedText = texto;
      _textController.text = texto;
    });
  }

  Future<void> _limparTexto() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('texto_salvo');
    setState(() {
      _savedText = 'Nenhum texto salvo';
      _textController.clear();
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Texto removido!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Local Storage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Digite um texto',
                border: OutlineInputBorder(),
                hintText: 'Este texto será salvo localmente',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _salvarTexto,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _limparTexto,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.red,
              ),
              child: const Text('Limpar'),
            ),
            const SizedBox(height: 24),
            const Text(
              'Texto salvo:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                _savedText,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
