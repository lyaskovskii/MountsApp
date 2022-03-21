import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/utility/constants.dart';
import 'package:flutter_codelab_1/utility/mocks.dart';

class DetailsRatingBar extends StatelessWidget {
  const DetailsRatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          sampleRatingData.length,
          (index) => Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Colors.grey.withOpacity(0.2), width: 2)),
              child: Column(
                children: [
                  Text(sampleRatingData.entries.elementAt(index).key,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text(sampleRatingData.entries.elementAt(index).value,
                      style: const TextStyle(
                          color: mainColor, fontWeight: FontWeight.bold)),
                ],
              )),
        ),
      ),
    );
  }
}
