import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  const CardData(
      {Key? key,
      required this.serialNumber,
      required this.month,
      required this.day,
      required this.year,
      required this.hour,
      required this.minute,
      required this.second,
      required this.sensorType,
      required this.value})
      : super(key: key);

  final String serialNumber;
  final int month;
  final int day;
  final int year;
  final int hour;
  final int minute;
  final int second;
  final String sensorType;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        right: 2.0,
        top: 1.0,
        bottom: 1.0,
      ),
      child: Card(
        // Card view to store each data element in
        color: const Color.fromARGB(255, 240, 227, 229),
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xFF871027),
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: <Widget>[
            Text('Serial number: $serialNumber'),
            Text('Type: $sensorType'),
            Text('Value: $value'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    '$month/$day/$year',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 5.0),
                  child: Text(
                    '$hour:$minute:$second',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
