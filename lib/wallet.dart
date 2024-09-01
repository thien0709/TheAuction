import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int _balance = 110;
  String _eye = 'eye';
  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      SizedBox(height: 15),
      Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Text('Total balance',
                style: TextStyle(fontFamily: 'SpaceMono', fontSize: 15)),
            SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                setState(() {
                  _eye = _eye == 'eye' ? 'eye-slash' : 'eye';
                });
              },
              child: Icon(
                  _eye == 'eye'
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.eyeSlash,
                  color: Colors.blue, size: 15,),
            )
          ],
        ),
        SizedBox(height: 10,),
       Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
          SizedBox(width: 30),
           Text(_eye == 'eye' ? '$_balance' : "*****", style: TextStyle(fontFamily: 'Koulen',fontSize: 24)),
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
