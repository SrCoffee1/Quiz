import 'package:flutter/material.dart';
import 'telaDestino.dart';

class TelaQuiz extends StatefulWidget {
  @override
  _TelaQuizState createState() => _TelaQuizState();
}


class _TelaQuizState extends State<TelaQuiz> {
  int _perguntaAtual = 0;
  int _pontuacao = 0;


    final List<Pergunta> perguntas = [
Pergunta(
      pergunta: 'Qual a data de lançamento do jogo?',
      respostas: ['25/02/2022', '30/02/2022', '12/03/2022', '18/02/2022'],
      respostaCorreta: '25/02/2022',
      ImagePath: 'assets/imagens/primeiro.jpg',
    ),
    Pergunta(
      pergunta: 'Como o jogador é chamado pelos demais personagens dentro da história?',
      respostas: ['Inaceso', 'Maculado', 'Caçador', 'Sekiro'],
      respostaCorreta: 'Maculado',
      ImagePath: 'assets/imagens/segundo.jpg',
    ),
    Pergunta(
      pergunta: 'Qual o chefe com o maior HP?',
      respostas: ['Malenia', 'Fire Giant', 'Rykard', 'Elden Beast', 'Greyoll'],
      respostaCorreta: 'Rykard',
      ImagePath: 'assets/imagens/terceiro.jpg',
    ),
    Pergunta(
      pergunta: 'Quantas bosses existem ao todo no game?',
      respostas: ['8', '218', '64', '165'],
      respostaCorreta: '165',
      ImagePath: 'assets/imagens/radan quarta.gif',
    ),
    Pergunta(
      pergunta: 'Quem é o Maculado que veio antes do jogador?',
      respostas: ['Godfrey', 'Godwyn', 'O jogador', 'Vyke'],
      respostaCorreta: 'Vyke',
      ImagePath: 'assets/imagens/vike.gif',
    ),
    Pergunta(
      pergunta: 'Quem foi o primeiro Maculado?',
      respostas: ['Houarah Loux', 'Vyke', 'Gwin', 'Miquela'],
      respostaCorreta: 'Houarah Loux',
      ImagePath: 'assets/imagens/godfrey.gif',
    ),
    Pergunta(
      pergunta: 'Qual desses semideuses foram mortos com a Runa da Morte?',
      respostas: ['3 Dedos', 'Godwin', 'Radagon', 'Rykard'],
      respostaCorreta: 'Godwin',
      ImagePath: 'assets/imagens/filhomorto.jpg',
    ),
     Pergunta(
      pergunta: 'Após completar a quest e enfim se casar com Ranni o que o jogador recebe?',
      respostas: ['Uma Dark Moon', 'A invocação da Ranni', 'Um sino', 'Uma agulha'],
      respostaCorreta: 'Uma Dark Moon',
      ImagePath: 'assets/imagens/ranni.jpg',
    ),
      Pergunta(
      pergunta: 'Quem é o portador original da Runa da Morte?',
      respostas: ['Maliketh', 'Malenia', 'Serosh', 'Facas Negras', 'Os pele Divina'],
      respostaCorreta: 'Maliketh',
      ImagePath: 'assets/imagens/maliketh.webp',
    ),
      Pergunta(
      pergunta: 'Quem é esse?',
      respostas: ['Godwin', 'Radagon', 'Rykard', 'Messmer'],
      respostaCorreta: 'Messmer',
      ImagePath: 'assets/imagens/messmer.gif',
    ),
  ];


  void _responderPergunta(String resposta) {
    if (perguntas[_perguntaAtual].respostaCorreta == resposta) {
      setState(() {
        _pontuacao++;
      });
    }

    if (_perguntaAtual < perguntas.length - 1) {
      setState(() {
        _perguntaAtual++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaDestino(_pontuacao, perguntas.length, resetQuiz)),
      );
    }
  }

  void resetQuiz() {
    setState(() {
      _perguntaAtual = 0;
      _pontuacao = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
            backgroundColor: Color.fromARGB(255, 14, 65, 34),
      body: Container(
              decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage ('assets/imagens/backquiz2.webp'),
              fit: BoxFit.cover
            ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              perguntas[_perguntaAtual].ImagePath,
              width:500,
              height: 500,
            ),
              SizedBox(height: 20),
              
              
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              alignment: WrapAlignment.center,
            ),
            Center(
  child: Text(
    perguntas[_perguntaAtual].pergunta,
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
    textAlign: TextAlign.center,
  ),
),

            SizedBox(height: 20),
            ...(perguntas[_perguntaAtual].respostas).map((resposta) {
              return ElevatedButton(
                onPressed: () {
                  _responderPergunta(resposta);
                },
                child: Text(resposta),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(55, 87, 62, 62),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class Pergunta {
  final String pergunta;
  final List<String> respostas;
  final String respostaCorreta;
  final String ImagePath;

  Pergunta({
    required this.pergunta,
    required this.respostas,
    required this.respostaCorreta,
    required this.ImagePath,
  });
}