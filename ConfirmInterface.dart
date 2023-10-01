

import 'package:flutter/material.dart';

class ConfirmInterface extends StatefulWidget {
  const ConfirmInterface({Key? key}) : super(key: key);

  @override
  State<ConfirmInterface> createState() => _ConfirmInterfaceState();
}

class _ConfirmInterfaceState extends State<ConfirmInterface> {
  bool pickUp=true;
  bool shedule=false;
  bool notToday=false;
  bool ready=true;
  String Time = '7.00 A.M';

  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: Color(0xFF88D6B0),
        title: Text('PickUp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:width*0.045 ),),
        actions: [

          Icon(Icons.menu,color: Colors.white,),
          SizedBox(
            width: width*0.04,
          ),
        ],
      ),
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Container(
              height: height*0.5,
              color: Color(0xFF88D6B0),
            ),
            Positioned(
              left: width*0.8,
              child: Container(
              width: width*0.15,
              height: width*0.15,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/face1.jpg'),fit: BoxFit.cover,),
                borderRadius: BorderRadius.circular(width*0.2),
                border: Border.all(width: 2.0,color: Colors.white),
              ),
            ),),
            Positioned(
              top: height*0.2,
                left: width*0.35,

                child: Container(
              width: width*0.9,
              height: width*0.6,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/bus2.png'),fit: BoxFit.cover,),
              ),
            )),
            Positioned(
              top: height*0.3,
              left: width*0.05,
              child: Row(
                children: [
                  Container(
                    width: width*0.11,
                    height: width*0.11,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width*0.3),
                      border: Border.all(width: 2.0,color: Colors.white),
                    ),
                    child: Icon(Icons.event_seat_outlined,color: Color(0xFF88D6B0),),
                  ),
                  SizedBox(
                    width: width*0.03,
                  ),
                  Text('54 seats',style: TextStyle(color: Colors.white,fontSize: width*0.035,fontWeight: FontWeight.bold),)
                ],
              ),
                ),
            Positioned(
              top: height*0.4,
              left: width*0.05,
              child: Row(
                children: [
                  Container(
                    width: width*0.11,
                    height: width*0.11,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(width*0.3),
                      border: Border.all(width: 2.0,color: Colors.white),
                      color: Colors.white
                    ),
                    child: Icon(Icons.ac_unit,color: Color(0xFF88D6B0),),
                  ),
                  SizedBox(
                    width: width*0.03,
                  ),
                  Text('AC',style: TextStyle(color: Colors.white,fontSize: width*0.035,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Positioned(
              top: height*0.02,
              left: width*0.05,
              child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'STRAALIS XS\n', style: TextStyle(fontSize: width*0.045,fontWeight: FontWeight.bold,color: Colors.white),),
                  TextSpan(text: 'HIGH-WAY\n', style: TextStyle(fontSize: width*0.04,color: Colors.white),),
                  TextSpan(text: 'MAX LOAD 850kg', style: TextStyle(fontSize: width*0.035,color: Colors.white),),
                ],
              ),
            ),
            ),
            Positioned(
              top: height*0.57,
                left: width*0.15,
                child: Row(
              children: [
                ElevatedButton(onPressed: (){


                  setState(() {
                    pickUp = true;
                    shedule= false; // Toggle the boolean value.
                  });
                },
                  child: Text('pickUp',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(backgroundColor: pickUp? Colors.greenAccent:Colors.grey),
                ),
                SizedBox(width: width*0.2,),
                ElevatedButton(onPressed: (){

                  setState(() {
                    pickUp = false;
                    shedule= true; // Toggle the boolean value.
                  });
                },
                  child: Text('Shedule',style: TextStyle(color: Colors.white),),

                  style: ElevatedButton.styleFrom(backgroundColor: shedule? Colors.greenAccent:Colors.grey),),


              ],
            )),
            pickUp?Positioned(
              top: height*0.65,
              left: width*0.021,
              child: Container(
                width:  width*0.95,
                height: height*0.22,

                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.black26,),

                ),
                child: Column(
                  children: [
                    SizedBox(height: height*0.01,),

                    Row(
                      children: [
                        SizedBox(width: width*0.04,),
                        Text('Estimate Arrival Time:',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                        SizedBox(width: width*0.02,height: 0.1,),
                        Text(Time,style: TextStyle(fontSize: width*0.04,fontWeight: FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                    SizedBox(height: height*0.01,),
                    Row(
                      children: [
                        SizedBox(width: width*0.04,),
                        Text('Confirm Your Participaion:',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                        SizedBox(width: width*0.02,height: 0.1,),

                      ],
                    ),
                    SizedBox(height: height*0.008,),
                    Row(
                      children: [
                        SizedBox(width: width*0.04,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              ready=true;
                              notToday=false;
                            });
                          },
                          child: Container(
                            width: width*0.14,
                            height: width*0.14,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/yesDog.jpg'),fit: BoxFit.cover,),
                                borderRadius: BorderRadius.circular(width*0.3),
                                border: Border.all(width: 3.0,color: ready? Colors.green:Colors.grey,),
                                color: Colors.white
                            ),

                          ),
                        ),
                        SizedBox(width: width*0.06,height: 0.1,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              notToday=true;
                              ready=false;
                            });
                          },
                          child: Container(
                            width: width*0.14,
                            height: width*0.14,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/noDog.jpg'),fit: BoxFit.cover,),
                                borderRadius: BorderRadius.circular(width*0.3),
                                border: Border.all(width: 3.0,color: notToday? Colors.green : Colors.grey),
                                color: Colors.white
                            ),

                          ),
                        ),
                        SizedBox(width: width*0.3,height: 0.1,),
                        ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_forward,color: Colors.white,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          elevation: width*0.01,
                        ),
                        ),

                      ],
                    ),
                    SizedBox(width: width*0.3,height: height*0.008,),

                    Row(
                      children: [
                        SizedBox(width: width*0.06,),
                        Text("I'm ready",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.025,color: ready? Colors.green:Colors.grey,),),
                        SizedBox(width: width*0.08,),
                        Text('Not Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.025,color: notToday? Colors.green:Colors.grey,),),
                      ],

                    ),

                  ],
                ),
              ),
            ):shedule?
            Positioned(
              top: height*0.65,
              left: width*0.021,
              child: Container(
                width:  width*0.95,
                height: height*0.22,

                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.black26,),

                ),
              ),
            ):
            Container(),

          ],
        ),
      ),
    );
  }
}
