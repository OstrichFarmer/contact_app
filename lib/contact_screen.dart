import 'package:contact_app/contact_detail.dart';
import 'package:contact_app/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  void selectContact(BuildContext context, int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return ContactDetailScreen(
            phone: contactDetails[index].phone,
            index: contactDetails[index].index,
            name: contactDetails[index].name,
            email: contactDetails[index].email,
            id: contactDetails[index].id,
            image: contactDetails[index].image,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => FocusScope.of(context).unfocus()),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(FontAwesomeIcons.user),
            SizedBox(
              width: 15,
            )
          ],
          title: const Text('Contacts'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: contactDetails.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          selectContact(context, index);
                        },
                        child: Card(
                          elevation: 1,
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage(contactDetails[index].image),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  contactDetails[index].name,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
