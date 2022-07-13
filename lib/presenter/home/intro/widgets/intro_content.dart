import 'package:flutter/material.dart';
import 'package:nft_app/presenter/home/intro/widgets/title_and_button_intro.dart';
import 'image01_intro.dart';
import 'image02_intro.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        RightImageIntro(),
        LeftImageIntro(),
        TitleAndButtonIntro(),
      ],
    );
  }
}
