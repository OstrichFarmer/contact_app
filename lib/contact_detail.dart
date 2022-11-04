import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDetailScreen extends StatelessWidget {
  const ContactDetailScreen(
      {required this.id,
      required this.name,
      required this.image,
      required this.email,
      required this.phone,
      required this.index});

  final String id;
  final String name;
  final String image;
  final String email;
  final String phone;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      name,
                      style: GoogleFonts.aclonica(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Text(phone)),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      email,
                      style: GoogleFonts.abel(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                          child: Icon(
                        FontAwesomeIcons.phone,
                        size: 30,
                      )),
                      CircleAvatar(
                          child: Icon(
                        FontAwesomeIcons.video,
                        size: 30,
                      )),
                      CircleAvatar(
                          child: Icon(
                        Icons.message,
                        size: 30,
                      )),
                      CircleAvatar(
                          child: Icon(
                        Icons.mail,
                        size: 30,
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Today',
                    style: GoogleFonts.aclonica(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SizedBox(
                          height: 200,
                          width: 165,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(Icons.phone_missed),
                              Text(
                                'Missed Call',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '9:58am',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SizedBox(
                          height: 200,
                          width: 165,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(Icons.phone_in_talk),
                              Text(
                                'Received Call',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '11:48am',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // const SizedBox(
                  //   height: 30,
                  // ),
                  // Text(
                  //   'Bio',
                  //   style: GoogleFonts.aclonica(fontSize: 20),
                  // ),
                  // const Card(
                  //   elevation: 5,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(10),
                  //     ),
                  //   ),
                  //   child: SizedBox(
                  //     height: 100,
                  //     width: double.infinity,
                  //   ),
                  // )
                ],
              )),
        ));
  }
}
