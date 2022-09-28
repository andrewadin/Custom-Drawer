import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

class MyDrawer extends StatefulWidget{
  MyDrawer({Key? key}) : super(key: key);
  createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer>{

  Widget buildProfilePicture(){
    return const CircleAvatar(
      backgroundImage: NetworkImage('https://yt3.ggpht.com/Kf-qgbQDTOdfPnPbhDk5O_pXGbMDioIaUvNgnKwbquVQ5Fbuw69Ypp01sb6gbLx_A9bGZcC1=s88-c-k-c0x00ffffff-no-rj-mo'),
      radius: 50,
    );
  }

  Widget buildUsername(){
    return const Text('Andrew',
    style: TextStyle(
      fontSize: 20,
      color: Colors.white
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
            child: Column(
              children: [
                buildProfilePicture(),
                buildUsername()
              ],
            ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: ((context) => Screen1())
                  )
                );
              },
              child: ListTile(
                title: RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Icon(Icons.home,
                        color: Colors.lightBlue,
                        size: 30,),
                        ),
                      ),
                      TextSpan(
                        text: 'Home',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                        )
                      )
                    ],
                  )
                ),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: ((context) => Screen2())
                  )
                );
              },
              child: ListTile(
                title: RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Icon(Icons.sports_baseball,
                        color: Colors.lightBlue,
                        size: 30,),
                        ),
                      ),
                      TextSpan(
                        text: 'Other Screen',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                        )
                      )
                    ],
                  )
                ),
              ),
            ),
        ],
      ),
    );
  }
}