import 'package:apna/screens/chat_Screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.grey, Colors.deepPurple])),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text('Log-in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30, fontFamily: 'bodoni'
                      )),
                  SizedBox(
                    height: 30
                  ),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Your email id",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(hintText: "Your password"),
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 14, color: Colors.black87),
                          alignment: Alignment.bottomLeft,
                        ),
                        onPressed: null,
                        child: const Text('Forgot password?'),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff264741),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        onPressed: () async {},
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    'Log in',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          width: 250,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?", style: const TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 14, color: Colors.black54),

                        ),
                        onPressed: null,
                        child: const Text("Sign-up"),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 15,
                  ),
              Align(
                  alignment: Alignment.center,
                  child: Text("Or login with", style: const TextStyle(fontSize: 14, color: Colors.black87, ))),
                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        splashRadius: 100,
                        //iconSize: 100,
                        icon: Image.asset("assets/images/search.png"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatScreen()));
                        },
                       ),
                      SizedBox(
                           width: 20,
                         ),
                      IconButton(
                        splashRadius: 100,
                        //iconSize: 100,
                        icon: Image.asset("assets/images/facebook.png"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatScreen()));
                        },
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
