import 'package:flutter/material.dart';

Widget CustomAppbar() {
  return AppBar(

    actions: [
      Icon(Icons.search),
    ],

    title: Image.network(
        'https://cdn.mos.cms.futurecdn.net/SytNGv3ZxAVCkvcspmbbvh-320-80.jpg',width: 125,),

    shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)),
  );
}
