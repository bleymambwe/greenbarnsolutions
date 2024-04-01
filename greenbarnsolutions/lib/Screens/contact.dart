import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:greenbarnsolutions/theme.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: MediaQuery.of(context).size.width * 0.5,
      child: ContactForm(
        nameController: _nameController,
        emailController: _emailController,
        phoneNumberController: _phoneNumberController,
        subjectController: _subjectController,
        messageController: _messageController,
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController subjectController;
  final TextEditingController messageController;

  const ContactForm({super.key, 
    required this.nameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.subjectController,
    required this.messageController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: nameController,
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: const InputDecoration(
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
          const SizedBox(height: 20),
          TextFormField(
            controller: emailController,
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: const InputDecoration(
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
          const SizedBox(height: 20),
          TextFormField(
            controller: phoneNumberController,
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: const InputDecoration(
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
          const SizedBox(height: 20),
          TextFormField(
            controller: subjectController,
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: const InputDecoration(
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
          const SizedBox(height: 20),
          TextFormField(
            controller: messageController,
            style: GoogleFonts.play(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            decoration: const InputDecoration(
              labelText: 'Message',
              labelStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
            maxLines: 5,
            cursorColor: Colors.white,
            autocorrect: true,
          ),
          const SizedBox(height: 20),

          GestureDetector(
            onTap: () async {
              String name = nameController.text;
              String email = emailController.text;
              String phoneNumber = phoneNumberController.text;
              String subject = subjectController.text;
              String message = messageController.text;
              try {
                await FirebaseFirestore.instance
                    .collection('messages')
                    .doc(name)
                    .set({
                  'email': email,
                  'phoneNumber': phoneNumber,
                  'subject': subject,
                  'message': message,
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Message Sent')),
                );
              } catch (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Failed to send message: $error')),
                );
              }
              nameController.clear();
              emailController.clear();
              phoneNumberController.clear();
              subjectController.clear();
              messageController.clear();
            },
            child: const SizedBox(
              width: 100,
              height: 60,
              child: HoverContainer(text: 'Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
