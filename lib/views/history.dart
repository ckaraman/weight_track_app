import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight_track_app/view-models/controller.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("History"),
        actions: [
          IconButton(
            onPressed: _controller.addRecord,
            icon: const Icon(
              Icons.add,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      body: Obx(
        () => ListView(
          children: [
            Text(_controller.records[0].notes!),
            Text(_controller.records[1].notes!),
            Text(_controller.records[2].notes!),
            Text(_controller.records[3].notes!),
            Text("Listede ${_controller.records.length} eleman var.")
          ],
        ),
      ),
    );
  }
}
