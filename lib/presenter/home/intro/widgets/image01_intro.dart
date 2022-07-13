import 'package:flutter/material.dart';

class RightImageIntro extends StatelessWidget {
  const RightImageIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const Image(
        image: AssetImage('../../images/image01.png'),
        width: 628,
        height: 628,
        alignment: Alignment.centerRight,
      ),
    );
  }
}
