
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    // Example user data (replace with API/database values)
    String userName = "Ibrahim";
    String? imageUrl; // null means no image, replace with actual url if available

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 80,
            width: double.infinity,
            child: Image.asset(
              "assets/images/Tyamo.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 27.sp,
              color: const Color(0xff8C47FB),
              child: Text(
                "See received invitations",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  fontSize: 16.sp,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Invitation Card
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Profile Avatar
                    CircularProfileAvatar(
                      imageUrl ?? "",
                      backgroundColor: Colors.blue,
                      radius: 30,
                      initialsText: Text(
                        userName.isNotEmpty
                            ? userName[0].toUpperCase()
                            : "?",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      borderWidth: 2,
                      borderColor: Colors.white,
                      elevation: 2,
                    ),

                    const SizedBox(width: 12),

                    // Username
                    Expanded(
                      child: Text(
                        userName,
                        style: GoogleFonts.poppins(
                          color: Colors.grey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    // Accept / Decline buttons
                    Row(
                      children: [
                        GFButton(
                          color: const Color(0xff00D7CC),
                          shape: GFButtonShape.pills,
                          child: const Text("Accept"),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        GFButton(
                          color: const Color.fromARGB(255, 215, 0, 18),
                          shape: GFButtonShape.pills,
                          child: const Text("Decline"),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Illustration
            SizedBox(
              height: 250,
              width: 250,
              child: Image.asset("assets/images/accept.png"),
            ),

            const SizedBox(height: 10),

            // Empty message
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your received invitations are currently ",
                  style: GoogleFonts.nunito(
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  "Empty",
                  style: GoogleFonts.nunito(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}












