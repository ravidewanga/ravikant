import 'package:flutter/material.dart';
import 'package:ravikant/components/knowledges.dart';
import 'package:flutter_svg/svg.dart';
import '../components/coding.dart';
import '../components/my_info.dart';
import '../components/skills.dart';
import '../constants.dart';
import '../components/area_info_text.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: "India",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Raipur",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "31",
                  ),

                  Skills(),

                  Coding(),

                  Knowledges(),

                  Divider(),

                  SizedBox(height: defaultPadding / 2),

                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color,
                            ),
                          ),
                          SizedBox(width: defaultPadding / 2),
                          SvgPicture.asset("assets/icons/download.svg")
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


