import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'Practice APP',
    );
  }
}

/// Route
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Home Page',
            style: TextStyle(fontSize: 26),
          ),
          leading: Icon(Icons.home, size: 25,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HOME',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductListScreen()));
                  },
                  child: Text('Product List')
              ),
            ],
          ),
        ));
  }
}

/// Route
class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Product List',
            style: TextStyle(fontSize: 24),
          ),
          actions: [Icon(Icons.production_quantity_limits, size: 25,)]
        ),
        body: ListView.builder(
          itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(index.toString()),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ProductDetails(productName: index.toString(),)
                  ));
                },

              );
            })
    );
  }
}


/// Route
class ProductDetails extends StatelessWidget{
  final String productName;
  const ProductDetails({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Product Details',
          style: TextStyle(fontSize: 26),
        ),
        actions: [Icon(Icons.details, size: 25)]

      ),
      body: Center(
        child: Text(productName, style: TextStyle(fontSize: 24),),

      ),
    );
  }

}

/// Route

