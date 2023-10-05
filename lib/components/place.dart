import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceWidget extends StatelessWidget {
  final String path;
  final String name;
  final String local;
  final String location;
  final String rate;
  final Function()? onTap;
  const PlaceWidget(
      {super.key,
      required this.path,
      required this.name,
      required this.location,
      required this.rate,
      required this.local,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(40),
        child: Container(
          width: 254,
          height: 354,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                path,
              ),
              isAntiAlias: true,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: SizedBox(
                      height: 19.5,
                      width: 22,
                      child: SvgPicture.asset(
                        "icons/heart icon.svg",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                ],
              ),
              const SizedBox(
                height: 202,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 210,
                    height: 75,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(200, 11, 72, 157),
                            Color.fromARGB(255, 13, 55, 111)
                          ]),
                      shadows: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 29, 29, 29),
                          blurRadius: 9,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: local,
                                    style: const TextStyle(
                                      color: Color(0xFFC9C8C8),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 16,
                              width: 16,
                              child: SvgPicture.asset(
                                "icons/local.svg",
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                color: Color(0xFFC9C8C8),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            SizedBox(
                              height: 12,
                              width: 12,
                              child: SvgPicture.asset(
                                "icons/star.svg",
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              rate,
                              style: TextStyle(
                                color: Color(0xFFC9C8C8),
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
