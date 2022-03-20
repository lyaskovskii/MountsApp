import 'package:flutter/material.dart';

import '../utility/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      alignment: Alignment.bottomLeft,
      color: mainColor,
      child: const Icon(
        Icons.terrain,
        color: Colors.white,
        size: 80.0,
      ),
    );
  }
}
