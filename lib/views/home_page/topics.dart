import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  final String text;
  final Function onTap;
  final int index;
  final int pageIndex;
  Topics({this.text, this.index, this.pageIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(

        child: Chip(
          label: Text(text),
          backgroundColor: pageIndex == index ? Colors.red : Colors.grey,
        ),
        onTap: onTap,
      ),
    );
  }
}
