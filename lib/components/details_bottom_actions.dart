import 'package:flutter/material.dart';

import '../utility/constants.dart';

class DetailsBottomActions extends StatelessWidget {
  const DetailsBottomActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: mainColor,
              child: InkWell(
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor: Colors.white.withOpacity(0.2),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(21),
                  child: const Text('Book Now',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Icon(
              Icons.bookmark_add_outlined,
              color: mainColor,
              size: 25,
            ),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(color: mainColor, width: 2.0),
                borderRadius: BorderRadius.circular(15)),
          ),
        ],
      ),
    );
  }
}
