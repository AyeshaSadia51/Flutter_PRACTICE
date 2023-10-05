import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
      ),
      body: Column(
        children: [
          // AspectRatio
          AspectRatio(
              aspectRatio: 16/4,
              child: Container(
                color: Colors.amber,
                child: Image.network('https://gifdb.com/images/high/cute-cartoon-peach-cat-dance-mmqdbpqu279gtdz0.webp', fit: BoxFit.cover),
              ),
          ),

          // FractionallySizedBox
          Container(
            //width: MediaQuery.sizeOf(context).width,
            //height: MediaQuery.sizeOf(context).width,
            width: MediaQuery.sizeOf(context).width,
            height: 250,
            color: Colors.pink,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 0.7,
              child: Container(
                color: Colors.amber,
                child: Image.network('https://gifdb.com/images/high/cute-cartoon-peach-cat-dance-mmqdbpqu279gtdz0.webp', fit: BoxFit.cover),
              ),
            ),
          ),

          // Flexible
          Flexible(
            fit: FlexFit.tight,
              flex: 2,
              child: Container(
                color: Colors.amber,
                width: MediaQuery.sizeOf(context).width,
              )
          ),

          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.black,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.blueGrey,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                )
              ],
            ),
          ),

          Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: Container(
                color: Colors.green,
                width: MediaQuery.sizeOf(context).width,
              )
          ),

          // Expanded
          Expanded(
            flex: 2,
              child: Container(
                color: Colors.purple,
              )
          ),
          Expanded(
            flex: 3,
              child: Container(
                color: Colors.deepOrangeAccent,
                width: double.infinity,
                alignment: Alignment.center,
                child: SizedBox(
                  width:200,
                  height: 60,
                  child: FittedBox(
                    child: Text('Ayesha Ferdous Sadia', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                ),
              )
          )
        ],
      )
    );
  }
}