import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pickup_test/ConfirmInterface.dart';
import 'package:pickup_test/PassengerSignUp.dart';
import 'package:pickup_test/firebase_auth.dart';

class PassengerLogin extends StatefulWidget {
  const PassengerLogin({Key? key}) : super(key: key);

  @override
  State<PassengerLogin> createState() => _PassengerLoginState();
}

class _PassengerLoginState extends State<PassengerLogin> {

  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController usernameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    usernameController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
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
                    color: Color(0xFF3094D2),

                  ),
                ),
              ),

              Positioned(
                top: height*0.3,
                child: Container(

                  width: width,
                  height: height*0.6,
                  decoration: BoxDecoration(

                      image: DecorationImage(image: AssetImage('assets/images/blue1.png'),fit: BoxFit.cover,
                      )
                  ),
                ),
              ),


              Positioned(
                top: height*0.02,
                left: width*0.1,
                child: Column(
                  children: [
                    SizedBox(
                      height: height*0.3,
                    ),
                    Positioned(
                        child: Container(
                          width: width*0.8,
                          child: TextFormField(            //password
                            controller: nameController,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.5),
                              prefixIcon: const Icon(
                                Icons.supervised_user_circle_outlined,
                                color: Colors.white,
                              ),
                              suffixIcon: const Icon(
                                Icons.pending_actions,
                                color: Colors.white,
                              ),
                              hintText: 'Enter Username',
                              hintStyle: const TextStyle(color: Colors.white),
                              labelText:'Username',
                              labelStyle: const TextStyle(color: Colors.white),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
                    SizedBox(height: height*0.02,),
                    Positioned(

                        child: Container(
                          width: width*0.8,
                          child: TextFormField(                                    //user name
                            controller: usernameController,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.5),
                              prefixIcon: const Icon(
                                Icons.supervised_user_circle_outlined,
                                color: Colors.white,
                              ),
                              suffixIcon: const Icon(
                                Icons.pending_actions,
                                color: Colors.white,
                              ),
                              hintText: 'Email',
                              hintStyle: const TextStyle(color: Colors.white),
                              labelText: 'Email',
                              labelStyle: const TextStyle(color: Colors.white),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
                      height: height*0.02,
                    ),

                    Positioned(
                        child: Container(
                          width: width*0.8,
                          child: TextFormField(            //password
                            controller: passwordController,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.5),
                              prefixIcon: const Icon(
                                Icons.supervised_user_circle_outlined,
                                color: Colors.white,
                              ),
                              suffixIcon: const Icon(
                                Icons.pending_actions,
                                color: Colors.white,
                              ),
                              hintText: 'Enter Password',
                              hintStyle: const TextStyle(color: Colors.white),
                              labelText:'Password',
                              labelStyle: const TextStyle(color: Colors.white),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
                left: width*0.1,
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: width*0.1,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                top: height*0.22,
                left: width*0.11,
                child: Text(
                  'Sign in to Continue',
                  style: TextStyle(
                    fontSize: width*0.045,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Positioned(
                  left: width*0.6,
                  top: height*0.05,

                  child: Container(
                    width: width*0.3,
                    height: height*0.25,
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/passenger.png'),
                        fit: BoxFit.scaleDown,
                        opacity: 1,
                        scale: 0.5,
                      ),
                    ),
                  )
              ),
              Positioned(
                top: height*0.65,
                left: width*0.165,
                child: ElevatedButton(
                  onPressed: signIn,
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(width*0.65, height*0.07)


                  ),
                  child: Text("SIGN IN",style: TextStyle(color: Colors.blue,fontSize: width*0.045),),
                ),
              ),
              Positioned(
                  top: height*0.61,
                  left: width*0.69,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PassengerSignUp()
                        ),
                      );
                    },
                    child: Text(
                      'SIGN UP',style: TextStyle(color: Colors.white,fontSize: width*0.04,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),
                    ),
                  )

              ),
              Positioned(
                  top: height*0.61,
                  left: width*0.28,
                  child: Text(
               "Don't Have an Account ?",style: TextStyle(fontWeight: FontWeight.bold),
              ))



            ]
        ),
      ),
    );
  }
  void signIn() async{

    String email = usernameController.text;
    String password = passwordController.text;
    String name = nameController.text;
    User? user = await _auth.SignIn(email, password);

    if(user != null){
      print("succesfully signedIn");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  ConfirmInterface(data: name),
        ),
      );

    }else{
      print("some error occured!");
     // Fluttertoast.showToast(msg: "Sign in failed");
    }





  }
}

