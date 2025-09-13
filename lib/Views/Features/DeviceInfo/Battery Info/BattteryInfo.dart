import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tymao/Views/Features/DeviceInfo/two_value_card.dart';

class Battteryinfo extends StatelessWidget {
  const Battteryinfo({super.key});

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
            colors: [Color(0xFFFAD585), Color(0xFFF47A7D)],
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
                  "Battery Status",
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: TwoValueCard(
                                text: "Status",
                                Value: "Discharge",
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "Charging Type",
                                Value: "-",
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
                              child: TwoValueCard(
                                text: "Charging Percentage",
                                Value: "N/A",
                                subwidget: SleekCircularSlider(
                                  min: 0,
                                  max: 100,
                                  appearance: CircularSliderAppearance(
                                    customColors: CustomSliderColors(
                                      progressBarColor: Color(0xFFF57D7C),
                                    ),
                                    infoProperties: InfoProperties(
                                      mainLabelStyle: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    size: 100,
                                    customWidths: CustomSliderWidths(
                                      progressBarWidth: 10,
                                    ),
                                  ),
                                  initialValue: 50,
                                ),
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "Temperature",
                                Value: "35.0",
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
                              child: TwoValueCard(
                                text: "Battery Health",
                                Value: "Good",
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "Battery \nTechnology",
                                Value: "Li-poly",
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
            Expanded(
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
                          "My Battery Status",
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff989898),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
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
                                        text: "Status",
                                        Value: "Discharge",
                                        txtClr: Colors.white,
                                        clr: Color(0xffF57D7C),
                                      ),
                                    ),
                                    Expanded(
                                      child: TwoValueCard(
                                        text: "Charging Type",
                                        txtClr: Colors.white,
                                        Value: "-",
                                        clr: Color(0xffF57D7C),
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
                                      child: TwoValueCard(
                                        text: "Charging Percentage",
                                        txtClr: Colors.white,
                                        Value: "N/A",
                                        clr: Color(0xffF57D7C),
                                        subwidget: SleekCircularSlider(
                                          min: 0,
                                          max: 100,
                                          appearance: CircularSliderAppearance(
                                            customColors: CustomSliderColors(
                                              progressBarColor: Colors.white,
                                            ),
                                            infoProperties: InfoProperties(
                                              mainLabelStyle:
                                                  GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                            ),
                                            size: 100,
                                            customWidths: CustomSliderWidths(
                                              progressBarWidth: 10,
                                            ),
                                          ),
                                          initialValue: 50,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TwoValueCard(
                                        text: "Temperature",
                                        clr: Color(0xffF57D7C),
                                        txtClr: Colors.white,
                                        Value: "35.0",
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
                                      child: TwoValueCard(
                                        text: "Battery Health",
                                        clr: Color(0xffF57D7C),
                                        txtClr: Colors.white,
                                        Value: "Good",
                                      ),
                                    ),
                                    Expanded(
                                      child: TwoValueCard(
                                        text: "Battery \nTechnology",
                                        clr: Color(0xffF57D7C),
                                        txtClr: Colors.white,
                                        Value: "Li-poly",
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
