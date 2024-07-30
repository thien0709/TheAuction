import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_auction/constants/constants.dart' as constants;
import 'home.dart';
import 'login.dart';
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
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = [
    HomePage(),
    Center(child: Text('Page 2', style: TextStyle(fontSize: 24))),
    Center(child: Text('Page 3', style: TextStyle(fontSize: 24))),
    Center(child: Text('Page 4', style: TextStyle(fontSize: 24))),
    Login(),
  ];
  final List<String> _titles = [
    'The Auction',
    'Search',
    'Market',
    'Wallet',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(FontAwesomeIcons.ethereum, color: constants.Colors.blue),
            Text(_titles[_page],style: const TextStyle(color: constants.Colors.colorText,fontFamily: 'Koulen')),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          color: constants.Colors.colorGray,
          animationCurve: Curves.fastLinearToSlowEaseIn,
          backgroundColor: Colors.white,
          items: const <Widget>[
            Icon(FontAwesomeIcons.chartSimple, size: 30,color:  constants.Colors.colorIcon),
            Icon(FontAwesomeIcons.magnifyingGlassDollar, size: 30,color:  constants.Colors.colorIcon),
            Icon(FontAwesomeIcons.arrowRightArrowLeft, size: 30,color: constants.Colors.colorIcon),
            Icon(FontAwesomeIcons.wallet, size: 30,color: constants.Colors.colorIcon),
            Icon(FontAwesomeIcons.gear, size: 30,color:  constants.Colors.colorIcon),
          ],
         onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _pages[_page],
    );
  }
}