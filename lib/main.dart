import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'Practice App',
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile',style: TextStyle(fontSize: 25),),
        leading: Icon(Icons.person,size: 32,),
        actions: [Icon(Icons.add_ic_call,size: 32,)],
      ),

      body: Column(


      ),
    );
  }

}