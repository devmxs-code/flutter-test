import 'package:flutter/material.dart'; 
import '/Primeira.dart';
import '/Segunda.dart';
import '/Terceira.dart';
import '/Quarta.dart';
import '/Quinta.dart';

void main() {
  runApp(MaterialApp(
    //tirar banner superior direito
   debugShowCheckedModeBanner: false,
    
    // A rota que o app vai carregar ao iniciar
    initialRoute: '/',
    routes: {
      //chama inicio
      '/': (context) => const Primeira(), 

      //chamar segunda pagina
      '/segunda': (context) => const Segunda(), 

      //chamar terceira pagina
      '/terceira': (context) => const Terceira(),

      //chamar quarta pagina
      '/quarta': (context) => const Quarta(),

      //chamar quinta pagina 
      '/quinta': (context) => const Quinta(),
     }, 
  ));
}
 


