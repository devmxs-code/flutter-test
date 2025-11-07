import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testando',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('AppBar',
              style: TextStyle(color: Colors.purple, fontSize: 30)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.blue, Colors.blue]
                    //colors: <Color>[Colors.red, Colors.blue, Colors.yellow, Colors.green, Colors.purple, Colors.pink]
                    )),
          ),
        ),
        //leading: GestureDetector(
        //onTap: () {},
        //child: Icon(
        //Icons.account_box,
        //),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: const [Colors.orange, Colors.orange],
                    //colors: const [Colors.purple, Colors.blue, Colors.black, Colors.pink, Colors.orange, Colors.green, Colors.brown, Colors.grey, ],
                  ),
                ),
                child: Container(
                    child: Text('Drawer',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.brown, fontSize: 30))),
              ),
              ListTile(
                //efeito de toque
                //onTap: () {},
                onLongPress: () {},
                title: Text(
                  'Menu 1',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                subtitle: Text(
                  'Subtitulo',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                //efeito de toque
                //onTap: () {},
                onLongPress: () {},
                title: Text(
                  'Menu 2',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                subtitle: Text(
                  'Subtitulo',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                //efeito de toque
                //onTap: () {},
                onLongPress: () {},
                title: Text(
                  'Menu 3',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                subtitle: Text(
                  'Subtitulo',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                //efeito de toque
                //onTap: () {},
                onLongPress: () {},
                title: Text(
                  'Menu 4',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                subtitle: Text(
                  'Subtitulo',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                //efeito de toque
                //onTap: () {},
                onLongPress: () {},
                title: Text(
                  'Menu 5',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                subtitle: Text(
                  'Subtitulo',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                //efeito de toque
                //onTap: () {},
                onLongPress: () {},
                title: Text(
                  'Menu 6',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                subtitle: Text(
                  'Subtitulo',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                //efeito de toque
                //onTap: () {},
                onLongPress: () {},
                title: Text(
                  'Menu 7',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                subtitle: Text(
                  'Subtitulo',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                //efeito de toque
                //onTap: () {},
                onLongPress: () {},
                title: Text(
                  'Menu 8',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                subtitle: Text(
                  'Subtitulo',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Icon(
                  Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        body: Column(children: [
          Divider(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 90,
                  width: 170,
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'centralizado branco',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  width: 180,
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' a esquerda, amarelo',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ]),
          Divider(
            height: 70,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 170,
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'a direita, verde ',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 180,
                  color: Colors.orange,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      ' embaixo, vermelho',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ]),
          //Text(
          //'Suspeitos',
          //style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          //),
          //Text('Investigados',
          //  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))

          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Image.asset('assets/imagens/img02.jpg', width: 170),
              //Image.asset('assets/imagens/img02.jpg', width: 170),
            ],
          ),
        ]),
      ),
    );
  }
}
