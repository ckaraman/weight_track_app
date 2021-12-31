import 'package:flutter/material.dart';

import 'widgets/record_list_tile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("History"),
        ),
        body: ListView(children: const [
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
        ]));
  }
}
