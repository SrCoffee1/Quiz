import 'package:flutter/material.dart';

class TelaDestino extends StatelessWidget {
  final int pontuacao;
  final int totalPerguntas;
  final Function resetQuiz;

  TelaDestino(this.pontuacao, this.totalPerguntas,this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 0, 0, 0),),
            backgroundColor: Color.fromARGB(255, 14, 65, 34),
        body: Container(
         decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage ('assets/imagens/letmesoloher.png'),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Parabéns! Você é um verdadeiro campeão.', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text('Pontuacao: $pontuacao de $totalPerguntas', textAlign: TextAlign.center,
           style: TextStyle(fontSize: 20, color: Colors.white)
           ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            resetQuiz();
            Navigator.pop(context);
          },
          child: Text('Recomecar')
          
          )
            ],
        ),
    ),
  );
  }
}