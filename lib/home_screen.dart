import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  void initState(){
    print('Init State');
    super.initState();
  }

  @override
  void didChangeDependencies(){
    print('Did change dependency');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget){
    print('Did Update Widget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(), style: TextStyle(fontSize: 62, fontWeight: FontWeight.bold, color: Colors.blue),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;
          setState(() {});
          },
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void deactivate(){
    print('Deactivated');
    super.deactivate();
  }

  @override
  void dispose(){
    print('Dispose');
    super.dispose();
  }
}
