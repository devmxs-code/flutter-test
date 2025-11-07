import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/':(context) => const PrimeiraTela(), 
        '/segunda': (context) => const SegundaTela(),
        '/terceira': (context) => const TerceiraTela(), 
        '/quarta': (context) => const QuartaTela(),
        '/quinta': (context) => const QuintaTela(), 
      }
    ),
  );
}

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Primeira Tela'),
      ),
      backgroundColor: Colors.blue[900],
      body: Center(
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        ),
        onPressed: () {
            Navigator.pushNamed(context, '/segunda');
            
          },
          child: const Text('Segunda Tela'),
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  const SegundaTela ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black12,
      title: const Text('Segunda Tela'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
          primary: Colors.grey,
          ),
          onPressed: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/terceira');
           
          },
          child: const Text('Terceira Tela'),
        ),
      ),
    );
  }
}

class TerceiraTela extends StatelessWidget {
  const TerceiraTela ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black12,
      title: const Text('Terceira Tela'),
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        primary: Colors.grey,
          ),
          onPressed: () {
           Navigator.pop(context);
           Navigator.pushNamed(context, '/quarta');
          
          },
          child: const Text('Quarta Tela'),
        ),
      ),
    );
  }
}

class QuartaTela extends StatelessWidget {
  const QuartaTela({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Quarta Tela'),
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        ),
          onPressed: () {
          
           Navigator.pop(context);
           Navigator.pushNamed(context, '/quinta');
           
          },
          child: const Text('Quinta Tela'),
        ),
      ),
    );
  }
}

class QuintaTela extends StatelessWidget {
  const QuintaTela ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Quinta Tela'),
      ),
      backgroundColor: Colors.red,
      body: Center(
        
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        ),
          onPressed: () {
           Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
          },
          child: const Text('Primeira Tela'),
        ),
      ),
    );
  }
}