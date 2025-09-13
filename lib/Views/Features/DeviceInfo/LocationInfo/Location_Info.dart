import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymao/Views/Features/DeviceInfo/UserInfo/One_Value_Card.dart';
import 'package:tymao/Views/Features/DeviceInfo/two_value_card.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

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
            colors: [Color(0xFFB893D6), Color(0xFF8CA5DB)],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Location Status",
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.pin_drop,
                                    size: 50,
                                    color: Colors.red,
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Text(
                                      "North Loop, West Freeway, Houston, Texas",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        color: Color(0xFF8e57fb),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: 200,
                      child: Card(
                        color: Colors.white,
                        elevation: 10,
                        child: Center(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "United States",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Color(0xFF8e57fb),
                              ),
                              textAlign: TextAlign.center,
                              textScaleFactor: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Last Updated: 1 min ago",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
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
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My Location Status",
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff989898),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          color: Color(0xFF8e57fb),
                          width: double.infinity,
                          height: 130,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.pin_drop,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Text(
                                      "North Loop, West Freeway, Houston, Texas",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: 200,
                      child: Card(
                        color: Color(0xFF8e57fb),
                        elevation: 10,
                        child: Center(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "United States",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                              textScaleFactor: 1,
                            ),
                          ),
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
