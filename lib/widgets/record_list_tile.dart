import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weight_track_app/models/record.dart';
import 'package:weight_track_app/view-models/controller.dart';

class RecordListTile extends StatefulWidget {
  final Record record;
  const RecordListTile({Key? key, required this.record}) : super(key: key);

  @override
  State<RecordListTile> createState() => _RecordListTileState();
}

class _RecordListTileState extends State<RecordListTile> {
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: ListTile(
          leading: _buildDate(),
          title: _buildWeight(),
          trailing: _buildIcons(),
        ),
      ),
    );
  }

  Row _buildIcons() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.edit,
              color: Colors.grey,
            ),
          ),
          IconButton(
              onPressed: () {
                _controller.deleteRecord(widget.record);
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ))
        ],
      );

  Center _buildWeight() => Center(
          child: Text(
        ' ${widget.record.weight}',
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ));

  Text _buildDate() => Text(
        DateFormat("EEE,MMM d").format(widget.record.datetime),
      );
}
