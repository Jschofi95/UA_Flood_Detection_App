import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  const CardData({
    Key? key,
    required this.serialNumber,
    required this.month,
    required this.day,
    required this.year,
    required this.hour,
    required this.minute,
    required this.second,
    required this.sensorType,
    required this.sensorReading,
    required this.locationName,
    required this.city,
    required this.state,
    required this.zip,
  }) : super(key: key);

  final String serialNumber;
  final int month;
  final int day;
  final int year;
  final int hour;
  final int minute;
  final int second;
  final String sensorType;
  final int sensorReading;
  final String locationName;
  final String city;
  final String state;
  final int zip;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Serial Number:  ',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: serialNumber,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Sensor Type:  ',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: sensorType,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Location:  ',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: locationName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '$city, $state\t$zip',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );

    // return Padding(
    //   padding: const EdgeInsets.only(
    //     left: 2.0,
    //     right: 2.0,
    //     top: 1.0,
    //     bottom: 1.0,
    //   ),
    //   child: Card(
    //     // Card view to store each data element in
    //     color: const Color.fromARGB(255, 240, 227, 229),
    //     shape: const RoundedRectangleBorder(
    //       side: BorderSide(
    //         color: Color(0xFF871027),
    //       ),
    //       borderRadius: BorderRadius.all(Radius.circular(12)),
    //     ),
    //     child: Column(
    //       children: <Widget>[
    //         Text('Serial number: $serialNumber'),
    //         Text('Type: $sensorType'),
    //         Text('Value: $sensorReading'),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.end,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.all(1.0),
    //               child: Text(
    //                 '$month/$day/$year',
    //                 style: const TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(left: 2.0, right: 5.0),
    //               child: Text(
    //                 '$hour:$minute:$second',
    //                 style: const TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
