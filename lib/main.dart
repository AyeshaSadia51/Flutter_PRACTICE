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
          onChanged: (bool onChange) {

          }, value: true,

        ),
      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello Jawad Bolod'),
            Text('Hello Jawad Bolod'),
            Text('Hello Jawad Bolod'),
            Text('Hello Jawad Bolod'),
            CupertinoButton(child: Text('click'), onPressed: (){}),
            CupertinoTextField(),
            CupertinoTabBar(items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.phone, color: CupertinoColors.activeBlue,), label: 'Phone'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.list_bullet, color: CupertinoColors.activeBlue), label: 'Contact'),
            ])
          ],
        ),
      ),
    );
  }}


