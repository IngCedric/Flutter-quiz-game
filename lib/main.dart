import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const QuizHomePage(),
    );
  }
}

class QuizHomePage extends StatelessWidget {
  const QuizHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset('assets/images/welcome.png',
              height: 400,
              ),
              SizedBox(height: 30,),
              Text('Quiz Game', style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor : Colors.redAccent,
                // pour rendre mon ElevatedButton long
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
              ),
              child: Text('Play', style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),),),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                // pour cliquez et avoir les informations sur l'informaticien, sur le programmeur
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        content: Container(
                          height: 250,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              //   Icon est une classe
                                Icon(
                                  Icons.lightbulb_outlined,
                                  color: Colors.amber,
                                  size: 50,
                                ),
                                SizedBox(height: 10,),
                                // texte de titre
                                Text(
                              'Info',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),      
                          ),
                              SizedBox(height: 10,),
                              //   information sur le programmeur
                                Text('Programmeur:\n sylvestreced@gmail.com',
                                  textAlign: TextAlign.center,
                                 ),
                                SizedBox(height: 20,),
                              //   boutton 
                                
                                ElevatedButton(
                                  onPressed: (){
                                //   pour fermer la popup
                                  Navigator.of(context).pop();
                                },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ), child: Text('Okay', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
              ),
              child: Text('Me', style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),),),

          ],
        ),
      ),
    );
  }
}
