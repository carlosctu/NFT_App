import 'package:flutter/material.dart';
import 'package:nft_app/core/app_assets.dart';

class LeftImage extends StatelessWidget {
  const LeftImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const Image(
        image: AssetImage(leftImage),
        width: 628,
        height: 628,
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
