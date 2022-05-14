import 'package:flutter/material.dart';
import '../components/dashboard/heighlights.dart';
import '../components/dashboard/home_banner.dart';
import '../components/dashboard/my_projects.dart';
import '../components/dashboard/recommendations.dart';
import '../screens/layout.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Layout(children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
    ]);
  }
}

