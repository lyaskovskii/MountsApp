import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/utility/constants.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'images/profile_picture.jpg',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20.0,
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hello, Nikita',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Good morning',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: mainColor,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
