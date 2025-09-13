import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymao/Views/Features/DeviceInfo/two_value_card.dart';

class DeviceSpecs extends StatelessWidget {
  const DeviceSpecs({super.key});

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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF50C9C2), Color(0xFF95DEDA)],
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Device Information",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                 flex: 2,
                                child: Container(
                                  child: TwoValueCard(
                                    text: "Total Ram",
                                    Value: "5.36GB",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: TwoValueCard(
                                    text: "Refresh Rate",
                                    Value: "60 Hz",
                                  ),
                                ),
                              ),
                              Expanded(
                                 flex: 3,
                                child: Container(
                                  child: TwoValueCard(
                                    text: "Fingerprint Sensor",
                                    Value: "Present",
                                  ),
                                ),
                              ),
                              Expanded(
                                 flex: 3,
                                child: Container(
                                  child: TwoValueCard(
                                    text: "Fingerprint Sensor",
                                    Value: "Yes",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                             Expanded(
                                child: Container(
                                  child: TwoValueCard(
                                    text: "Internal Memory",
                                    Value: "59.36 / 110.05 GB",
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: TwoValueCard(
                                    text: "External Memory",
                                    Value: "N/A",
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: TwoValueCard(
                                    text: "Screen Size",
                                    Value: "6.06 inches",
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: TwoValueCard(
                                    text: "Resolution",
                                    Value: "2134x1080",
                                  ),
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
        ],
      ),
    );
  }
}
