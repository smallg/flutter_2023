import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/ButtonTask.dart';
import 'package:flutter_application_2/components/ContainerTask.dart';
import 'package:flutter_application_2/components/UserDetailPage.dart';
import 'package:flutter_application_2/routes/route.dart';
import 'components/ActionButton.dart';
import 'components/ExpandableFab.dart';
import 'components/FriendList.dart';
import 'components/GestureTask.dart';
import 'components/ImageTask.dart';
import 'components/ListViewTask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const FriendList(),
      // initialRoute: '/',
      routes: customRoutes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // getUsers() {
  //   var url = 'https://randomuser.me/api/?results=30';
  //   var uri = Uri.parse(url);
  //   // var uri = Uri.https('randomuser.me', 'api', { 'results': '30'});
  //   http.get(uri).then((res) => {print(res.body)});
  // }
  static const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];
  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: const ImageTask(),
      // body: const ButtonTask(),
      // body: const ContainerTask(),
      // body: const GestureTask(),
      // body: const ListViewTask(),
      body: const FriendList(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print('floating action button');
      //   },
      //   child: const Icon(Icons.add_business_sharp),
      // ),
      // floatingActionButton: ExpandableFab(
      //   distance: 112.0,
      //   children: [
      //     ActionButton(
      //       onPressed: () => _showAction(context, 0),
      //       icon: const Icon(Icons.format_size),
      //     ),
      //     ActionButton(
      //       onPressed: () => _showAction(context, 1),
      //       icon: const Icon(Icons.insert_photo),
      //     ),
      //     ActionButton(
      //       onPressed: () => _showAction(context, 2),
      //       icon: const Icon(Icons.videocam),
      //     ),
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
