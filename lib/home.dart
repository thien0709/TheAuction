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
    return Center(
      child: 
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: constants.Colors.lightMint,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: 'https://picsum.photos/250?image=9',
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Positioned(
              top: 200 * 0.8,
              child: Container(
                width: 200,
                height: 200 * 0.2,
                color: constants.Colors.colorGray,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.bitcoin,
                        color: constants.Colors.lightOrange),
                        SizedBox(width: 5),
                    Text('NFT',
                        style: TextStyle(
                            color: constants.Colors.lightMint,
                            fontFamily: 'Koulen')),
                  ],
                ),
              ),
            ),
          ]),
          const SizedBox(width: 20),
          Stack(children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: constants.Colors.lightMint,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: 'https://picsum.photos/250?image=9',
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          Positioned(
              top: 200 * 0.8,
              child: Container(
                width: 200,
                height: 200 * 0.2,
                color: constants.Colors.colorGray,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.bitcoin,
                        color: constants.Colors.lightOrange),
                        SizedBox(width: 5),
                    Text('NFT',
                        style: TextStyle(
                            color: constants.Colors.lightMint,
                            fontFamily: 'Koulen')),
                  ],
                ),
              ),
            ),
          ]),
        ]),
    );
  }
}
