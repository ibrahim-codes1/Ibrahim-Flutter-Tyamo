// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:focused_menu/focused_menu.dart';
// import 'package:focused_menu/modals.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tymao/Views/Widgets/Auth/Features/Album/Gallery_header.dart';

// class MyAlbum extends StatelessWidget {
//   const MyAlbum({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           GalleryHeader(
//             context: context,
//             isEditable: true,
//             toVal: "8",
//             tuVal: "0",
//             name: "Ibrahim Gallery",
//             description: "Tell your partner what this album means to you!",
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: StaggeredGridView.countBuilder(
//               physics: const NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               crossAxisCount: 4,
//               itemCount: 6,
//               itemBuilder: (context, index) {
//                 return FocusedMenuHolder(
//                   menuWidth: MediaQuery.of(context).size.width * 0.50,
//                   blurSize: 5.0,
//                   menuItemExtent: 45,
//                   menuBoxDecoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(15.0)),
//                   ),
//                   duration: const Duration(milliseconds: 100),
//                   animateMenuItems: true,
//                   blurBackgroundColor: Colors.black54,
//                   openWithTap: true,
//                   menuOffset: 10.0,
//                   bottomOffsetHeight: 80.0,
//                   menuItems: <FocusedMenuItem>[
//                     FocusedMenuItem(
//                       title: const Text("Open"),
//                       trailingIcon: const Icon(Icons.open_in_new),
//                       onPressed: () {},
//                     ),
//                     FocusedMenuItem(
//                       title: const Text("Share"),
//                       trailingIcon: const Icon(Icons.share),
//                       onPressed: () {},
//                     ),
//                     FocusedMenuItem(
//                       title: const Text("Favorite"),
//                       trailingIcon: const Icon(Icons.favorite_border),
//                       onPressed: () {},
//                     ),
//                     FocusedMenuItem(
//                       title: const Text(
//                         "Delete",
//                         style: TextStyle(color: Colors.redAccent),
//                       ),
//                       trailingIcon:
//                           const Icon(Icons.delete, color: Colors.redAccent),
//                       onPressed: () {},
//                     ),
//                   ],
//                   onPressed: () {},
//                   // child: Card(
//                   //   child: Column(
//                   //     children: <Widget>[
//                   //       Image.asset("assets/images/image_$index.jpg"),
//                   //     ],
//                   //   ),
//                   // ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: InkWell(
//                       onTap: () {

//                       },
//                       child: Hero(
//                         tag: "https://www.shutterstock.com/shutterstock/videos/3765768379/thumb/1.jpg",
//                         child: Image.network(
//                           "https://www.shutterstock.com/shutterstock/videos/3765768379/thumb/1.jpg",
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//               staggeredTileBuilder: (index) =>
//                   StaggeredTile.count(2, index.isEven ? 2 : 3),
//               mainAxisSpacing: 10.0,
//               crossAxisSpacing: 15.0,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tymao/Views/Features/Album/Album_post.dart';
import 'package:tymao/Views/Widgets/Auth/Features/Album/Gallery_header.dart';

class MyAlbum extends StatelessWidget {
  const MyAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(
            context: context,
            isEditable: true,
            toVal: "8",
            tuVal: "0",
            name: "Ibrahim Gallery",
            description: "Tell your partner what this album means to you!",
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: StaggeredGridView.countBuilder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              itemCount: 6,
              itemBuilder: (context, index) {
                return FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * 0.50,
                  blurSize: 5.0,
                  menuItemExtent: 45,
                  menuBoxDecoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  duration: const Duration(milliseconds: 100),
                  animateMenuItems: true,
                  blurBackgroundColor: Colors.black54,
                  openWithTap: true,
                  menuOffset: 10.0,
                  bottomOffsetHeight: 80.0,
                  menuItems: <FocusedMenuItem>[
                    FocusedMenuItem(
                      title: const Text("Open"),
                      trailingIcon: const Icon(Icons.open_in_new),
                      onPressed: () {},
                    ),
                    FocusedMenuItem(
                      title: const Text("Share"),
                      trailingIcon: const Icon(Icons.share),
                      onPressed: () {},
                    ),
                    FocusedMenuItem(
                      title: const Text("Favorite"),
                      trailingIcon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    FocusedMenuItem(
                      title: const Text(
                        "Delete",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      trailingIcon: const Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {},
                    ),
                  ],
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Material(
                      // ✅ Fix: Added Material
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: AlbumPost(),
                            ),
                          );
                        },
                        child: Hero(
                          tag:
                              "https://www.shutterstock.com/shutterstock/videos/3765768379/thumb/1.jpg",
                          child: Image.network(
                            "https://www.shutterstock.com/shutterstock/videos/3765768379/thumb/1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index) =>
                  StaggeredTile.count(2, index.isEven ? 2 : 3),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
