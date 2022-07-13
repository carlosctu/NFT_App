import 'package:flutter/material.dart';

class LeftImageIntro extends StatelessWidget {
  const LeftImageIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const Image(
        image: AssetImage('../../images/image2.png'),
        width: 628,
        height: 628,
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
