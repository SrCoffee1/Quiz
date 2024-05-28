import 'package:flutter/material.dart';
import 'package:flutter_application_1/telaquiz.dart';

class TelaInicial extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: Color.fromARGB(255, 6, 14, 12),
      body: Container(    

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imagens/Elden.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            Image.asset(
               'assets/imagens/Elenlogo.png', width: 700, height: 700
              
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaQuiz()),
                );
              },
              child:Text(
                 'C O M E C A R    O    Q U I Z',
                style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
             fontFamily: 'PtSerif-Regular.ttf', 
                fontSize: 20,
    ),
  ),
  style: ElevatedButton.styleFrom(
    onSurface: Color.fromARGB(255, 216, 210, 210),
    primary: Color.fromARGB(255, 87, 62, 62),
  ),
),
          ],
        ),
      ),
    );
  }
}