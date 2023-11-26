import 'package:flutter/material.dart';
import '../models/chatdata.dart';

class ChatsPage extends StatelessWidget {
  final List<Chat> chatList;

  const ChatsPage({Key? key, required this.chatList}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chat = chatList[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chat.profilePic),
          ),
          title: Text(chat.name),
          subtitle: Row(
            children: [
              Icon(
                Icons.done_all,
                color: Colors.blue, // Adjust the color as needed
                size: 16,
              ),
              SizedBox(width: 5),
              Text(chat.lastMessage),
            ],
          ),
          trailing: Text(chat.messageTime),
          onTap: () {
            // Handle tapping on a chat item
            print('Tapped on chat ${chat.name}');
          },
        );

      },
    );
  }
}