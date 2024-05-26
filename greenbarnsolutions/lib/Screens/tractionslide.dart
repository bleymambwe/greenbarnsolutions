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
                          'Objectives',
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
                        Objectives()
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

class Objectives extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'Objectives',
          //   style: TextStyle(
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          SizedBox(height: 8.0),
          Text(
            "- Successfully develop a working prototype electric tiller within initial \$2,000 budget by Q3 this year.\n"
            "- Generate demand and pre-orders through a digital marketing campaign and auction of the first unit, securing at least \$2,500 in revenue by the end of Q4.\n"
            "- Use the profit from the first unit and pre-order financing to manufacture parts and assemble an additional 24 tillers in Year 1, aiming for total sales revenue of \$10,000.\n"
            "- Expand manufacturing capacity to 10 units annually by the end of Year 3 to gain economies of scale and reduce product cost by 10-15%.\n"
            "- Build partnerships with at least two local equipment distributors and cooperatives to bolster sales and distribution network to 50+ smallholder farms by Year 5.\n"
            "- Utilize farmer user feedback to continuously refine and improve tiller battery performance, durability, and crop suitability to be the top product in its class.\n",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
