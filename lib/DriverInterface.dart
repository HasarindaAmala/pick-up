import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class driverInterface extends StatefulWidget {
  const driverInterface({Key? key}) : super(key: key);

  @override
  State<driverInterface> createState() => _driverInterfaceState();
}

class _driverInterfaceState extends State<driverInterface> {
  final DatabaseReference databaseReference = FirebaseDatabase.instance.reference();
  List<Map<String, dynamic>> usersList = [];
  @override
  void initState() {
    super.initState();
    // Load the data from Firebase when the widget is first built
    readDataForMultipleUsers();
  }

  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Positioned(
            top: height*0.01,
              left: width*0.3,
              child: Container(
                width: width,
            height: height*0.5,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bus2.png')),),
          )),
          Positioned(
              top: height * 0.06,
              left: width*0.03,
              child: Icon(Icons.arrow_back,size: width*0.1,color: Colors.white,)
          ),
          Positioned(
              top: height * 0.06,
              left: width*0.3,
              child: Text('Pick-Up',style: TextStyle(fontSize: width*0.1,color: Colors.white,fontWeight: FontWeight.bold),),
          ),

          // Add a condition to display the ListView.builder
          if (usersList.isNotEmpty)
            Positioned(
              top: height * 0.3, // Adjust the position as needed
              child: Container(
                width: width,
                height: height * 0.8,
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(width*0.1),
                  ),
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: usersList.length,
                      itemBuilder: (context, index) {
                        final user = usersList[index];
                        final username = user['username'];
                        final attendance = user['Attendance'];
                      Icon attendanceIcon = attendance == 'true'
                       ? Icon(Icons.event_available, color: Colors.green,size: width*0.09,)
                       : Icon(Icons.cancel, color: Colors.red,size: width*0.09,);

                        return ListTile(

                          leading: Icon(Icons.account_circle_outlined,color: Colors.white,size: width*0.09,),
                          trailing:attendanceIcon ,
                          title: Text('Username: $username',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          subtitle: Text('Attendance: $attendance',style: TextStyle(color: Colors.white),),

                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          Positioned(
            top: height * 0.9,
            left: width*0.4,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  driverInterface(),
                  ),
                );


              },
              child: Text("Reload"),

            ),
          ),
        ],
      ),
    );
  }

  void readDataForMultipleUsers() {
    databaseReference.child('user').onValue.listen((event) {
      final DataSnapshot snapshot = event.snapshot;
      final dynamic data = snapshot.value;

      if (data != null && data is Map<dynamic, dynamic>) {
        Map<dynamic, dynamic> userData = data;

        userData.forEach((key, value) {
          // Each key represents a user node
          String username = value['username'];
          String attendance = value['Attendence'];

          // Add user data to the list
          usersList.add({
            'username': username,
            'Attendance': attendance,
          });

          // Update the widget's state to trigger a rebuild
          setState(() {});
        });
      } else {
        // Data does not exist at the specified path or has unexpected format
        print('No user data found or data has unexpected format.');
      }
    });
  }
}