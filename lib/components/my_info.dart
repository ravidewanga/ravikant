import 'package:flutter/material.dart';
class MyInfo extends StatefulWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/5205.jpg'),
            ),
            Spacer(),
            Text("Ravikant Dewangan",style: Theme.of(context).textTheme.subtitle2,),
            const Text('Flutter Developer',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w200,height: 1.5),),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
