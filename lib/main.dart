import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:mix_sample/ds_card/ds_card.widget.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DsCard(
                child: const Text(
                  'Card',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                  ),
                ),
              ),
              DsCard(
                inverse: true,
                child: TextMix('Title', variants: [title]),
              ),
              _mixCardX()
            ],
          ),
        ],
      ),
    );
  }

  Pressable _mixCardX() {
    return Pressable(
      onPressed: () {},
      child: CardX(
        mix: Mix(
          textBgColor(Colors.black),
          textColor(Colors.white),
          hover(
            animated(curve: Curves.easeIn),
            scale(1.1),
            bgColor(Colors.red),
            textBgColor(Colors.transparent),
            textColor(Colors.white),
          ),
        ),
        children: [
          TextMix(
            'Lorem ipsum dolor sit amet, consectetur',
            variants: [title],
          ),
          TextMix(
            'Lorem ipsum dolor sit amet, consectetur',
            variants: [paragraph],
          ),
        ],
      ),
    );
  }
}
