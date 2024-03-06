import 'package:flutter/material.dart';
import 'package:greenbarnsolutions/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: MediaQuery.of(context).size.width * 0.5,
      //height: MediaQuery.of(context).size.height * 0.8,
      child: ContactForm(),
    );
  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: InputDecoration(
              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.zero,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
             style: GoogleFonts.play(
              color:  Colors.white,
              fontWeight:  FontWeight.normal,
            ),
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.zero,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: InputDecoration(
              labelText: 'Phone Number',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.zero,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: InputDecoration(
              labelText: 'Subject',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.zero,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: InputDecoration(
              labelText: 'Message',
              labelStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white), // Add this line
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
            ),
            maxLines: 5,
            cursorColor: Colors.white, // Add this line
            autocorrect: true,
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              // Handle form submission
            },
            child: Container(
                width: 100, height: 60, child: HoverContainer(text: 'Submit')),
          ),
        ],
      ),
    );
  }
}
