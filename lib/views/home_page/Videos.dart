import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  final Widget image;
  final Widget imagevideo;
  Video({
    this.title,
    this.subtitle,
    this.image,
    this.icon,
    this.imagevideo,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(child: imagevideo,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0))

          ),

        ),
        ListTile(
          trailing: icon,
          title: Text(title ?? ''),
          leading: CircleAvatar( radius: 22,backgroundImage: NetworkImage('https://www.elmogaz.com/upload/library/U/85/img/images/7751f2ebebba8407ce998a96617b5ed1%281%29.jpg', ),),
          subtitle: Text(subtitle ?? ''),
        )
      ],
    );
  }
}
