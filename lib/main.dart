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
        title: Text('facebook',style: TextStyle(
            fontSize: 26
        ),),
        actions: [Icon(Icons.facebook,size: 25,)],
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

      body: Scrollbar(
        thickness: 15,
        radius: Radius.circular(20),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Icon(
                  Icons.facebook, size: 80, color: Colors.blueAccent,
                ),
              ListTile(
                title: Text('Mobile number', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold
                ),),
                subtitle: Text('017********'),
                leading: Icon(Icons.mobile_friendly),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
                onTap: (){print('Moblile No Pressed');},
              ),
              Divider(
                thickness: 4,
                height: 16,
                color: Colors.blueGrey,
                indent: 18,
                endIndent: 18,
              ),
              ListTile(
                title: Text('Email address', style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold
                ),),
                subtitle: Text('username@gmail.com'),
                leading: Icon(Icons.email),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
                onTap: (){print('Email Pressed');},
              ),
              Divider(
                thickness: 4,
                height: 16,
                color: Colors.blueGrey,
                indent: 18,
                endIndent: 18,
              ),
              ListTile(
                title: Text('Password', style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold
                ),),
                subtitle: Text('*************'),
                leading: Icon(Icons.password),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
                onTap: (){print('Password Pressed');},
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: (){ print('Tapped Log In');},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        )
                    ),
                    child: Text('Log In')),
              ),


              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),
              Text('Ayesha',
                style: TextStyle(fontSize: 22, color: Colors.pink),),


            ],
          ),

      ),

    );
  }
}
