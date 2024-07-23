import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
void login() async {
  HomeScreen();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(FontAwesomeIcons.ethereum, color: Color.fromARGB(255, 30, 210, 255),),
            Text('The Auction' ,style: TextStyle(color: Color.fromARGB(255, 85, 85, 85),fontFamily: 'Koulen'),),
          ],
        ),
      ),
      body: Container(
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
                login();
                },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          color: Color.fromARGB(233, 31, 31, 32),
          animationCurve: Curves.fastLinearToSlowEaseIn,
          backgroundColor: Colors.white,
          items: const <Widget>[
            Icon(FontAwesomeIcons.chartSimple, size: 30,color:  Color.fromARGB(255, 122, 122, 122)),
            Icon(FontAwesomeIcons.magnifyingGlassDollar, size: 30,color:  Color.fromARGB(255, 122, 122, 122)),
            Icon(FontAwesomeIcons.ethereum, size: 30,color: Color.fromARGB(255, 122, 122, 122)),
            Icon(FontAwesomeIcons.wallet, size: 30,color: Color.fromARGB(255, 122, 122, 122)),
            Icon(FontAwesomeIcons.gear, size: 30,color:  Color.fromARGB(255, 122, 122, 122)),
          ],
      )
    );
  }
}