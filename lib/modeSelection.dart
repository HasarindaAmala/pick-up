

import 'package:flutter/material.dart';

class ModeSelection extends StatefulWidget {
  const ModeSelection({Key? key}) : super(key: key);

  @override
  State<ModeSelection> createState() => _ModeSelectionState();
}

class _ModeSelectionState extends State<ModeSelection> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: Color(0xFF88D6B0),
        title: Text('PickUp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background1.jpg'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                top: height*0.17,
                left: height*0.03,
                child: Container(
                  width: width*0.39,
                  height: height*0.4,
                  decoration: BoxDecoration(border: Border.all(width: 3.0,color: Colors.grey)),
                )
            ),
            Positioned(
                top: height*0.17,
                left: height*0.33,
                child: Container(
                  width: width*0.39,
                  height: height*0.4,
                  decoration: BoxDecoration(border: Border.all(width: 3.0,color: Colors.grey)),
                )
            ),
            Positioned(
                top: height*0.2,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Column(children: [
                      SizedBox.fromSize(size: Size(height*0.06, height*0.07,) ),
                      Icon(Icons.drive_eta_rounded,size: 100.0,color: Colors.white,),
                      Text('Driver',style: TextStyle(color: Colors.white,fontSize: width*0.04,fontWeight: FontWeight.bold),)
                    ]),
                    width: width*0.5,
                    height: height*0.3,
                    decoration: BoxDecoration(color: Colors.cyanAccent.shade400,border: Border.all(width: 3.0,color: Colors.grey)),
                  ),
                )
            ),
            Positioned(
                top: height*0.2,
                left: height*0.302,
                child: Container(
                  child: Column(children: [
                    SizedBox.fromSize(size: Size(height*0.06, height*0.07,) ),
                    Icon(Icons.account_circle_outlined,size: 100.0,color: Colors.white,),
                    Text('Passenger',style: TextStyle(color: Colors.white,fontSize: width*0.04,fontWeight: FontWeight.bold),)
                  ]),

                  width: width*0.5,
                  height: height*0.3,
                  decoration: BoxDecoration(color: Colors.teal,border: Border.all(width: 3.0,color: Colors.grey)),
                )
            ),
            Positioned(
              top: height*0.05,
                left: width*0.35,
                child: Text('WELCOME ! ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.06,color: Colors.black54),),
            ),
            Positioned(
              top: height*0.1,
              left: width*0.08,
              child: Text('"PickUp: Streamline Your Commute, Elevate Your Workday!"',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.03,color: Colors.black54),),
            ),
            Positioned(
              top: height*0.62,
              left: width*0.12,
              child: Container(
                width: width*0.4,
                height: height*0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/eagle1.webp'),opacity: 0.7)
                ),
              ),
            ),
            // Positioned(
            //   top: height*0.52,
            //   left: width*0.6,
            //   child: Text('Login as Passenger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04,color: Colors.black54),),
            // ),


          ],
        ),
      ),
    );
  }
}
