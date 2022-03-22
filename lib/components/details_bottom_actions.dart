import 'package:flutter/material.dart';

import '../utility/constants.dart';

class DetailsBottomActions extends StatefulWidget {
  const DetailsBottomActions({Key? key}) : super(key: key);

  @override
  State<DetailsBottomActions> createState() => _DetailsBottomActionsState();
}

class _DetailsBottomActionsState extends State<DetailsBottomActions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(),
          ),
          Container(),
        ],
      ),
    );
  }
}
