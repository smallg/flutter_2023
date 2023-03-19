import 'dart:convert';

import 'package:flutter/material.dart';

class Friend {
  @required late String avatar;
  @required late String name;
  @required late String email;

  Friend({required this.avatar, required this.name, required this.email});

  static List<Friend> resolveDataFromResponse(String responseData) {
    var json = jsonDecode(responseData);
    var results = json['results'];
    var result = results.map((obj) => Friend.fromMap(obj)).toList().cast<Friend>();
    return result;
  }

  static Friend fromMap(Map map) {
    var name = map['name'];
    return Friend(
      avatar: map['picture']['large'],
      name: '${name['first']} ${name['last']}',
      email: map['email'],
    );
  }
}