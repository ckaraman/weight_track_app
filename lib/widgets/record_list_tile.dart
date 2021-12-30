import 'package:flutter/material.dart';

class RecordListTile extends StatelessWidget {
  const RecordListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        DateTime.now().toIso8601String(),
      ),
      title: const Text('75'),
      trailing: Row(
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
    );
  }
}
