import 'package:flutter/material.dart';
import 'package:nft_app/core/app_assets.dart';
import 'package:nft_app/presenter/home/nft_info/body_nft_info_page.dart';
import 'nft_card.dart';
import 'nft_user_name.dart';
import 'search_field.dart';

class NFTListView extends StatelessWidget {
  const NFTListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const NFTMenuUserName(),
          const NFTSearchField(),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const NFTInfo();
                  }),
                );
              },
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 24,
                runSpacing: 24,
                children: const [
                  NFTCard(
                      image: fingerLeft,
                      price: '1.25',
                      title: 'Hologram hand left',
                      hearts: '92'),
                  NFTCard(
                      image: fingerRight,
                      price: '0.8',
                      title: 'Hologram hand right',
                      hearts: '19'),
                  NFTCard(
                      image: hologramHandFree,
                      price: '2.4',
                      title: 'Hologram hand free flow',
                      hearts: '99'),
                  NFTCard(
                      image: fingerCrushed,
                      price: '1.06',
                      title: 'Hologram crushed sheet',
                      hearts: '35'),
                  NFTCard(
                      image: lastPanda,
                      price: '3.2',
                      title: 'Floating Panda',
                      hearts: '120'),
                  NFTCard(
                      image: begOfEnd,
                      price: '0.86',
                      title: 'Hologram crushed sheet',
                      hearts: '44'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
