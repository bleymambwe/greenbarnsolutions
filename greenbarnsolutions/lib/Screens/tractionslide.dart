import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:greenbarnsolutions/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenbarnsolutions/utils/utils.dart';

class TractionSlide extends StatelessWidget {
  const TractionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width:MediaQuery.of(context).size.width ,
        color: Colors.grey.shade100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Image.asset(
                    'assets/electrictiller_backview.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Strategy',
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
