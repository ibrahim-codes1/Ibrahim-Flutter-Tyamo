import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymao/Views/Homepage/Dashboard/Dashboard.dart';
import 'package:tymao/Views/Profile/ProfileScreen.dart';
import 'package:tymao/Views/Widgets/Homepage/Drawer_list_tile.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _homepage = GlobalKey();

  List<IconData> iconList = [
    FontAwesomeIcons.circle,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
  ];

  int page = 1;
  int pageview = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        Profilescreen(),
        Dashboard(),
        Container(color: Colors.red),
      
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepage,
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            "assets/images/Tyamo.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            _homepage.currentState!.openDrawer();
          },
          child: Icon(Icons.menu, color: Colors.black),
        ),
        actions: [
          Container(
            width: 35,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset("assets/Dashboard/message.png"),
          ),
        ],
      ),
      drawer: GFDrawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: CircularProfileAvatar(
                        "",
                        backgroundColor: Colors.cyan,
                        borderWidth: 1,
                        borderColor: Colors.deepPurpleAccent,
                        elevation: 20,
                        radius: 40,
                        cacheImage: true,
                        errorWidget: (context, url, error) {
                          return Icon(Icons.face, size: 50);
                        },
                        onTap: () {
                          pageController.animateToPage(
                            0,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                          Navigator.of(context).pop();
                        },
                        animateFromOldImageOnUrlChange: true,
                        placeHolder: (context, url) {
                          return Center(child: CircularProgressIndicator()
                          );
                        },
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jayen Blake",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "JB.1@tyamo.com",
                          style: GoogleFonts.poppins(
                            color: Colors.cyan,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Premium",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(height: 20),
                DrawerListTile(
                    IconName: FontAwesomeIcons.solidCreditCard,
                    titleTitle: "Subscription"),
                DrawerListTile(
                    IconName: Icons.settings, titleTitle: "Settings"),
                DrawerListTile(
                    IconName: FontAwesomeIcons.circleQuestion,
                    titleTitle: "Help"),
                DrawerListTile(
                    IconName: FontAwesomeIcons.message, titleTitle: "Feedback"),
                DrawerListTile(
                    IconName: FontAwesomeIcons.share, titleTitle: "Tell Others"),
                DrawerListTile(
                    IconName: FontAwesomeIcons.starHalfAlt,
                    titleTitle: "Rate the App"),

                Divider(),
                DrawerListTile(
                    IconName: FontAwesomeIcons.rightFromBracket,
                    titleTitle: "Sign Out"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: page,
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          setState(() {
            pageview = p0;
            pageController.animateToPage(
              p0,
              duration: Duration(microseconds: 200),
              curve: Curves.linear,
            );
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}









