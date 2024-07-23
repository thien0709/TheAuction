import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants/constants.dart' as constants;
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('The Auction Market', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'Koulen'),),


          // CachedNetworkImage(
          //   imageUrl: 'https://images.hdqwalls.com/wallpapers/porsche-rwb-4k-ug.jpg',
          //   placeholder: (context, url) => const CircleAvatar(
          //       backgroundColor: constants.Colors.colorGray,
          //       radius: 150,
          //     ),
          //   imageBuilder: (context, image) => CircleAvatar(
          //       backgroundImage: image,
          //       radius: 150,
          //   ),
          //   errorWidget: (context, url, error) => const Icon(FontAwesomeIcons.bug),
          // ),
        ],
      ),
    );
  }
}