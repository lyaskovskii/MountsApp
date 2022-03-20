import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/models/bottom_bar_item.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  List<BottomBarItem> barItems = [
    BottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
    BottomBarItem(icon: Icons.explore, label: 'Explore', isSelected: false),
    BottomBarItem(icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
    BottomBarItem(
        icon: Icons.person_outline, label: 'Profile', isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [],
      ),
    );
  }
}
