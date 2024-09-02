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
          const Text(
            'Welcome to The Auction',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Koulen'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Please login to continue',
            style: TextStyle(fontSize: 12, fontFamily: 'JetBrainsMono'),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    print("Connect with MetaMask");
                  },
                  child: Image.asset('images/icons8-metamask-logo-48.png',
                      width: 30)),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onTap: () {
                    print("Connect with Github");
                  },
                  child: Image.asset('images/icons8-github-48.png', width: 30)),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onTap: () {
                    print("Connect with Google");
                  },
                  child: Image.asset('images/icons8-google-48.png', width: 30)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: const Text('Sign up',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.pink)),
          ),
        ],
      ),
    );
  }
}
