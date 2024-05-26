import 'package:flutter/material.dart';
import 'package:greenbarnsolutions/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressTrack extends StatefulWidget {
  final String title;
  final String additionalNotesText;
  final double maxWidth;

  const ProgressTrack({
    Key? key,
    required this.title,
    required this.additionalNotesText,
    required this.maxWidth,
  }) : super(key: key);

  @override
  State<ProgressTrack> createState() => _ProgressTrackState();
}

class _ProgressTrackState extends State<ProgressTrack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Text(widget.title),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 20,
                color: firstColor, // Assuming firstColor is defined somewhere
                constraints: BoxConstraints(
                  maxWidth: widget.maxWidth,
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Text(widget.additionalNotesText),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey,
            height: 2,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: me,
      // height: 300,
      //color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'A Green, Sustainable & Efficient \n Electric Tiller',
                textAlign: TextAlign.justify,
                style: GoogleFonts.play(
                  letterSpacing: 2.5,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              Expanded(child: Container())
            ]),
            const SizedBox(
              height: 350,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                Text(
                  'Energy 1200W \n  RPM 100 \n   Weight 40KG',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.play(
                    letterSpacing: 2.5,
                    color: Colors.grey.shade100,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
