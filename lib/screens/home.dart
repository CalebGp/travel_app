import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:travel_app/components/button.dart';
import 'package:travel_app/components/content_division.dart';
import 'package:travel_app/components/place.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(26, 60, 14.5, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, David 👋",
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff2e2e2e),
                        height: 37 / 30,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Explore the world',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF888888),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: 0.10,
                      ),
                    ),
                  ],
                ),
                Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(0.08),
                  child: SizedBox(
                    width: 75,
                    height: 75,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          "images/guy.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                Container(
                  width: 374,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFD2D2D2),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Search places',
                          style: TextStyle(
                            color: Color(0xFF888888),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContentDivision(),
                            SizedBox(
                              width: 29,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Icon(
                                Icons.tune,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular places',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF2E2E2E),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const Text(
                  'View all',
                  style: TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonOfRow(text: "Most viewed", active: true),
                  SizedBox(
                    width: 25,
                  ),
                  ButtonOfRow(text: "Nearby", active: false),
                  SizedBox(
                    width: 25,
                  ),
                  ButtonOfRow(text: "Latest", active: false),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                PlaceWidget(
                  path: "images/mount.png",
                  name: "Mount Fuji, ",
                  local: "Tokyo",
                  location: "Tokyo, Japan",
                  rate: "4.8",
                  onTap: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                PlaceWidget(
                  path: "images/mount2.png",
                  name: "Andes, ",
                  local: "South",
                  location: "South, America",
                  rate: "4.8",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: PersistentBottomNavBar(
        hideNavigationBar: false,
        navBarStyle: NavBarStyle.style13,
      ),
    );
  }
}
