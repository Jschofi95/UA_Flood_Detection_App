import 'package:flutter/material.dart';

class AppBarTitleLayout extends StatelessWidget {
  const AppBarTitleLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // UA Image
        Container(
          margin: const EdgeInsets.only(
            left: 0.0,
          ),
          height: 40,
          width: 40,
          child: Image.asset('lib/icons/UA.jpg'),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 25.0,
          ),
          child: const Text(
            'UA Flood Detection App',
            style: TextStyle(
              fontSize: 20,
              //fontFamily: 'Raleway', // Font style
            ),
          ),
        ),
      ],
    );
  }
}
