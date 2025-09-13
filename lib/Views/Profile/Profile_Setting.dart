import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymao/Views/Widgets/Profile/Profile_setting_heading.dart';
import 'package:tymao/Views/Widgets/Profile/Profile_setting_sub.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 330,
                decoration: new BoxDecoration(
                  color: const Color(0xff671AFC),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width,
                      130,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Row(
                      children: <Widget>[
                        Icon(Icons.settings, color: Colors.white, size: 23),
                        SizedBox(width: 10),
                        Text(
                          "Setting",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 20,
                              ),
                              child: Row(
                                children: [
                                  CircularProfileAvatar(
                                    "",
                                    backgroundColor: Colors.transparent,
                                    borderWidth: 1,
                                    borderColor: Colors.deepPurpleAccent,
                                    elevation: 5.0,
                                    errorWidget: (context, url, error) {
                                      return Icon(Icons.face, size: 50);
                                    },
                                    cacheImage: true,
                                    onTap: () async {},
                                    animateFromOldImageOnUrlChange: true,
                                    placeHolder: (context, url) {
                                      return Container(
                                        child: Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Jadyen Blake",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.nunito(
                                      letterSpacing: 0.5,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(height: 5, color: Colors.grey.shade200),
                            SizedBox(height: 30),
                            ProfileSettingHeading(
                              headingtext: "Profile Setting",
                            ),
                            SizedBox(height: 15),
                            ProfileSettingSub(title: "Edit Name"),
                            ProfileSettingSub(title: "Edit Phone Number"),
                            ProfileSettingSub(title: "Change Password"),
                            ProfileSettingSub(
                              title: "Email Status",
                              secondarywidget: Row(
                                children: [
                                  Text(
                                    "Not Verified",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(FontAwesomeIcons.arrowRight, size: 14),
                                ],
                              ),
                            ),
                            SizedBox(height: 25),
                            ProfileSettingHeading(
                              headingtext: "Notification Setting",
                            ),
                            SizedBox(height: 15),
                            ProfileSettingSub(
                              title: "Push Notification",
                              secondarywidget: GFToggle(
                                onChanged: (val) {},
                                enabledTrackColor: Colors.greenAccent,
                                type: GFToggleType.android,
                                value: true,
                              ),
                            ),
                            SizedBox(height: 25),
                            ProfileSettingHeading(
                              headingtext: "Application Setting",
                            ),
                            SizedBox(height: 15),
                            ProfileSettingSub(
                              title: "Background Updates",
                              secondarywidget: Row(
                                children: [
                                  Text(
                                    "Not Verified",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(FontAwesomeIcons.arrowRight, size: 14),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}















