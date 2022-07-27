import 'package:firebase_core/firebase_core.dart';

import 'firebase/firebase_options.dart';
import 'package:flutter/material.dart';
import 'appBarTitleLayout.dart';
import 'data_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(FloodDetectionApp());
}

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
