import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/components/my_button.dart';
import 'package:my_app/components/my_textfield.dart';
import 'package:my_app/components/square_tile.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 390),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Container(
                // height: 1000,
                decoration: BoxDecoration(color: Colors.grey[300], boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4.0, 4.0),
                      spreadRadius: 1,
                      blurRadius: 15),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      spreadRadius: 1,
                      blurRadius: 15),
                ]),
                child: ListView(
                  //or Column
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    //logo
                    const Icon(
                      Icons.lock,
                      size: 100,
                    ),

                    const SizedBox(
                      height: 50,
                    ),
                    //Welcome message
                    Center(
                      child: Text(
                        'Welecome back dude!',
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ),

                    const SizedBox(
                      height: 25,
                    ),
                    // Username field

                    MyTextField(
                      hintText: 'Username',
                      obscureText: false,
                      controller: usernameController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //Password field
                    MyTextField(
                      hintText: 'Password',
                      obscureText: true,
                      controller: passwordController,
                    ),
                    // ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 25,
                    ),
                    //sign in button
                    MyButton(
                      onTap: signUserIn,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // or continune with
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                          Text(
                            'or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //google + apple
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //google button
                        SquareTile(imagePath: 'assets/images/google.png'),
                        SizedBox(
                          width: 50,
                        ),
                        //apple button
                        SquareTile(imagePath: 'assets/images/apple.png')
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a menber?',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Register now',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                    // not a member ? register
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
