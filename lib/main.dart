import 'package:flutter/material.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(                  /// MaterialApp - set all config of an app

      debugShowCheckedModeBanner: true,

      home: HomeScreen(),
      title: "OSTAD APP",

    );
  }
}

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(                  /// Scaffold (homescreen) 2 part - appBar & body

    backgroundColor: Colors.purple,

    appBar: AppBar(
      backgroundColor: Colors.pinkAccent,
    centerTitle: true,
    title: Text("HOME"),
    leading: Icon(Icons.store, size: 36, color: Colors.yellow,),

    ),

   /* body: Center(
    child: Text("Home Screen", style: TextStyle(        // SINGLE WIDGET
      color:  Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold
    ),),
    ),
*/

     body: Column(                                  // MULTIPLE WIDGET - Column / Row
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.end,

       children: [
        Text('Hello!!'),
        Text('Ayesha'),
        Text('Ferdous'),
        Text('Sadia'),

         Row(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,

     children: [
    Text('Hello!! '),
    Text('Ayesha '),
    Text('Ferdous '),
    Text('Sadia '),
        ]
         )
       ],
     ),
   );
  }
}