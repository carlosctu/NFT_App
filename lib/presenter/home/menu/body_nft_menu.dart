import 'package:flutter/material.dart';
import 'widgets/nft_header.dart';
import 'widgets/nft_list_view.dart';

class BodyNFTMenu extends StatefulWidget {
  const BodyNFTMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyNFTMenu> createState() => _BodyNFTMenuState();
}

class _BodyNFTMenuState extends State<BodyNFTMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Column(
              children: const [
                NFTHeader(),
                NFTListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
