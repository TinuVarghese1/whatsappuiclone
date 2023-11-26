import 'package:flutter/material.dart';
import '../models/calldata.dart'; // Adjust the import path based on your project structure

class CallPage extends StatelessWidget {
  final List<Call> callList;

  const CallPage({Key? key, required this.callList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final call = callList[index];

        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(call.profilePic),
          ),
          title: Text(call.name),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_received,
                color: Colors.green, // Adjust the color as needed
                size: 18,
              ),
              SizedBox(width: 4),
              Text(call.callTime),
            ],
          ),
          trailing: Icon(Icons.call, color: Color(0xff075e54)),
          onTap: () {
            // Handle tapping on a call item
            print('Tapped on ${call.name} call');
          },
        );
      },
    );
  }
}
