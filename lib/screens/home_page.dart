import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text(
              "Home Page",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: const InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.grey),
                      labelText: "Email address",
                    ),
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.grey),
                      labelText: "Password",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                    width: 314,
                    height: 70,
                    // color: Color(0xffFA4A0C),
                    decoration: const BoxDecoration(
                      color: Color(0xffFA4A0C),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color(0xffF6F6F9),
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
