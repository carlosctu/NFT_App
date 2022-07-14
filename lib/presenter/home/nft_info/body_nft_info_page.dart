import 'package:flutter/material.dart';
import 'package:nft_app/core/app_assets.dart';

import 'widgets/back_button.dart';

class NFTInfo extends StatelessWidget {
  const NFTInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              const InfoBackButton(),
              Container(
                width: 220,
                height: 240,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/finger_left.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Hologram Hand Left",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
