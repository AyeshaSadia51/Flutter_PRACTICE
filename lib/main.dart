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
         ElevatedButton(
             onPressed: (){
               showAboutDialog(context: context,
               applicationName: "PickaCHuu",
                 applicationVersion: '1.0.2',
                 children: [
                   Text('Application only for children under 15 age !')
                 ]
               );
             }, child: Text('About')),
         ElevatedButton(
             onPressed: (){
               showModalBottomSheet(
                 isDismissible: false,
                 barrierColor: Colors.blue,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(40),
                     topRight: Radius.circular(40),
                   )
                 ),
                   context: context, builder: (context){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       Center(
                         child: Text('This is Bottom Sheet'),
                       )
                     ],
                   ),
                 );
               });
             }, child: Text('Bottom Sheet')),

       ],
     ),
   );
  }}


