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

  List<String> studentName = ['Ayesha','Ferdous','Sadia','Tanvir','Shakib','Shakil','Jawad','Rabeya','Jannat'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('List',style: TextStyle(
            fontSize: 26
        ),),
        leading: Icon(Icons.list_alt,size: 25,),
        actions: [Icon(Icons.arrow_forward,size: 25,)],
      ),

      body: Scrollbar(
        thickness: 15,
        radius: Radius.circular(20),

        // GRIDVIEW BUILDER
        /* child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(' Monkey No - ${index.toString()}', style: TextStyle(fontWeight: FontWeight.bold),),
                    Image.network('https://as1.ftcdn.net/v2/jpg/00/28/08/40/1000_F_28084010_bGRJetPfBwNcO3YuRC2C3Pz7qASocWQ4.jpg',
                    height: 100,
                    ),
                  ],
                );
              }
          )     */

        // LISTVIEW BUILDER
        /*child: ListView.builder(
          itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Student No - $index'),
              );
            }
        ),*/

        // ListView SEPARATED
       /* child: ListView.separated(
            itemCount: 20,
            itemBuilder: ( context, index) {
              return ListTile(
                title: Text('Student No - $index', style: TextStyle(color: Colors.deepOrange),),
              );
            },
            separatorBuilder: ( context, index) {
              return Divider( thickness: 5,);
            },
        ),*/

        child: ListView.separated(
            itemCount: studentName.length,
            itemBuilder: (context,index){
              return ListTile(
              title: Text(studentName[index], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              );
            },
            separatorBuilder: (context,index){
              return Divider(height: 20, thickness: 4,);
            },

      ),
      )
    );
  }
}
