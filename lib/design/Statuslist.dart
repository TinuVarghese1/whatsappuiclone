import 'package:flutter/material.dart';
import '../models/statusdata.dart';

class StatusPage extends StatelessWidget {
  final List<StatusUpdate> statusList;

  const StatusPage({Key? key, required this.statusList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: statusList.length + 2, // Add 2 for the user's own status and the "Recent updates" text
        itemBuilder: (context, index) {
          if (index == 0) {
            // Display the user's own status at the top with an "add" icon
            return ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/logan-weaver-lgnwvr-p0B7ueoZz8E-unsplash.jpg'), // Replace with your profile pic
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              title: Text('Your Status'),
              subtitle: Text('Tap to add status update'),
              onTap: () {
                // Handle tapping on the user's own status
                print('Tapped on your status');
              },
            );
          } else if (index == 1) {
            // Display the "Recent updates" text
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recent updates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 10,
                ),
              ),
            );
          }

          final status = statusList[index - 2];

          return ListTile(
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xff075e54),
                  width: 2.5, // Adjust the width as needed
                ),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(status.profilePic),
              ),
            ),
            title: Text(status.name),
            subtitle: Text(status.timeAgo),
            onTap: () {
              // Handle tapping on a status item
              print('Tapped on ${status.name} status');
            },
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Handle the action for the first FAB
              print('First FAB pressed');
            },
            tooltip: 'FAB 1',
            backgroundColor: Color(0xff075e54),

            // Set the background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0), // Set the border radius
            ),
            child: Icon(Icons.edit,),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              // Handle the action for the second FAB
              print('Second FAB pressed');
            },
            tooltip: 'FAB 2',
            backgroundColor: Color(0xff075e54), // Set the background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0), // Set the border radius
            ),
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }
}
