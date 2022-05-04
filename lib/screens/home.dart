import 'package:flutter/material.dart';
import 'package:ravikant/screens/dashboard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dashboard(children: [
      AspectRatio(
        aspectRatio:3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/bg.jpeg",fit: BoxFit.cover,)
          ],
        ),  
      ),
    ]);
  }
}

