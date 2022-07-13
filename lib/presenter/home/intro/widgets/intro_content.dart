import 'package:flutter/material.dart';
import 'package:nft_app/presenter/home/intro/widgets/title_and_button_intro.dart';
import 'right_image.dart';
import 'left_image.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        RightImage(),
        LeftImage(),
        TitleAndButtonIntro(),
      ],
    );
  }
}
