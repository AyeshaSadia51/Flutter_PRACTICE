import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // MediaQuery
    /*
    Size size = MediaQuery.sizeOf(context);
    print(size);
    Orientation orientation = MediaQuery.orientationOf(context);
    print(orientation);
    List<DisplayFeature> displayFeatures = MediaQuery.displayFeaturesOf(context);
    print(displayFeatures);
    print(MediaQuery.devicePixelRatioOf(context));
    */

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth);
          if(constraints.maxWidth > 450) {
            return Center(child: Text('Too big Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),);
          } else {
            return Center(
              child: OrientationBuilder(builder: (context, orientation){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(orientation == Orientation.portrait ? 'Portrait Mode' : 'Landscape Mode',
                      style: TextStyle(fontSize: 28),
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text('When you come from people having zero expectations of'),
                        Text('who you could be,'),
                        Text('there’s a fearlessness; you can only go up from there.'),
                        Text('Don’t fight back that rhetoric with words, but with actions.'),
                      ],
                    ),
                  ],
                );
              }),
            );
          }
        }
      )
    );
  }
}