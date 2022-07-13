import 'package:flutter/material.dart';

class NFTSearchField extends StatelessWidget {
  const NFTSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 42, 45, 58),
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          labelText: 'Search',
          labelStyle: TextStyle(color: Colors.white),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
