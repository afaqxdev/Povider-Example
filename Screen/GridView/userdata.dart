import 'package:flutter/material.dart';

class dataaa extends StatelessWidget {
  const dataaa({super.key, required this.avav, required this.data});
  final String data;
  final String avav;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          Text(avav),
        ],
      )),
    );
  }
}
