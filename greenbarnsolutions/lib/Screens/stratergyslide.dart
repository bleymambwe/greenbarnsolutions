import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:greenbarnsolutions/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenbarnsolutions/utils/utils.dart';

class StratergySlide extends StatelessWidget {
  const StratergySlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width:MediaQuery.of(context).size.width ,
        color: Colors.grey.shade100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'Traction ',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.play(
                          letterSpacing: 2.5,
                          color: firstColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProgressTrack(
                        title: 'Technical Report',
                        maxWidth: 75,
                        additionalNotesText: '''
                           We are actively conducting research and compiling technical documentation on various aspects including agricultural cultivation principles, existing cultivating mechanisms, battery technology, and motor design. Our progress in these endeavors is currently at 80 \%, reflecting substantial completion in our efforts.  
                            ''',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ProgressTrack(
                          title: 'Technical Drawing',
                          additionalNotesText: '',
                          maxWidth: 95),
                      SizedBox(
                        height: 5,
                      ),
                      ProgressTrack(
                          title: 'Prototype',
                          additionalNotesText:
                              'The construction of the prototype has not yet commenced.',
                          maxWidth: 10)
                    ],
                  ),
                )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Image.asset(
                    'assets/electrictiller_sideangle.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
