import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tymao/Views/Features/DeviceInfo/Battery%20Info/BattteryInfo.dart';
import 'package:tymao/Views/Features/DeviceInfo/DeviceSpecs/Device_specs.dart';
import 'package:tymao/Views/Features/DeviceInfo/GeneralInfo/General_info.dart';
import 'package:tymao/Views/Features/DeviceInfo/LocationInfo/Location_Info.dart';
import 'package:tymao/Views/Features/Device_banner.dart';
import 'package:tymao/Views/Features/gradient_container_button.dart';
import 'package:fullscreen_scroll_view/fullscreen_scroll_view.dart';
import 'package:tymao/Views/Widgets/Auth/Features/Device%20Info/Device_banner.dart';
import 'package:tymao/Views/Widgets/Auth/Features/Device%20Info/Gradient_container_button.dart';
import 'UserStatus/UserStatus.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Tyamo.png"),
            ),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: FullScreenScrollView(
        child: Column(
          children: [
            TopBanner(
              title: "Device Info",
              clr: [Color(0xff4FC174), Color(0xff00D7A9)],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: GradientButtonContainer(
                                title: "User Status",
                                clr: [Color(0xFF86AAE8), Color(0xFF92E9E3)],
                                overlayColor: Colors.cyan,
                                isGradientVertical: true,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: Userstatus(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: GradientButtonContainer(
                                title: "Battery",
                                clr: [Color(0xFFFAD585), Color(0xFFF47A7D)],
                                overlayColor: Colors.orangeAccent,
                                isGradientVertical: true,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: Battteryinfo(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GradientButtonContainer(
                        title: "General",
                        clr: [Color(0xFF50C9C2), Color(0xFF95DEDA)],
                        overlayColor: Colors.teal.shade300,
                        isGradientVertical: false,
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: GeneralInfo(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: GradientButtonContainer(
                        title: "Device Specs",
                        clr: [Color(0xFF50C9C2), Color(0xFF95DEDA)],
                        overlayColor: Color(0xff01BCAA),
                        isGradientVertical: false,
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: DeviceSpecs(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: GradientButtonContainer(
                      title: "Location",
                      clr: [Color(0xFFB893D6), Color(0xFF8CA5DB)],
                      overlayColor: Color(0xff8159C6),
                      isGradientVertical: false,
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: LocationInfo(),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: GradientButtonContainer(
                      title: "Orientation",
                      clr: [Color(0xFFF2709B), Color(0xFFFF9370)],
                      overlayColor: Color(0xffF98583),
                      isGradientVertical: true,
                      
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
