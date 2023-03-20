import 'package:flutter/material.dart';

import '../components/FriendList.dart';
import '../routes/route.dart';

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
      // home: const FriendList(),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Calls',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: 'Camera',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
            ],
          ),
        ),
      ),
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
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(40),
      //   child: AppBar(
      //     title: Text(names[_selectedIndex]),
      //   ),
      // ),
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
