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
                        MaterialPageRoute(builder: (context) => SettingsScreen()));
                  },
                  child: Text('Go to Settings')
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderScreen()));
                  },
                  child: Text('Go to Order')
              )
            ],
          ),
        ));
  }
}

/// Route
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Settings Page',
            style: TextStyle(fontSize: 24),
          ),
          actions: [Icon(Icons.settings, size: 25,)]
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SETTINGS',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false,
                    );
                  },
                  child: Text('Go to Home'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink
                ),
              )
            ],
          ),
        ));
  }
}

/// Route
class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Order Page',
            style: TextStyle(fontSize: 26),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ORDER',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsScreen()));
                  },
                  child: Text('Go to Settings', style: TextStyle(
                      color: Colors.green, fontSize: 18
                  ),),


              ),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Back to Home', style: TextStyle(
                    color: Colors.green, fontSize: 18
                ),),


              ),
            ],
          ),
        ));
  }
}
