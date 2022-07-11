import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widget/nft_body.dart';

class NftMenu extends StatefulWidget {
  const NftMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<NftMenu> createState() => _NftMenuState();
}

class _NftMenuState extends State<NftMenu> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClipPath(),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 234,
                    child: const Image(
                      fit: BoxFit.cover,
                      height: 10,
                      image: AssetImage('../../images/background_img.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 24,
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white.withOpacity(0.8),
                          size: 26,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 242,
                  alignment: Alignment.center,
                  child: ClipRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.2),
                      radius: 76,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 242,
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('../../images/carlos.jpg'),
                    radius: 70,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Carlos Casanova',
                            style: TextStyle(
                              color: Colors.white,
                              wordSpacing: 3,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '4.5',
                            style: TextStyle(
                                color: Colors.white,
                                wordSpacing: 6,
                                // letterSpacing: 1.5,
                                fontSize: 16),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: Colors.amber, size: 14),
                          SizedBox(width: 8),
                          Text(
                            '|  92',
                            style: TextStyle(
                                color: Colors.white,
                                wordSpacing: 6,
                                // letterSpacing: 1.5,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.favorite, color: Colors.purple, size: 14),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(32.0),
                        child: Container(
                          child: const TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 42, 45, 58),
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1),
                                // borderRadius: BorderRadius.all(BorderRadius.circular(30)),
                                // const BorderRadius.circular(30),
                              ),
                              labelText: 'Search',
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            // initialValue: 'Search',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Wrap(
                          spacing: 24,
                          runSpacing: 24,
                          children: const [
                            NFT(
                                image: '../../images/finger_left.png',
                                price: '1.25',
                                title: 'Hologram hand left',
                                hearts: '92'),
                            NFT(
                                image: '../../images/finger.png',
                                price: '0.8',
                                title: 'Hologram hand right',
                                hearts: '19'),
                            NFT(
                                image: '../../images/hand_free_flow.png',
                                price: '2.4',
                                title: 'Hologram hand free flow',
                                hearts: '99'),
                            NFT(
                                image: '../../images/finger_crushed.png',
                                price: '1.06',
                                title: 'Hologram crushed sheet',
                                hearts: '35'),
                            NFT(
                                image: '../../images/last_panda.jpg',
                                price: '3.2',
                                title: 'Floating Panda',
                                hearts: '120'),
                            NFT(
                                image: '../../images/beginning_of_the_end.jpg',
                                price: '0.86',
                                title: 'Hologram crushed sheet',
                                hearts: '44'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 30, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
