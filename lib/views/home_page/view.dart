import 'package:flutter/material.dart';
import 'package:youtube/views/home_page/Videos.dart';
import 'package:youtube/views/widgets/Button_navigation_bar.dart';
import 'package:youtube/views/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: CustomAppbar(),
        body: Column(
          children: [

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    child: Chip(
                      label: Text('video'),
                      backgroundColor:
                          pageIndex == 0 ? Colors.red : Colors.grey,
                    ),
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Chip(
                 label: Text('Music'),
                      backgroundColor: pageIndex==1?Colors.red:Colors.grey,
                    ),
                    onTap: (){
                      setState(() {
                        pageIndex=1;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Chip(
                      label: Text('Games'),
                      backgroundColor: pageIndex==2?Colors.red:Colors.grey,
                    ),
                    onTap: (){
                      setState(() {
                        pageIndex=2;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Chip(
                      label: Text('Movies'),
                      backgroundColor: pageIndex==3?Colors.red:Colors.grey,
                    ),
                    onTap: (){
                      setState(() {
                        pageIndex=3;
                      });
                    },
                  )

                ],

              ),

            ),


            Expanded(
                child: ListView.builder( itemCount:15,itemBuilder: (_,index) {
                  return Video(
                    subtitle: 'Elda7he7-Videos',
                    title: 'ELda7he7 ep10',
                    image: Image.network(
                        'https://www.shefk.com/wp-content/uploads/2018/07/1532607990_maxresdefault.jpg'),
                    icon: Icon(Icons.more_vert),
                    imagevideo: Image.network('https://i.ytimg.com/vi/1SZZpfqW81U/maxresdefault.jpg'),

                  );

  }
            )


            )

          ],
        ),
        bottomNavigationBar: Navigation(

        ),

      ),
    );
  }
}
