import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int _balance = 110;
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Total balance', style: TextStyle(fontFamily: 'Koulen',fontSize: 20)),
          SizedBox(width: 5),
          Icon(FontAwesomeIcons.eye, color: Colors.blue),
        ],
      ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [

           Text('$_balance', style: TextStyle(fontSize: 24)),
           Icon(FontAwesomeIcons.dollarSign, color: Colors.blue),
    
         ]
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         ],
       )
     ],
    );
  }
}
