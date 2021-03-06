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
                                        text: 'insufici??ncia cardiaca',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    new TextSpan(
                                        text:
                                            ' significa que a for??a de bombeamento e de relaxamento '
                                            'do cora????o est??o alterados.')
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
                                'O ataque card??aco enfraquece  uma das paredes '
                                'do cora????o e para compensar essa falha as outras  paredes '
                                'passam a se esfor??ar mais  e com o tempo provocam uma sobrecarga.',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.justify),
                            Text(
                                'Hipertens??o arterial n??o tratada que fazem com que a parede do '
                                'cora????o fiquem mais espessas, assim  o espa??o para o sangue diminui '
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
                            Text('CORA????O',
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
                            Text('INSIFICI??NCIA CARD??ACA ESQUERDA',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center),
                            Text(
                                'Ap??s passar pelos ??rg??os, o sangue, com menos oxig??nio, percorre para o cora????o direito, em seguida, ?? levado ao pulm??o para ser oxigenado, retorna ao cora????o esquerdo e vai novamente para os tecidos e ??rg??os.',
                                style: const TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify),
                            Image(
                                image: ResizeImage(
                                    AssetImage('images/lados.jpg'),
                                    width: 250,
                                    height: 250)),
                            Text(
                                'Pacientes com Insufici??ncia card??aca esquerda o sangue tem dificuldade de retornar ao cora????o vindo do pulm??o gerando Congest??o Pulmonar.',
                                style: const TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify),
                            Text(
                                'A congest??o pulmonar piora quando deitado pois o sangue que est?? nas pernas n??o sofre a????o da gravidade e o ventr??culo que n??o bombeia adequadamente mais sangue se ret??m no pulm??o.',
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
                                'Com menor fluxo de sangue nos ??rg??os, os rins entendem como uma queda do volume sangu??neo e passam a reter l??quido e sal, na tentativa de manter os vasos cheios, causando edema e incha??o.',
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
                                            'O tratamento farmacol??gico ?? determinado pelo m??dico e deve ser seguido corretamente. \nAs medica????es est??o indicadas em:\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    new TextSpan(
                                        text:
                                            '??? Melhora da for??a de contra????o card??aca.\n'),
                                    new TextSpan(
                                        text:
                                            '??? Diminuir  o volume sangu??neo circulante para facilitar o trabalho card??aco.\n'),
                                    new TextSpan(
                                        text:
                                            '??? Diminuir o consumo de oxig??nio do cora????o.\n'),
                                    new TextSpan(
                                        text:
                                            '??? Diminuir o trabalho card??aco.\n'),
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
                                'Para que o m??dico realize de modo adequado o manejo das medica????es e controle a doen??a voc?? deve :',
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
                                            '??? Comparecer a consulta m??dica regular.\n'),
                                    new TextSpan(
                                        text:
                                            '??? Realizar os exames solicitados.\n'),
                                    new TextSpan(
                                        text:
                                            '??? Informar sobe ades??o ao tratamento farmacol??gico e n??o farmacol??gico.\n'),
                                    new TextSpan(
                                        text:
                                            '??? Informar sobre os Sinais e sintomas apresentados.\n'),
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
                                            'Ades??o a esses cuidados ?? essencial para junto ao tratamento medicamentoso permitir o controle da doen??a e a sua qualidade de vida.\n',
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
                              '??? Controle de peso',
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
                              '- Aumentos de 2 quilogramas em tr??s dias devem ser comunicados ao m??dico.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Como a quantidade de sangue bombeada pelo cora????o ao corpo ?? reduzida, os rins acabam entendendo que o organismo n??o tem sangue suficiente e acabam reten????o de l??quidos.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Esta reten????o de l??quido gera o edema  no pulm??o, na periferia  e demais ??rg??os.',
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
                                      'L??quidos acumulados no pulm??o reduzem a capacidade dos pulm??es obterem oxig??nio causando falta de ar e tosse.',
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
                                      'O sangue tamb??m se acumula nos membros inferiores, causando incha??o dos tornozelos e pernas.',
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
                                      'Pode causar acumula????o tamb??m no f??gado e ??rg??os digestivos causando a perda de apetite.',
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
                              '??? Pr??tica de atividades f??sicas',
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
                              'Pr??tica de exerc??cios f??sicos melhoram o condicionamento f??sico e a capacidade para realizar as atividades do dia a dia:',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Melhora do controle da doen??a;',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Redu????o da press??o arterial;',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Melhora da fun????o respirat??ria, pois fortalece a musculatura respirat??ria (aumento do oxig??nio);',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Melhora a capacidade funcional e o bem estar;',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '- Melhora a for??a, fun????o e resist??ncia dos m??sculos do cora????o;',
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
                              'Pergunte ao m??dico quais os exerc??cios que voc?? deve realizar e planeje suas atividades',
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
                                  '??? Controle da press??o arterial',
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
                                  'A press??o arterial elevada sobrecarrega o m??sculo card??aco e deixando-o cada vez mais fraco.\nO Aumento da Press??o arterial ?? a causa de descompensa????o e da Insufici??ncia.',
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'REALIZE CONTROLE DE SUA PRESS??O ARTERIAL DIARIAMENTE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'FA??A REGISTRO PARA LEVAR NA CONSULTA M??DICA.',
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
                              '??? Interrup????o do consumo de ??lcool e cigarro',
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
                              'O ??lcool enfraquece o cora????o, levando a uma doen??a chamada miocardiopatia alco??lica. Que funciona assim: o cora????o tenta bombear o sangue, mas n??o consegue porque est?? enfraquecido e com isso causa um aumento em seu tamanho.',
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
                              'O cigarro afeta o transporte do oxig??nio para o nosso organismo, fazendo com que o cora????o trabalhe mais.\nFumar tamb??m contribui para o ac??mulo de gorduras no sangue, causando o estreitamento dos vasos e aumentando a press??o com que esse sangue saia.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'O consumo de ??lcool e cigarro aumenta os sintomas da Insufici??ncia Card??aca.',
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
                              '??? Diminuir o sal e a ??gua',
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
                              'O sal quando ingerido em grande quantidade, acumulam no interior dos vasos sanguineos e funcionam como esponjas. Aumenta a reten????o de l??quidos e aumenta a Press??o Arterial.',
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
                              'O Controle de liquido e controle de sal  diminui a reten????o de liquido, al??m do controle do peso, da press??o arterial. Facilita o funcionamento do cora????o.',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Esses ajustes devem ser reavaliado de acordo com o peso, press??o arterial e a at?? mesmo com a evolu????o da doen??a.',
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
                                'Como colocar em pr??tica a restri????o h??drica?',
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
                                '??? Primeiro voc?? pode come??ar pegando uma garrafa de ??gua na qual j?? esteja acostumado ou seja espec??fica para o seu caso (de acordo com a orienta????o da equipe de Sa??de que inclui avalia????o do peso, press??o arterial e a at?? mesmo com a evolu????o da doen??a).',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                'O segundo passo ?? dividir essa garrafa em turnos, por exemplo: manh??, tarde e noite, ou em hor??rios, assim voc?? sabe o quanto pode beber em cada turno respeitando a restri????o.',
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
                                'Como colocar em pr??tica a restri????o de s??dio?',
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
                                '??? Primeiro devemos nos atentar a quantidade de s??dio que os alimentos possuem. H?? alimentos com maiores ??ndices de s??dio em sua composi????o, tais como:',
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
                                '* Outros alimentos, como: Amendoim; semente de ab??bora, gr??o de bico.',
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
                                      'P??es e alimentos panificados: O fermento cont??m bicabornato de s??dio.',
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
                              '??? Outro cuidado importante que podemos colocar em pr??tica ?? a utiliza????o de travesseiros e manter a cabe??a elevada, seja na cama ou no sof??.(Isso facilita a respira????o e alivia a congest??o pulmonar)',
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
