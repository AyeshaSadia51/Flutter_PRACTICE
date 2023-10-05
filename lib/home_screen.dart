import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.purple,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
            ),

          ],
        ),
      )
    );
  }
}