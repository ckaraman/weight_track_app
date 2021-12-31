import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weight_track_app/models/record.dart';

class RecordListTile extends StatefulWidget {
  final Record record;
  const RecordListTile({Key? key, required this.record}) : super(key: key);

  @override
  State<RecordListTile> createState() => _RecordListTileState();
}

class _RecordListTileState extends State<RecordListTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: ListTile(
          leading: Text(
            DateFormat("EEE,MMM d").format(widget.record.datetime),
          ),
          title: const Center(
              child: Text(
            '75',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
