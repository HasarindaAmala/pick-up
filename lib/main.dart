import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pickup_test/modeSelection.dart';



void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PickUp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(

        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('assets/images/taxi.jpg'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),

        ),
     child: Stack(
       children:[
       Positioned(
         top: height*0.75,
         left: width*0.05,

         child: Container(width:width*0.9, child:Text('PickUp is a user-friendly mobile application designed to streamline and simplify the process of confirming your participation in the office transport service.Say goodbye to the hassle of manual confirmations or last-minute calls.',
           textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: width*0.032,fontWeight: FontWeight.bold),),)),
         Positioned(
           top: height*0.6,
             left: width*0.05,
             child: Text('PickUp',style: TextStyle(color: Colors.white,fontSize: width*0.15,fontWeight: FontWeight.bold),)),
         Positioned(
             top: height*0.9,
             left: width*0.65,
             child: ElevatedButton(onPressed: (){
               print('fuck');
               Navigator.push(
                 context,
                 MaterialPageRoute(
                     builder: (context) => const ModeSelection()
                 ),
               );
             },
                 style: ElevatedButton.styleFrom(

                   backgroundColor:Colors.white.withOpacity(0.1),

                 ),
                 child: Row(
               children: [
                 Text('Start',style: TextStyle(color: Colors.white,fontSize: width*0.05),),
                 SizedBox.square(dimension: width*0.02,),
                 Icon(Icons.arrow_forward,color: Colors.white,),
               ],
             ))
         ),
       ],
     ),


            ),






    );
  }
}
