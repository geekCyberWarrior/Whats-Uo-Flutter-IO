import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:whats_up_io/widgets/button.dart';
import 'package:whats_up_io/widgets/logo.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var rememberMe = false;
  var nameController = TextEditingController();
  var numberController = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(flex: 3, child: LogoView()),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 45),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign Up for Free",
                              style: TextStyle(color: Colors.white),
                            ),
                            Column(
                              children: [
                                TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  validator: (value) {},
                                  controller: nameController,
                                  decoration: InputDecoration(
                                      fillColor: const Color(0x55555555),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      hintText: "Full Name",
                                      hintStyle: const TextStyle(
                                          color: Color(0x88888888),
                                          fontWeight: FontWeight.bold),
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Color(0xBBBBBBBB),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          borderSide: const BorderSide(
                                              color: Colors.green,
                                              width: 3.0))),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  validator: (value) {},
                                  controller: numberController,
                                  decoration: InputDecoration(
                                      fillColor: const Color(0x55555555),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      hintText: "Phone Number",
                                      hintStyle: const TextStyle(
                                          color: Color(0x88888888),
                                          fontWeight: FontWeight.bold),
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Color(0xBBBBBBBB),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          borderSide: const BorderSide(
                                              color: Colors.green,
                                              width: 3.0))),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    fillColor:
                                        MaterialStateProperty.all(Colors.green),
                                    value: rememberMe,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        rememberMe = newValue!;
                                      });
                                    }),
                                Text(
                                  "Remember Me?",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            GreenButton(
                              value: "Sign Up",
                              onPressed: () {
                                print("Full Name: ${nameController.text}");
                                print("Number: ${numberController.text}");
                                users
                                    .add({
                                      'full_name':
                                          nameController.text, // John Doe
                                      'number': numberController.text,
                                    })
                                    .then((value) => print("User Added"))
                                    .catchError((error) =>
                                        print("Failed to add user: $error"));
                              },
                            ),
                            Row(
                              children: [
                                Text("Already Have An account?",
                                    style: TextStyle(color: Colors.grey)),
                                Text(
                                  "Sign Up",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
