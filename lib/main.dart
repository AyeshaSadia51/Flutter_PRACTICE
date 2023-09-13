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
        backgroundColor: Colors.blueAccent,
        title: Text('Circus',style: TextStyle(
            fontSize: 26
        ),),
        actions: [Icon(Icons.child_care,size: 25,)],
      ),

      body: Scrollbar(
        thickness: 15,
        radius: Radius.circular(20),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
            children: [
              Image.network('https://as2.ftcdn.net/v2/jpg/02/66/31/75/1000_F_266317554_kr7DPOoM5Uty0YCeFU9nDZTt4a2LeMJF.jpg'),
              Center(
                child: Text('Lets Rock', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown, fontSize: 28
                ),),
              ),
              Image.network('https://as2.ftcdn.net/v2/jpg/00/74/15/95/1000_F_74159556_67n5823V7Ei87a4g6JJnYHC0yMSo1AEy.jpg'),
              Center(
                child: Text('Lets Chill', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange, fontSize: 28
                ),),
              ),
              Image.network('https://as2.ftcdn.net/v2/jpg/02/66/31/75/1000_F_266317554_kr7DPOoM5Uty0YCeFU9nDZTt4a2LeMJF.jpg'),
              Center(
                child: Text('Lets Rock', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown, fontSize: 28
                ),),
              ),
              Image.network('https://as1.ftcdn.net/v2/jpg/00/28/08/40/1000_F_28084010_bGRJetPfBwNcO3YuRC2C3Pz7qASocWQ4.jpg'),
              Center(
                child: Text('Say Cheeeeeezzzz', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black, fontSize: 28
                ),),
              ),
              Image.network('https://as2.ftcdn.net/v2/jpg/02/66/31/75/1000_F_266317554_kr7DPOoM5Uty0YCeFU9nDZTt4a2LeMJF.jpg'),
              Center(
                child: Text('Lets Rock', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown, fontSize: 28
                ),),
              ),
              Image.network('https://as2.ftcdn.net/v2/jpg/00/74/15/95/1000_F_74159556_67n5823V7Ei87a4g6JJnYHC0yMSo1AEy.jpg'),
              Center(
                child: Text('Lets Chill', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange, fontSize: 28
                ),),
              ),
              Image.network('https://as2.ftcdn.net/v2/jpg/02/66/31/75/1000_F_266317554_kr7DPOoM5Uty0YCeFU9nDZTt4a2LeMJF.jpg'),
              Center(
                child: Text('Lets Rock', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown, fontSize: 28
                ),),
              ),
              Image.network('https://as1.ftcdn.net/v2/jpg/00/28/08/40/1000_F_28084010_bGRJetPfBwNcO3YuRC2C3Pz7qASocWQ4.jpg'),
              Center(
                child: Text('Say Cheeeeeezzzz', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black, fontSize: 28
                ),),
              ),
            ],
          )
      ),

    );
  }
}
