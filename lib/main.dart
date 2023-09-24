import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Home(),
   );
  }
}

class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Home'),
     ),
     body: Column(
       children: [
         Switch(value: true, onChanged: (bool value) {}),
         ElevatedButton(
             onPressed: (){
               showDialog(
                   barrierDismissible: false,
                   context: context, builder: (context){
                 return AlertDialog(
                   title: Text('False Alert'),
                   content: Text('Try Again'),
                   actions: [
                     TextButton(
                         onPressed: (){
                           Navigator.pop(context);
                         }, child: Text('Cancel')),
                     TextButton(
                         onPressed: (){
                           Navigator.pop(context);
                         }, child: Text('Ok')),
                   ],
                 );
               });
             },
             child: Text('Submit')
         ),
       ],
     ),
   );
  }}


