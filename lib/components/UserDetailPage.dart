import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/friend.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Friend;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              backgroundImage: NetworkImage(args.avatar),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            Text(
              args.name,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                args.email,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Friend List'),
            ),
          ],
        ),
      ),
    );
  }
}
