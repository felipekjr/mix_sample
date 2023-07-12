import 'package:flutter/material.dart';

import 'ds_button/ds_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mix Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DsButton(
              label: 'Primary',
              onPressed: () {},
            ),
            DsButton(
              label: 'Secundary',
              onPressed: () {},
              type: DsButtonType.secondary,
            ),
            DsButton(
              label: 'Disabled',
              onPressed: () {},
              disabled: true,
            ),
            DsButton(
              label: 'Secondary Disabled',
              onPressed: () {},
              type: DsButtonType.secondary,
              disabled: true,
            ),
            DsButton(
              label: 'Other type',
              onPressed: () {},
              type: DsButtonType.global,
            ),
          ],
        ),
    );
  }
}