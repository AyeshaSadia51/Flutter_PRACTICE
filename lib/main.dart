import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'Practice APP',
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List',style: TextStyle(
            fontSize: 25
        ),),
        actions: [Icon(Icons.contact_page,size: 25,)],
      ),

       /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                print('Tapped on Ayesha');
              },
              onDoubleTap: (){
                print('Double Tapped');
              },
              onLongPress: (){
                print('Long Press');
              },
              child: Text('Ayesha', style: TextStyle(
                fontSize: 30, color: Colors.deepOrange
              ),),
            ),
            InkWell(
              onTap: (){
                print('Tapped on Sadia');
              },
              onDoubleTap: (){
                print('Double Tapped');
              },
              onLongPress: (){
                print('Long Press');
              },
              borderRadius: BorderRadius.circular(16),
              child: Text('Sadia', style: TextStyle(
                  fontSize: 28, color: Colors.purple
              ),),
            ),
          ],
        ),
      ),*/


    );
  }
}
