import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int totalConsume = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Tracker'),
      ),
      
      body: Center(
        child: Column(
          children: [
            Text('Total Consume', style: Theme.of(context).textTheme.titleLarge,),
            Text('$totalConsume', style: Theme.of(context).textTheme.headlineLarge,),
            ElevatedButton.icon(
                onPressed: (){
                  totalConsume++;
                  setState(() {});
                }, icon: const Icon(Icons.add), label: const Text('Add'),)
          ],
        ),
      )
    );
  }
}
