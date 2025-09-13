import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tymao/Views/Features/Album/Album_main.dart';
import 'package:tymao/Views/Features/DeviceInfo/Device_Info.dart';
import 'package:tymao/Views/Homepage/Dashboard/Dashboard_gradiant_feature.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: Text(
              "DASHBOARD",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 22,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 25),
            alignment: Alignment.centerLeft,
            child: Text(
              "Your Friend",
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                color: Color(0xff990099),
                fontWeight: FontWeight.w900,
                fontSize: 20,
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: CircularProfileAvatar(
                              "",
                              backgroundColor: Colors.cyan,
                              borderWidth: 1,
                              borderColor: Colors.deepPurpleAccent,
                              elevation: 20,
                              radius: 45,
                              cacheImage: true,
                              errorWidget: (context, url, error) {
                                return Icon(Icons.face, size: 50);
                              },
                              onTap: () {},
                              animateFromOldImageOnUrlChange: true,
                              placeHolder: (context, url) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.fiber_manual_record,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Jayden Blake",
                                      style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff4C9CFF),
                                      size: 40,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        "Bow Lane, West Freeway, Houston, Texas, United Sates",
                                        style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Text(
                                  "Status",
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Offline",
                                  style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(color: Colors.deepPurple),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Text(
                                  "User Status",
                                  style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "N/A",
                                  style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(color: Colors.deepPurple),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              "User Status",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: DashboardGradientFeature(
                  iconImg: "assets/Dashboard/Device.png",
                  btnText: "Device Info",
                  clr: [Color(0xff4FC174), Color(0xff00D7A9)],
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: DeviceInfo(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: 8),
              Flexible(
                child: DashboardGradientFeature(
                  iconImg: "assets/Dashboard/Gallery.png",
                  btnText: "Gallery",
                  clr: [Color(0xffF7D800), Color(0xffF7A100)],
                   onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: AlbumMain(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: 8),
              Flexible(
                child: DashboardGradientFeature(
                  iconImg: "assets/Dashboard/mood.png",
                  btnText: "Mood",
                  clr: [Color(0xff9A01D6), Color(0xffC701D6)],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Features",
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                  color: Color(0xff004C99),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/Dashboard/playlist.png",
                    weight: FontWeight.w900,
                    btnText: "Playlist",
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/Dashboard/location.png",
                    weight: FontWeight.w900,
                    btnText: "Location",
                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/Dashboard/List.png",
                    weight: FontWeight.w900,
                    btnText: "To-do-List",
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/Dashboard/Diary.png",
                    weight: FontWeight.w900,
                    btnText: "Diary",
                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/Dashboard/Surprise.png",
                    weight: FontWeight.w900,
                    btnText: "Surprise Notes",
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/Dashboard/Horoscope.png",
                    weight: FontWeight.w900,
                    btnText: "Horoscope",
                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/Dashboard/Emergencey.png",
                    weight: FontWeight.w900,
                    btnText: "Emergencey",
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: DashboardGradientFeature(
                    iconImg: "assets/Dashboard/Activity.png",
                    weight: FontWeight.w900,
                    btnText: "Activity",
                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
