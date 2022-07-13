import 'package:flutter/material.dart';

class NFTMenuUserName extends StatelessWidget {
  const NFTMenuUserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Carlos Casanova',
              style: TextStyle(
                color: Colors.white,
                wordSpacing: 3,
                fontSize: 20,
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '4.5',
              style:
                  TextStyle(color: Colors.white, wordSpacing: 6, fontSize: 16),
            ),
            SizedBox(width: 5),
            Icon(Icons.star, color: Colors.amber, size: 14),
            SizedBox(width: 8),
            Text(
              '|  92',
              style:
                  TextStyle(color: Colors.white, wordSpacing: 6, fontSize: 16),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.favorite, color: Colors.purple, size: 14),
          ],
        ),
      ],
    );
  }
}
