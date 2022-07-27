// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    required this.serialNumber,
    required this.sensorType,
    required this.sensorReading,
    required this.month,
    required this.day,
    required this.year,
    required this.hour,
    required this.minute,
    required this.second,
    required this.city,
    required this.state,
    required this.zip,
    required this.locationName,
  });

  String serialNumber;
  String sensorType;
  int sensorReading;
  int month;
  int day;
  int year;
  int hour;
  int minute;
  int second;
  String city;
  String state;
  int zip;
  String locationName;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        serialNumber: json["serial_number"],
        sensorType: json["sensor_type"],
        sensorReading: json["sensor_reading"],
        month: json["month"],
        day: json["day"],
        year: json["year"],
        hour: json["hour"],
        minute: json["minute"],
        second: json["second"],
        city: json["city"],
        state: json["state"],
        zip: json["zip"],
        locationName: json["location_name"],
      );

  Map<String, dynamic> toJson() => {
        "serial_number": serialNumber,
        "sensor_type": sensorType,
        "sensor_reading": sensorReading,
        "month": month,
        "day": day,
        "year": year,
        "hour": hour,
        "minute": minute,
        "second": second,
        "city": city,
        "state": state,
        "zip": zip,
        "location_name": locationName,
      };
}
