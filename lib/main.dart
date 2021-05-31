import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body:
      DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            centerTitle: true,
            title: Text('Mãos Dadas'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              tabs: [
                Tab(text: 'Conhecendo a Doença'),
                Tab(text: 'Tratamento Farmacológico'),
                Tab(text: 'Tratamento não Farmacológico'),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            SingleChildScrollView(
            child: Column(
              children: [
                Card(
                 child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                  Text('A insuficiência cardíaca significa:', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('Que a força de bombeamento e de relaxamento '
                          'do coração estão alterados.', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                   ],
                 ),
                ),
                Image(image: AssetImage('images/coracao.gif')),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Como  exemplo temos:', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('O ataque cardíaco enfraquece  uma das paredes '
                            'do coração e para compensar essa falha as outras  paredes '
                            'passam a se esforçar mais  e com o tempo provocam uma sobrecarga.'
                            'Hipertensão arterial não tratada que fazem com que a parede do '
                            'coração fiquem mais espessas, assim  o espaço para o sangue diminui '
                            'e este passa a bombear menos', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),
          ),
            Text('Em Construção'),
            Text('Em Construção'),
          ],
          ),
        ),
      ),
  ),
));

