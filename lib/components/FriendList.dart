import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/friend.dart';
import 'UserDetailPage.dart';

class FriendList extends StatefulWidget {
  const FriendList({Key? key}) : super(key: key);

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  List<Friend> _friends = [];
  var url = 'https://randomuser.me/api/?results=30';

  @override
  void initState() {
    super.initState();
    _loadFriendsData();
  }

  _loadFriendsData() async {
    HttpClient httpClient = HttpClient();
    HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
    HttpClientResponse response = await request.close();
    var responseJson = await response.transform(utf8.decoder).join();

    setState(() {
      _friends = Friend.resolveDataFromResponse(responseJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friend List'),
      ),
      body: ListView.builder(
        itemCount: _friends.length,
        itemBuilder: (BuildContext context, int index) {
          var item = _friends[index];
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                  backgroundImage: NetworkImage(item.avatar),
                ),
                title: Text(item.name),
                subtitle: Text(item.email),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                onTap: () => {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const UserDetailPage()))
                  Navigator.pushNamed(
                    context,
                    '/user-detail',
                    arguments: Friend(
                      avatar: item.avatar,
                      name: item.name,
                      email: item.email,
                    ),
                  )
                },
              )
            ],
          );
        },
      ),
    );
  }
}
