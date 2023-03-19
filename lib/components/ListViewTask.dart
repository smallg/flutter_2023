import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewTask extends StatefulWidget {
  const ListViewTask({Key? key}) : super(key: key);

  @override
  State<ListViewTask> createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask> {
  final List<String> items =
      List.generate(30, (index) => 'listViewItem $index');

  getListView1() {
    return ListView(
      children: [
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
        const Text('1sadfk;ksdjflj'),
      ],
    );
  }

  getListView2() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var item = items[index];
        return Text(item);
      },
      itemCount: items.length,
    );
  }

  getListView3() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          var item = items[index];
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              item,
              style: const TextStyle(
                color: Colors.green,
              ),
            ),
          );
        },
        itemCount: items.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.lightGreen,
            height: 30,
            endIndent: 10,
            indent: 20,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return getListView3();
  }
}
