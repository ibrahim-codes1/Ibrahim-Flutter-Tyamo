// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class DashboardGradientFeature extends StatelessWidget {
//   final String iconImg;
//   final String btnText;
//   final List<Color> clr;
//   final FontWeight? weight;

//   const DashboardGradientFeature({
//     required this.iconImg,
//     required this.clr,
//     required this.btnText,
//     this.weight,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: Container(
//         alignment: Alignment.center,
//         height: 70,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.all(Radius.circular(15)),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.grey,
//               offset: Offset(0.0, 3.0),
//               blurRadius: 3.0,
//             ),
//           ],
//           gradient: LinearGradient(colors: clr),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 width: 30,
//                 height: 30,
//                 child: Image.asset(iconImg, filterQuality: FilterQuality.high),
//               ),
//               Flexible(
//                 child: Text(
//                   btnText,
//                   style: GoogleFonts.nunito(fontWeight:weight ?? FontWeight.w300),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardGradientFeature extends StatelessWidget {
  final String iconImg;
  final String btnText;
  final List<Color> clr;
  final FontWeight? weight;
  final VoidCallback? onTap; // ✅ NEW

  const DashboardGradientFeature({
    required this.iconImg,
    required this.clr,
    required this.btnText,
    this.weight,
    this.onTap, // ✅ NEW
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell( // ✅ Gesture detect karega
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          alignment: Alignment.center,
          height: 70, 
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 3.0),
                blurRadius: 3.0,
              ),
            ],
            gradient: LinearGradient(colors: clr),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 15),
              Image.asset(
                iconImg,
                width: 28,
                height: 28,
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  btnText,
                  style: GoogleFonts.nunito(
                    fontWeight: weight ?? FontWeight.w600,
                    fontSize: 14, 
                    color: clr.first == Colors.white
                        ? Colors.red 
                        : Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis, 
                  maxLines: 1,
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
      ),
    );
  }
}
