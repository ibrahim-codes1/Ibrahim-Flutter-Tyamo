import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymao/Views/Features/DeviceInfo/two_value_card.dart';
import 'package:tymao/Views/Widgets/Auth/General%20Info/Two_widget_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
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
                  "General Info",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: TwoValueCard(
                                text: "Screen State",
                                Value: "UNLOCKED",
                                txtClr: Color(0xff55CAC4),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: TwoWidgetCard(
                                text1: "Syetem Volume",
                                value1: "0 / 7",
                                txtClr1: Color(0xff55CAC4),
                                text2: "Media Volume",
                                value2: "4 / 7",
                                txtClr2: Color(0xff55CAC4),
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
                              flex: 2,
                              child: TwoWidgetCard(
                                text1: "Light Activity",
                                value1: "Dim light",
                                txtClr1: Color(0xff55CAC4),
                                text2: "Light Intensity",
                                value2: "4",
                                txtClr2: Color(0xff55CAC4),
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "Brightness",
                                Value: "5.88%",
                                txtClr: Color(0xff55CAC4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Last Updated: 1 min ago",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 9,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My General Info",
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff989898),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: TwoValueCard(
                                        text: "Screen State",
                                        Value: "UNLOCKED",
                                        txtClr: Colors.white,
                                        clr: Color(0xff55CAC4),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: TwoWidgetCard(
                                        text1: "Syetem Volume",
                                        value1: "0 / 7",
                                        txtClr1: Colors.white,
                                        clr1: Color(0xff55CAC4),
                                        text2: "Media Volume",
                                        value2: "4 / 7",
                                        txtClr2: Colors.white,
                                        clr2: Color(0xff55CAC4),
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
                                      flex: 2,
                                      child: TwoWidgetCard(
                                        text1: "Light Activity",
                                        value1: "Dim light",
                                        txtClr1: Colors.white,
                                        clr1: Color(0xff55CAC4),
                                        text2: "Light Intensity",
                                        value2: "4",
                                        txtClr2: Colors.white,
                                        clr2: Color(0xff55CAC4),
                                      ),
                                    ),
                                    Expanded(
                                      child: TwoValueCard(
                                        text: "Brightness",
                                        Value: "5.88%",
                                        txtClr: Colors.white,
                                        clr: Color(0xff55CAC4),
                                      ),
                                    ),
                                  ],
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
            ),
          ],
        ),
      ),
    );
  }
}
