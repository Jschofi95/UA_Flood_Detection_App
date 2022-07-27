import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'data_model.dart';
import 'card_data.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  List<DataModel> data = []; // Store all data items to be displayed

  // Load firestore data when DataPage is initialized
  @override
  void initState() {
    getRecords();
    // If an item is added to the database, add it to the data list (automatically display new items)
    FirebaseFirestore.instance.collection('item').snapshots().listen((records) {
      mapRecords(records);
    });
    super.initState();
  }

  // Get records from firestore database
  getRecords() async {
    // Store all items in a 'QuerySnapshot' type variable
    var records = await FirebaseFirestore.instance.collection('item').get();
    mapRecords(records);
  }

  mapRecords(QuerySnapshot<Map<String, dynamic>> records) {
    var list = records.docs
        .map((item) => DataModel(
              serialNumber: item['serial_number'],
              sensorType: item['sensor_type'],
              sensorReading: item['sensor_reading'],
              month: item['month'],
              day: item['day'],
              year: item['year'],
              hour: item['hour'],
              minute: item['minute'],
              second: item['second'],
              city: item['city'],
              state: item['state'],
              zip: item['zip'],
              locationName: item['location_name'],
            ))
        .toList();

    setState(() {
      data = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data.isNotEmpty
          ? ListView.builder(
              // If _data is not empty, display data, else show no data message
              itemCount: data.length,
              itemBuilder: (context, index) {
                return CardData(
                  serialNumber: data[index].serialNumber,
                  month: data[index].month,
                  day: data[index].day,
                  year: data[index].year,
                  hour: data[index].hour,
                  minute: data[index].minute,
                  second: data[index].second,
                  sensorType: data[index].sensorType,
                  sensorReading: data[index].sensorReading,
                  locationName: data[index].locationName,
                  city: data[index].city,
                  state: data[index].state,
                  zip: data[index].zip,
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
}
