import 'package:flutter/material.dart';
import 'appBarTitleLayout.dart';
import 'data_model.dart';
import 'card_data.dart';

void main() => runApp(FloodDetectionApp());

class FloodDetectionApp extends StatelessWidget {
  const FloodDetectionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const AppBarTitleLayout(),
          backgroundColor: const Color(0xFF871027),
        ),
        body: DataPage(),
      ),
    );
  }
}

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  DataModel data1 = DataModel('270b9', 10, 12, 2022, 10, 43, 22, 'Mechanical',
      'Closed'); // Just here for testing (remove later)

  DataModel data2 = DataModel('223c2', 10, 10, 2022, 10, 50, 22, 'Optical',
      '2.33123'); // Just here for testing (remove later)

  DataModel data3 = DataModel('224c3', 10, 10, 2022, 10, 55, 34, 'Optical',
      '2.55152'); // Just here for testing (remove later)

  DataModel data4 = DataModel('224c5', 10, 10, 2022, 11, 10, 15, 'Optical',
      '2.63426'); // Just here for testing (remove later)

  DataModel data5 = DataModel('270b10', 10, 12, 2022, 10, 50, 10, 'Mechanical',
      'Closed'); // Just here for testing (remove later)

  DataModel data6 = DataModel('2270b11', 10, 10, 2022, 10, 55, 10, 'Mechanical',
      'Closed'); // Just here for testing (remove later)

  DataModel data7 = DataModel('270b12', 10, 10, 2022, 11, 5, 10, 'Mechanical',
      'Closed'); // Just here for testing (remove later)

  DataModel data8 = DataModel('270b12', 10, 10, 2022, 11, 10, 12, 'Mechanical',
      'Closed'); // Just here for testing (remove later)

  DataModel data9 = DataModel('270b13', 10, 11, 2022, 10, 43, 22, 'Mechanical',
      'Open'); // Just here for testing (remove later)

  DataModel data10 = DataModel('270b14', 10, 11, 2022, 10, 50, 30, 'Mechanical',
      'Closed'); // Just here for testing (remove later)

  DataModel data11 = DataModel('270b15', 10, 11, 2022, 10, 55, 55, 'Mechanical',
      'Closed'); // Just here for testing (remove later)

  late final List<DataModel> _data = [
    data1,
    data2,
    data3,
    data4,
    data5,
    data6,
    data7,
    data8,
    data9,
    data10,
    data11,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _data.isNotEmpty
          ? ListView.builder(
              // If _data is not empty, display data, else show no data message
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return CardData(
                  serialNumber: _data[index].serialNumber,
                  month: _data[index].month,
                  day: _data[index].day,
                  year: _data[index].year,
                  hour: _data[index].hour,
                  minute: _data[index].minute,
                  second: _data[index].second,
                  sensorType: _data[index].sensorType,
                  value: _data[index].value,
                );
              },
            )
          : const Center(
              child: Text('No items to display'),
            ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF871027),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Graph',
            backgroundColor: Colors.white,
          ),
        ],
        selectedItemColor: Colors.white,
      ),
    );
  }

  void getData() {
    // TODO: Grab data from firebase and store it in a DataModel object
  }
}
