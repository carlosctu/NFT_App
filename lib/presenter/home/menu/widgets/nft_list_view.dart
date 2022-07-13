import 'package:flutter/material.dart';
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
          Column(
            children: [
              const NFTMenuUserName(),
              const SizedBox(height: 20),
              const NFTSearchField(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  children: const [
                    NFTCardMenu(
                        image: '../../images/finger_left.png',
                        price: '1.25',
                        title: 'Hologram hand left',
                        hearts: '92'),
                    NFTCardMenu(
                        image: '../../images/finger.png',
                        price: '0.8',
                        title: 'Hologram hand right',
                        hearts: '19'),
                    NFTCardMenu(
                        image: '../../images/hand_free_flow.png',
                        price: '2.4',
                        title: 'Hologram hand free flow',
                        hearts: '99'),
                    NFTCardMenu(
                        image: '../../images/finger_crushed.png',
                        price: '1.06',
                        title: 'Hologram crushed sheet',
                        hearts: '35'),
                    NFTCardMenu(
                        image: '../../images/last_panda.jpg',
                        price: '3.2',
                        title: 'Floating Panda',
                        hearts: '120'),
                    NFTCardMenu(
                        image: '../../images/beginning_of_the_end.jpg',
                        price: '0.86',
                        title: 'Hologram crushed sheet',
                        hearts: '44'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
