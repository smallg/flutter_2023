import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonTask extends StatefulWidget {
  const ButtonTask({Key? key}) : super(key: key);

  @override
  State<ButtonTask> createState() => _ButtonTaskState();
}

class _ButtonTaskState extends State<ButtonTask> {
  var value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MaterialButton(
            // color: const Color.fromARGB(0, 3, 254, 112),
            color: Colors.green.shade300,
            child: const Text('Material'),
            elevation: 5,
            onPressed: () {
              print('material button pressed!');
            },
          ),
          ElevatedButton(
            onPressed: () {
              print('Elevated button pressed!');
            },
            child: const Text('ElevatedButton'),
          ),
          DropdownButton(
            items: [
              DropdownMenuItem(
                child: Text('male'),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text('female'),
                value: 2,
              ),
            ],
            onChanged: (val) {
              setState(() {
                value = val;
              });
            },
            value: value,
            hint: const Text('select sex'),
          ),
          IconButton(
            onPressed: () {
              print('icon button');
            },
            icon: const Icon(Icons.add_to_photos),
            color: Colors.green,
            iconSize: 30.0,
          ),
        ],
      ),
    );
  }
}
