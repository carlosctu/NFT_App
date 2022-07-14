import 'package:flutter/material.dart';

class InfoBackButton extends StatelessWidget {
  const InfoBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 24,
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
