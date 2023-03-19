import 'package:flutter/material.dart';

class GestureTask extends StatelessWidget {
  const GestureTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        print('on tap')
      },
      onLongPress: () => {
        print('long press')
      },
      onScaleStart:(details) => {
        print('scale start ${details}')
      },
      child: Center(
        child: Container(
          color: Colors.blue[50],
          child: const Text('Gesture task'),
        ),
      ),
    );
  }
}
