import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo/login/login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumber= TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepPurple.shade900,
          Colors.orange.shade600,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    // Text(
                    //   'Welcome',
                    //   style: TextStyle(color: Colors.white, fontSize: 15),
                    // )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/wp.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 20))
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  // decoration: BoxDecoration(
                                  //     border: Border(
                                  //         bottom:
                                  //             BorderSide(color: Colors.grey))),
                                  child: TextField(
                                    controller: _userName,
                                    decoration: InputDecoration(
                                        hintText: 'User Name',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        )),
                                  ),
                                ),
                                Container(
                                  
                                  padding: EdgeInsets.all(5),
                                  // decoration: BoxDecoration(
                                  //     border: Border(
                                  //         bottom:
                                  //             BorderSide(color: Colors.grey))),
                                  child: TextField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                        hintText: 'Email ID',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                  ),
                                ),
                                Container(
                                  
                                  padding: EdgeInsets.all(5),
                                  // decoration: BoxDecoration(
                                  //     border: Border(
                                  //         bottom:
                                  //             BorderSide(color: Colors.grey))),
                                  child: TextField(
                                    controller: _phoneNumber,
                                    decoration: InputDecoration(
                                        hintText: 'Phone Number',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  // decoration: BoxDecoration(
                                  //     border: Border(
                                  //         bottom:
                                  //             BorderSide(color: Colors.grey))),
                                  child: TextField(
                                    controller: _password,
                                    decoration: InputDecoration(
                                        hintText: 'Password',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          
                          SizedBox(height: 10),
                          
                          SizedBox(height: 5),
                          SizedBox(width: double.infinity,
                          height: 50,
                            child: ElevatedButton(onPressed: ()async {
                              // print(_userName.text);
                              // print(_emailController.text);
                              // print(_phoneNumber.text);
                              // print(_password.text);
                              // _emailController.clear();
                              final _auth = FirebaseAuth.instance;
                              try {
                                final userCredential =await _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _password.text);
                              } catch (e) {
                                
                              }
                            }, child: Text('SignUp')),
                          ),
                              TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                    }, child: Text('Login'))
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
