import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return CupertinoApp(
     home: Home(),
   );
  }
}

class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home'),
        trailing: CupertinoSwitch(
          onChanged: (bool value) {

          },value: true,

        ),
      ),

      child: Center(
        child: Text('Hello Jawad Bolod'),
      ),
    );
  }}


