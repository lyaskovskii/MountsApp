import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/components/bottom_bar.dart';
import 'package:flutter_codelab_1/components/category.dart';
import 'package:flutter_codelab_1/utility/constants.dart';

import '../components/custom_drawer.dart';
import '../components/header.dart';
import '../components/mount_list_vew.dart';
import '../components/search.dart';

class MountsApp extends StatelessWidget {
  const MountsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.brightness_2,
            color: Colors.orange,
          ),
          SizedBox(
            width: 10.0,
            height: 10.0,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: mainColor),
        title: const Center(
          child: Icon(
            Icons.terrain,
            size: 40.0,
          ),
        ),
      ),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountListView(),
          ),
          AppCategory(),
          AppBottomBar(),
        ],
      ),
    );
  }
}
