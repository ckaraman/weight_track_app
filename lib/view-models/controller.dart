import 'package:get/get.dart';
import 'package:weight_track_app/models/record.dart';

class Controller extends GetxController {
  var records = <Record>[
    Record(weight: 80, datetime: DateTime.now(), notes: "AAA"),
    Record(weight: 81, datetime: DateTime.now(), notes: "BBB"),
    Record(weight: 84, datetime: DateTime.now(), notes: "CCC"),
    Record(weight: 85, datetime: DateTime.now(), notes: "DDD")
  ].obs;

  void addRecord() {
    records.add(Record(weight: 80, datetime: DateTime.now(), notes: "XXXX"));
    print(records.length);
  }
}
