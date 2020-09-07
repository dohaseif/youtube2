import 'package:flutter/material.dart';
import 'package:youtube/views/home_page/Videos.dart';
import 'package:youtube/views/subscribtions/stories.dart';
import 'package:youtube/views/widgets/Button_navigation_bar.dart';
import 'package:youtube/views/widgets/custom_app_bar.dart';

class sub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: CustomAppbar(),
        body: Column(
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stories(),
                Stories(),
                Stories(),
                Stories(),
                Stories(),
                Stories(),
              ],
            ),
            ListView.builder(itemCount: 15,itemBuilder: (_,index){
              return Video(
                image: Image.asset('images/s.jpg'),
                imagevideo: CircleAvatar( backgroundImage: AssetImage('images/u.jpg'),),
                subtitle: 'elda7he7',
                title: 'elda7he7 ep 15',
                icon: Icon(Icons.more_vert),
                
              );
            },)
          ],

        ),
        bottomNavigationBar: Navigation(),
      ),
    );
  }
}
