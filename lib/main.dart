import 'package:flutter/material.dart';
import 'package:untitled/content/strings.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
      ),
      home: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 90.0,
              centerTitle: true,
              title: Text(tituloappbar),
              bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.red.shade900,
                ),
                isScrollable: true,
                tabs: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 2.0, top: 1.0, right: 2.0),
                    child: Tab(text: titulotab1),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 2.0, top: 1.0, right: 2.0),
                    child: Tab(text: titulotab2),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 2.0, top: 1.0, right: 2.0),
                    child: Tab(text: titulotab3),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        elevation: 0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    new TextSpan(text: 'A '),
                                    new TextSpan(
                                        text: 'insuficiência cardiaca',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    new TextSpan(
                                        text:
                                            ' significa que a força de bombeamento e de relaxamento '
                                            'do coração estão alterados.')
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Image(
                          image: ResizeImage(AssetImage('images/coracao.gif'),
                              width: 5, height: 2)),
                      Card(
                        elevation: 0,
                        child: Column(
//                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('Como  exemplo temos:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                textAlign: TextAlign.left),
                            Text(
                                'O ataque cardíaco enfraquece  uma das paredes '
                                'do coração e para compensar essa falha as outras  paredes '
                                'passam a se esforçar mais  e com o tempo provocam uma sobrecarga.',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.justify),
                            Text(
                                'Hipertensão arterial não tratada que fazem com que a parede do '
                                'coração fiquem mais espessas, assim  o espaço para o sangue diminui '
                                'e este passa a bombear menos',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.justify),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Com o tempo...',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.left),
                            ),
                            Text('CORAÇÃO',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red),
                                textAlign: TextAlign.center),
                            Image(
                                image: ResizeImage(
                                    AssetImage('images/setaprabaixo.png'),
                                    width: 70,
                                    height: 70)),
                            Text('Perde a capacidade de tornar-se espesso',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red),
                                textAlign: TextAlign.center),
                            Image(
                                image: ResizeImage(
                                    AssetImage('images/setaprabaixo.png'),
                                    width: 70,
                                    height: 70)),
                            Text('Aumenta de tamanho',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red),
                                textAlign: TextAlign.center),
                            Image(
                                image: ResizeImage(
                                    AssetImage('images/setaprabaixo.png'),
                                    width: 70,
                                    height: 70)),
                            Text('Menor capacidade de bombeamento',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: Column(
                          children: [
                            Text('INSIFICIÊNCIA CARDÍACA ESQUERDA',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center),
                            Text(
                                'Após passar pelos órgãos, o sangue, com menos oxigênio, percorre para o coração direito, em seguida, é levado ao pulmão para ser oxigenado, retorna ao coração esquerdo e vai novamente para os tecidos e órgãos.',
                                style: const TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify),
                            Image(
                                image: ResizeImage(
                                    AssetImage('images/lados.jpg'),
                                    width: 250,
                                    height: 250)),
                            Text(
                                'Pacientes com Insuficiência cardíaca esquerda o sangue tem dificuldade de retornar ao coração vindo do pulmão gerando Congestão Pulmonar.',
                                style: const TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify),
                            Text(
                                'A congestão pulmonar piora quando deitado pois o sangue que está nas pernas não sofre ação da gravidade e o ventrículo que não bombeia adequadamente mais sangue se retém no pulmão.',
                                style: const TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify),
                            Image(
                                image: ResizeImage(
                                    AssetImage('images/decubito.jpeg'),
                                    width: 250,
                                    height: 250)),
                            Text(
                                'Obriga a paciente dormir com a cabeceira elevada.',
                                style: const TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify),
                            Text(
                                'Com menor fluxo de sangue nos órgãos, os rins entendem como uma queda do volume sanguíneo e passam a reter líquido e sal, na tentativa de manter os vasos cheios, causando edema e inchaço.',
                                style: const TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify),
                            Image(
                                image: ResizeImage(
                                    AssetImage('images/edema.jpg'),
                                    width: 250,
                                    height: 250)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        elevation: 0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    new TextSpan(
                                        text:
                                            'O tratamento farmacológico é determinado pelo médico e deve ser seguido corretamente. \nAs medicações estão indicadas em:\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    new TextSpan(
                                        text:
                                            '• Melhora da força de contração cardíaca.\n'),
                                    new TextSpan(
                                        text:
                                            '• Diminuir  o volume sanguíneo circulante para facilitar o trabalho cardíaco.\n'),
                                    new TextSpan(
                                        text:
                                            '• Diminuir o consumo de oxigênio do coração.\n'),
                                    new TextSpan(
                                        text:
                                            '• Diminuir o trabalho cardíaco.\n'),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Image(
                          image: ResizeImage(
                              AssetImage('images/coracaoforte.jpg'),
                              width: 200,
                              height: 180)),
                      Card(
                        elevation: 0,
                        child: Column(
//                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                                'Para que o médico realize de modo adequado o manejo das medicações e controle a doença você deve :',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                textAlign: TextAlign.left),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    new TextSpan(
                                        text:
                                            '• Comparecer a consulta médica regular.\n'),
                                    new TextSpan(
                                        text:
                                            '• Realizar os exames solicitados.\n'),
                                    new TextSpan(
                                        text:
                                            '• Informar sobe adesão ao tratamento farmacológico e não farmacológico.\n'),
                                    new TextSpan(
                                        text:
                                            '• Informar sobre os Sinais e sintomas apresentados.\n'),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        elevation: 0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    new TextSpan(
                                        text:
                                            'Adesão a esses cuidados é essencial para junto ao tratamento medicamentoso permitir o controle da doença e a sua qualidade de vida.\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Image(
                          image: ResizeImage(
                              AssetImage('images/esfigmocoracao.jpg'),
                              width: 200,
                              height: 180)),
                      Card(
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '• Controle de peso',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Recomenda-se controle do peso frequente.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Aumentos de 2 quilogramas em três dias devem ser comunicados ao médico.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Como a quantidade de sangue bombeada pelo coração ao corpo é reduzida, os rins acabam entendendo que o organismo não tem sangue suficiente e acabam retenção de líquidos.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Esta retenção de líquido gera o edema  no pulmão, na periferia  e demais órgãos.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image(
                                      image: ResizeImage(
                                    AssetImage('images/pulmao.jpg'),
                                    width: 200,
                                    height: 180,
                                  )),
                                  Expanded(
                                    child: Text(
                                      'Líquidos acumulados no pulmão reduzem a capacidade dos pulmões obterem oxigênio causando falta de ar e tosse.',
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                   Expanded(
                                    child: Text(
                                      'O sangue também se acumula nos membros inferiores, causando inchaço dos tornozelos e pernas.',
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Image(
                                      image: ResizeImage(
                                        AssetImage('images/pes.jpg'),
                                        width: 200,
                                        height: 180,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
