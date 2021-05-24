import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body:
      DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Mãos Dadas'),
            bottom: TabBar(
              indicatorColor: Colors.greenAccent,
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
          Column(
            children: [
              Card(
               child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('A suficiência cardíaca significa:'),
                    subtitle: Text('Que a força de bombeamento e de relaxamento '
                        'do coração estão alterados.Colocar um coração contraindo'
                        ' e relaxando normal e após um coração  alterado'),
                  ),
                ],
               ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text('Como  exemplo temos:'),
                      subtitle: Text('O ataque cardíaco enfraquece  uma das paredes '
                          'do coração e para compensar essa falha as outras  paredes '
                          'passam a se esforçar mais  e com o tempo provocam uma sobrecarga.'
                          'Hipertensão arterial não tratada que fazem com que a parede do '
                          'coração fiquem mais espessas, assim  o espaço para o sangue diminui '
                          'e este passa a bombear menos'),

                    ),
                  ],
                ),
              ),
            ],
          ),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
          ),
        ),
      ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
    ),
  ),
));

