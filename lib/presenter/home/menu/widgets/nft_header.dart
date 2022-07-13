import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_app/core/app_assets.dart';

class NFTMenuHeader extends StatelessWidget {
  const NFTMenuHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomClipPath(),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 234,
            child: const Image(
              fit: BoxFit.cover,
              height: 10,
              image: AssetImage(headerCoverPic),
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
            backgroundImage: AssetImage(profilePic),
            radius: 70,
          ),
        ),
      ],
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
