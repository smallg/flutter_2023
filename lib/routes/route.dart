import 'package:flutter/material.dart';
import '../components/FriendList.dart';
import '../components/UserDetailPage.dart';

var customRoutes = <String, WidgetBuilder>{
  '/user-list': (context) => const FriendList(),
  '/user-detail': (context) => const UserDetailPage(),
};
