import 'package:flutter/material.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(                  /// MaterialApp - set all config of an app

      debugShowCheckedModeBanner: true,

      home: HomeScreen(),
      title: "OSTAD APP",

    );
  }
}

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(                  /// Scaffold (homescreen) 2 part - appBar & body

    backgroundColor: Colors.purple,

    appBar: AppBar(
      backgroundColor: Colors.pinkAccent,
    centerTitle: true,
    title: Text("HOME"),
    leading: Icon(Icons.store, size: 36, color: Colors.yellow,), 
      actions: [
        Icon(Icons.search,size: 36, color: Colors.yellow)
      ],

    ),

   /* body: Center(
    child: Text("Home Screen", style: TextStyle(        // SINGLE WIDGET
      color:  Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold
    ),),
    ),
*/

     body: Column(
       children: [
         Column(                                  // MULTIPLE WIDGET - Column / Row
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.end,

           children: [
            Text('Hello!!'),
            Text('Ayesha', style: TextStyle(
                color: Colors.amber,fontWeight: FontWeight.bold
            ),),

            Text('Ferdous', style: TextStyle(
                color: Colors.amber,fontWeight: FontWeight.bold
            ),),

             Text('Sadia', style: TextStyle(
                color: Colors.amber,fontWeight: FontWeight.bold
            ),),

             Row(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,

         children: [
    Text('Hello!! '),
    Text('Ayesha ', style: TextStyle(
      color: Colors.amber,fontWeight: FontWeight.bold
    ),),

     Text('Ferdous ', style: TextStyle(
        color: Colors.amber,fontWeight: FontWeight.bold
    ),),

    Text('Sadia ', style: TextStyle(
    color: Colors.amber,fontWeight: FontWeight.bold
    ),),
            ]
             )
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('Student of '),
             Text('Leading '),
             Text('University ')
           ],
         ),
         Column(
           children: [
             Text('Department: ', style: TextStyle(
             color: Colors.white, fontWeight: FontWeight.bold
         ),),
             Text('CSE', style: TextStyle(
                 color: Colors.limeAccent, fontWeight: FontWeight.bold
             ),),
           ],
         ),

         Image.asset('images/BabyPic.jpeg',
           width: 150,height: 165, fit: BoxFit.cover,),
         Image.network('https://c4.wallpaperflare.com/wallpaper/101/380/61/cat-animals-bokeh-cute-wallpaper-preview.jpg',
                        width: 350, height: 200, fit:BoxFit.cover,
          ),

         RichText(text: TextSpan(
           text: 'My ',
           style: TextStyle(
             color: Colors.red,
             fontSize: 30
           ),

         children: [
           TextSpan(
             text: 'phone ',
             style: TextStyle(
              color: Colors.blueAccent,
               fontSize: 18
             )
           ),
           TextSpan(
             text: 'name',
             style: TextStyle(
               color: Colors.pinkAccent,
               fontWeight: FontWeight.bold,
               fontSize: 22
             )
           ),
           TextSpan(
             text: 'Your Phone name',
             style: TextStyle(
               color: Colors.amber,
               //fontSize: 30
             )
           ),
         ]
         ))
       ],
     ),
   );
  }
}