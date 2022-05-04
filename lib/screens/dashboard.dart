import 'package:flutter/material.dart';
import '../components/side_menu.dart';
import '../constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),

              SizedBox(width: defaultPadding),

              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // our footer
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
