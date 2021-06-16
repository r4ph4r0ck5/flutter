import 'package:flutter/cupertino.dart';
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image(
                                      image: ResizeImage(
                                    AssetImage('images/figado.jpg'),
                                    width: 200,
                                    height: 300,
                                  )),
                                  Expanded(
                                    child: Text(
                                      'Pode causar acumulação também no fígado e órgãos digestivos causando a perda de apetite.',
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '• Prática de atividades físicas',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Image(
                                image: ResizeImage(
                              AssetImage('images/exercicio1.jpg'),
                              width: 500,
                              height: 300,
                            )),
                            Text(
                              'Prática de exercícios físicos melhoram o condicionamento físico e a capacidade para realizar as atividades do dia a dia:',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Melhora do controle da doença;',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Redução da pressão arterial;',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Melhora da função respiratória, pois fortalece a musculatura respiratória (aumento do oxigênio);',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Melhora a capacidade funcional e o bem estar;',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Melhora a força, função e resistência dos músculos do coração;',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Image(
                                alignment: Alignment.center,
                                image: ResizeImage(
                                  AssetImage('images/exercicio2.jpg'),
                                  width: 500,
                                  height: 500,
                                )),
                            Text(
                              'Pergunte ao médico quais os exercícios que você deve realizar e planeje suas atividades',
                              style: TextStyle(fontSize: 20, color: Colors.red),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Card(
                          elevation: 0,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  '• Controle da pressão arterial',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.left,
                                ),
                                Image(
                                    alignment: Alignment.center,
                                    image: ResizeImage(
                                      AssetImage('images/controlepressao.jpg'),
                                      width: 500,
                                      height: 500,
                                    )),
                                Text(
                                  'A pressão arterial elevada sobrecarrega o músculo cardíaco e deixando-o cada vez mais fraco.\nO Aumento da Pressão arterial é a causa de descompensação e da Insuficiência.',
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'REALIZE CONTROLE DE SUA PRESSÃO ARTERIAL DIARIAMENTE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'FAÇA REGISTRO PARA LEVAR NA CONSULTA MÉDICA.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.left,
                                ),
                                Image(
                                    alignment: Alignment.center,
                                    image: ResizeImage(
                                      AssetImage('images/esfigmocoracao.jpg'),
                                      width: 500,
                                      height: 500,
                                    )),
                              ])),
                      Card(
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '• Interrupção do consumo de álcool e cigarro',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Image(
                                alignment: Alignment.center,
                                image: ResizeImage(
                                  AssetImage('images/bebida.jpeg'),
                                  width: 400,
                                  height: 400,
                                )),
                            Text(
                              'O álcool enfraquece o coração, levando a uma doença chamada miocardiopatia alcoólica. Que funciona assim: o coração tenta bombear o sangue, mas não consegue porque está enfraquecido e com isso causa um aumento em seu tamanho.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Image(
                                alignment: Alignment.center,
                                image: ResizeImage(
                                  AssetImage('images/cigarro.jpg'),
                                  width: 400,
                                  height: 400,
                                )),
                            Text(
                              'O cigarro afeta o transporte do oxigénio para o nosso organismo, fazendo com que o coração trabalhe mais.\nFumar também contribui para o acúmulo de gorduras no sangue, causando o estreitamento dos vasos e aumentando a pressão com que esse sangue saia.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'O consumo de álcool e cigarro aumenta os sintomas da Insuficiência Cardíaca.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '• Diminuir o sal e a água',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Image(
                                alignment: Alignment.center,
                                image: ResizeImage(
                                  AssetImage('images/sal.jpg'),
                                  width: 400,
                                  height: 400,
                                )),
                            Text(
                              'O sal quando ingerido em grande quantidade, acumulam no interior dos vasos sanguineos e funcionam como esponjas. Aumenta a retenção de líquidos e aumenta a Pressão Arterial.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Image(
                                alignment: Alignment.center,
                                image: ResizeImage(
                                  AssetImage('images/agua.jpg'),
                                  width: 300,
                                  height: 300,
                                )),
                            Text(
                              'O Controle de liquido e controle de sal  diminui a retenção de liquido, além do controle do peso, da pressão arterial. Facilita o funcionamento do coração.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Esses ajustes devem ser reavaliado de acordo com o peso, pressão arterial e a até mesmo com a evolução da doença.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Como colocar em prática a restrição hídrica?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                textAlign: TextAlign.left,
                              ),
                              Image(
                                  alignment: Alignment.center,
                                  image: ResizeImage(
                                    AssetImage(
                                        'images/exemplorestricaohidrica.jpg'),
                                    width: 300,
                                    height: 600,
                                  )),
                              Text(
                                '• Primeiro você pode começar pegando uma garrafa de água na qual já esteja acostumado ou seja específica para o seu caso (de acordo com a orientação da equipe de Saúde que inclui avaliação do peso, pressão arterial e a até mesmo com a evolução da doença).',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'O segundo passo é dividir essa garrafa em turnos, por exemplo: manhã, tarde e noite, ou em horários, assim você sabe o quanto pode beber em cada turno respeitando a restrição.',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Como colocar em prática a restrição de sódio?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                textAlign: TextAlign.left,
                              ),
                              Image(
                                  alignment: Alignment.center,
                                  image: ResizeImage(
                                    AssetImage('images/bacalhau.jpg'),
                                    width: 300,
                                    height: 300,
                                  )),
                              Text(
                                '• Primeiro devemos nos atentar a quantidade de sódio que os alimentos possuem. Há alimentos com maiores índices de sódio em sua composição, tais como:',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                '* Alimentos industrializados e em conservas: caldo de carne; bacalhau; carne seca e defumados; sopas e temperos em pacote.',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                '* Condimentos em geral como: Ketchup; mostarda; molhos prontos (ex: shoyu); picles; azeitona, palmito.',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              Image(
                                  alignment: Alignment.center,
                                  image: ResizeImage(
                                    AssetImage('images/condimentos.jpg'),
                                    width: 300,
                                    height: 300,
                                  )),
                              Text(
                                '* Outros alimentos, como: Amendoim; semente de abóbora, grão de bico.',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              Card(
                                elevation: 10,
                                child: Column(
                                  children: [
                                    Text(
                                      'Curiosidade:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.red),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Pães e alimentos panificados: O fermento contém bicabornato de sódio.',
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                                alignment: Alignment.center,
                                image: ResizeImage(
                                  AssetImage('images/deitada.jpg'),
                                  width: 400,
                                  height: 400,
                                )),
                            Text(
                              '• Outro cuidado importante que podemos colocar em prática é a utilização de travesseiros e manter a cabeça elevada, seja na cama ou no sofá.(Isso facilita a respiração e alivia a congestão pulmonar)',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
