import 'package:flutter/material.dart';
import 'package:nft_app/presenter/home/intro/widgets/intro_content.dart';

class IntroBodyPage extends StatelessWidget {
  const IntroBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Color.fromARGB(255, 16, 17, 19),
      textStyle: TextStyle(color: Colors.white),
      child: IntroContent(),
    );
  }
}
