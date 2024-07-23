import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to The Auction', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'Koulen'),),
            const SizedBox(height: 20,),
            const Text('Please login to continue', style: TextStyle(fontSize: 12,fontFamily: 'JetBrainsMono'),),
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                },
              child: const Text('Login'),
            ),
          ],
        ),
    );
  }
}