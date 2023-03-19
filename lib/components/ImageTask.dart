import 'package:flutter/material.dart';

class ImageTask extends StatelessWidget {
  const ImageTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                'assets/images/a.jpeg',
                width: 120,
                height: 120,
              ),
              Image.network(
                'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
                width: 120,
                height: 120,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromARGB(0, 189, 142, 142),
                backgroundImage: NetworkImage(
                    'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png'),
                radius: 30,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/a.jpeg',
                image: 'https://picsum.photos/250?image=9',
                width: 120,
                height: 120,
              ),
              Image.asset(
                'assets/images/a.jpeg',
                width: 120,
                height: 120,
                fit: BoxFit.fitHeight,
                repeat: ImageRepeat.repeat,
              ),
            ],
          ),
          const Text(
            'Reloaded 1 of 712 libraries in 341ms (compile: 25 ms, reload: 113 ms, reassemble: 185 ms).',
            textAlign: TextAlign.start,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          const Text.rich(
            TextSpan(
              text: 'text 1',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 30.0,
              ),
              children: [
                TextSpan(
                  text: 'text 2',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}