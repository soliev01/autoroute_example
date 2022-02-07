import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
    );

    return const Center(
      child: Text(
        'Settings',
        style: style,
      ),
    );
  }
}
