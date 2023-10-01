
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pickup_test/DriveLogin.dart';
import 'package:pickup_test/firebase_auth.dart';

class DriverSignUp extends StatefulWidget {
  const DriverSignUp({Key? key}) : super(key: key);

  @override
  State<DriverSignUp> createState() => _DriverSignUpState();
}

class _DriverSignUpState extends State<DriverSignUp> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
            children:[

              Positioned(
                top: height*0,
                child: Container(

                  width: width,
                  height: height*0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/light-blue.jpg'),fit: BoxFit.fill)

                  ),
                ),
              ),
              Positioned(
                top: height*0.4,
                left: -width*0.175,

                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(20 / 360),
                  child: Container(

                    width: width*1.8,
                    height: height*0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width*0.1),
                      image: DecorationImage(image: AssetImage('assets/images/add48ec8eb1b3c3fd3f3f9be19f29598.jpg'),fit: BoxFit.fill,opacity: 0.45)



                    ),
                  ),
                ),
              ),





              Positioned(
                top: height*0.2,
                left: width*0.1,
                child: Column(
                  children: [
                    SizedBox(
                      height: height*0.3,
                    ),
                    Positioned(

                        child: Container(
                          width: width*0.8,
                          child: TextFormField(                                    //user name
                            controller: usernameController,
                            style: const TextStyle(color: Colors.grey),
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              prefixIcon: const Icon(
                                Icons.supervised_user_circle_outlined,
                                color: Colors.grey,
                              ),
                              suffixIcon: const Icon(
                                Icons.pending_actions,
                                color: Colors.grey,
                              ),
                              hintText: 'Enter ID',
                              hintStyle: const TextStyle(color: Colors.grey),
                              labelText: 'Driver ID',
                              labelStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            onSaved: (String? value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                            validator: (String? value) {
                              return (value != null && value.contains('@'))
                                  ? 'Do not use the @ char.'
                                  : null;
                            },
                          ),
                        )),
                    SizedBox(
                      height: height*0.05,
                    ),

                    Positioned(
                        child: Container(
                          width: width*0.8,
                          child: TextFormField(            //password
                            controller: passwordController,
                            style: const TextStyle(color: Colors.grey,),
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              prefixIcon: const Icon(
                                Icons.supervised_user_circle_outlined,
                                color: Colors.grey,
                              ),
                              suffixIcon: const Icon(
                                Icons.pending_actions,
                                color: Colors.grey,
                              ),
                              hintText: 'Enter Password',
                              hintStyle: const TextStyle(color: Colors.grey),
                              labelText:'Password',
                              labelStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            onSaved: (String? value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                            validator: (String? value) {
                              return (value != null && value.contains('@'))
                                  ? 'Do not use the @ char.'
                                  : null;
                            },
                          ),
                        )
                    ),

                  ],
                ),
              ),

              Positioned(
                top: height*0.15,
                left: width*0.25,
                child: Text(
                  'CREATE YOUR ',
                  style: TextStyle(
                    fontSize: width*0.08,

                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: height*0.2,
                left: width*0.33,
                child: Text(
                  'ACCOUNT',
                  style: TextStyle(
                    fontSize: width*0.08,
                    color: Colors.white,

                  ),
                ),
              ),

              // Positioned(
              //     left: width*0.6,
              //     top: height*0.05,
              //
              //     child: Container(
              //       width: width*0.3,
              //       height: height*0.25,
              //       decoration: BoxDecoration(
              //         //color: Colors.white,
              //         image: DecorationImage(
              //           image: AssetImage('assets/images/driver1.png'),
              //           fit: BoxFit.scaleDown,
              //           opacity: 1,
              //           scale: 0.5,
              //         ),
              //       ),
              //     )
              // ),
              Positioned(
                top: height*0.75,
                left: width*0.15,
                child: ElevatedButton(
                  onPressed: signUp,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    fixedSize: Size.fromWidth(width*0.7),



                  ),
                  child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize: width*0.05),),
                ),
              ),
              Positioned(
                top: height*0.82,
                left: width*0.19,
                child: Text("Already Have Account ?",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              ),
              Positioned(
                top: height*0.82,
                left: width*0.59,
                child: GestureDetector(
                    onTap: (){},
                    child: Text("Sign In",style: TextStyle(color: Colors.blueAccent,fontSize: width*0.04,fontWeight: FontWeight.bold,),)),
              ),




            ]
        ),
      ),
    );
  }

  void signUp() async{

    String email = usernameController.text;
    String password = passwordController.text;

    User? user = await _auth.SignUp(email, password);

    if(user != null){
     print("succesfully signedUp");
     Navigator.push(
       context,
       MaterialPageRoute(
           builder: (context) => const DriverLogin()
       ),
     );

    }else{
      print("some error occured!");

    }





  }
}
