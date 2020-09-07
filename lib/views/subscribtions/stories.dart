import 'package:flutter/material.dart';
class Stories extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ 
        CircleAvatar(
          backgroundImage: AssetImage('images/u.jpg'),
        )
      ],
    );
  }
}
