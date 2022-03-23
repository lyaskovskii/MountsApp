import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/components/details_rating_bar.dart';

import '../components/details_bottom_actions.dart';
import '../models/mount_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({required this.mount, Key? key}) : super(key: key);

  final MountModel mount;

  @override
  Widget build(BuildContext context) {
    var selectedItem = mount;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(selectedItem.path),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          selectedItem.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          selectedItem.location,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    iconTheme: const IconThemeData(color: Colors.white),
                    title: const Center(child: Icon(Icons.terrain, size: 40)),
                    actions: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Icon(Icons.pending, size: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const DetailsRatingBar(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, bottom: 20, right: 20),
                        child: Text(
                          'About ${selectedItem.name}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, bottom: 20, right: 20),
                        child: Text(
                          selectedItem.description,
                          style: const TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                const DetailsBottomActions()
              ],
            ),
          )
        ],
      ),
    );
  }
}
