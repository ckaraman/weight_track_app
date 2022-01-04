import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight_track_app/views/add_record.dart';
import 'package:weight_track_app/views/graph.dart';
import 'package:weight_track_app/views/history.dart';

import '../view-models/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(Controller());
  int _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.auto_graph_outlined,
    Icons.notes_outlined,
  ];
  List<Widget> selectedScreen = <Widget>[
    const GraphScreen(),
    const HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedScreen[_bottomNavIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Get.to(() => const AddRecordView());
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.black,
        height: Get.height / 13,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        onTap: (index) => setState(
          () => _bottomNavIndex = index,
        ),
        notchSmoothness: NotchSmoothness.smoothEdge,
      ),
    );
  }
}

class Second extends StatelessWidget {
  final Controller ctrl = Get.find();

  Second({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(''),
      ),
    );
  }
}
