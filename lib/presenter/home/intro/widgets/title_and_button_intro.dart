import 'package:flutter/material.dart';
import 'package:nft_app/core/app_assets.dart';
import '../../menu/body_nft_menu.dart';

class TitleAndButtonIntro extends StatefulWidget {
  const TitleAndButtonIntro({
    Key? key,
  }) : super(key: key);

  @override
  State<TitleAndButtonIntro> createState() => _TitleAndButtonIntroState();
}

class _TitleAndButtonIntroState extends State<TitleAndButtonIntro> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // Stack irá fazer com que as imagens fiquem sobrepostas em ordem decrescente
      // por isso o botão está encima da última imagem (pq está ao final)
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 54,
              left: 22,
            ),
            child: SizedBox(
              width: 340,
              child: Text(
                "Collect and discover,\na new era of Crypto Currency",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  wordSpacing: 3.5,
                ),
              ),
              // ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.bottomCenter,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(240, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  backgroundColor: const Color.fromARGB(255, 133, 75, 254),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const BodyNFTMenu();
                      },
                    ),
                  );
                },
                child: const Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
