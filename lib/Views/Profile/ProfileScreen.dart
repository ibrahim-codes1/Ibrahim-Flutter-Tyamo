import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  bool more = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            "MY PROFILE",
            style: GoogleFonts.nunito(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          SizedBox(height: 40),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Doodle.png "),
                fit: BoxFit.fill,
              ),
            ),
            child: CircularProfileAvatar(
              "",
              backgroundColor: Colors.cyan,
              borderWidth: 1,
              borderColor: Colors.deepPurpleAccent,
              elevation: 20,
              radius: 80,
              cacheImage: true,
              errorWidget: (context, url, error) {
                return Icon(Icons.face, size: 50);
              },
              onTap: () {},
              animateFromOldImageOnUrlChange: true,
              placeHolder: (context, url) {
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Jayden Blake",
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "@Jay95",
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w900,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: Color(0xff671AFC)),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Eidt Profile Details",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Color(0xff671AFC),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CardDetailRow(
                  clr: Colors.grey.shade200,
                  type: "Email",
                  val: "jayden@tyamo",
                  icon: Icon(Icons.alternate_email),
                ),
                CardDetailRow(
                  clr: Colors.transparent,
                  type: "Country",
                  val: "United States",
                  icon: Icon(Icons.outlined_flag),
                ),
                CardDetailRow(
                  clr: Colors.grey.shade200,
                  type: "Phone Number",
                  val: "Not Currently Set",
                  icon: Icon(Icons.phone),
                ),
                more
                    ? CardDetailRow(
                        clr: Colors.transparent,
                        type: "Gender",
                        val: "Male",
                        icon: Icon(FontAwesomeIcons.venusMars),
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        clr: Colors.grey.shade200,
                        type: "Partner",
                        val: "Robbie Williams",
                        icon: Icon(Icons.person_outlined),
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        clr: Colors.transparent,
                        type: "UID",
                        val: "WP298dx3487dSDF324SDFSDF",
                        icon: Icon(Icons.fingerprint),
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        clr: Colors.grey.shade200,
                        type: "Account Created",
                        val: "21-08-25",
                        icon: Icon(Icons.schedule),
                      )
                    : Container(),
              ],
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: Colors.grey.shade200),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.grey.shade200,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                more = !more;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                more ? "- Show Less" : "+ Show Less",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffff9966),Color(0xffff5e62)], 
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed To",
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                     Text(
                      "Premium",
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed on",
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                     Text(
                      "N/A",
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  CardDetailRow({
    required this.type,
    required this.icon,
    required this.val,
    required this.clr,
  });

  final Icon icon;
  final String type;
  final String val;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10),
            icon,
            SizedBox(width: 10),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: val == "Not Currently Set"
                          ? Colors.red
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
