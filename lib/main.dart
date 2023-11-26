// main.dart
import 'package:flutter/material.dart';
import 'package:whatsapp/design/Calllist.dart';
import 'package:whatsapp/design/Statuslist.dart';
import 'package:whatsapp/models/calldata.dart';
import 'package:whatsapp/splashscreen.dart';
import 'models/chatdata.dart';
import 'design/Chatlist.dart';
import 'models/statusdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}
class Homepage extends StatelessWidget {
   Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {
                // Add your camera functionality here
                print('Camera button pressed');
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed:() {
            // Add your search functionality here
            print('Search button pressed');
            },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed:() {
            // Add your functionality here
            print('More Vert button pressed');
            },
            ),
          ],
          backgroundColor: const Color(0xff075e54),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ChatsPage(chatList: clist),

            StatusPage(statusList: slist),

            CallPage(callList: callList,),

          ],
        ),
      ),
    );
  }
}
