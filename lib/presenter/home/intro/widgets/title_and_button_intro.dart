import 'package:flutter/material.dart';
import '../../menu/body_nft_menu.dart';

class TitleAndButtonIntro extends StatelessWidget {
  const TitleAndButtonIntro({
    Key? key,
  }) : super(key: key);

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
            padding: EdgeInsets.only(top: 80, left: 22),
            child: SizedBox(
              width: 340,
              height: 170,
              child: Text(
                "Collect and discover,\na new era of Crypto Currency",
                style: TextStyle(
                  fontSize: 36,
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
              alignment: Alignment.bottomCenter,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(360, 60),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: const Color.fromARGB(255, 133, 75, 254),
                  textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const BodyNFTMenu();
                    }),
                  );
                },
                child: const Text(
                  "Let's Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
