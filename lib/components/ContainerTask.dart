import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerTask extends StatelessWidget {
  const ContainerTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Container(
    //     color: Colors.red,
    //     width: 200,
    //     height: 200,
    //     margin: const EdgeInsets.all(20),
    //     // constraints: const BoxConstraints.expand(),
    //     alignment: Alignment.bottomCenter,
    //     child: const Text('test text'),
    //   ),
    // );
    return Center(
      child: Container(
        color: Colors.red,
        child: Transform.scale(
          scale: 1.5,
          child: const FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
