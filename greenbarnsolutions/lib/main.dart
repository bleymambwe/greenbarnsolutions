import 'package:flutter/material.dart';
import 'package:greenbarnsolutions/firebase_options.dart';
import 'package:greenbarnsolutions/theme.dart';
import 'package:provider/provider.dart';
import 'screenStateProvider.dart';
import 'customAppBar.dart';
import 'Screens/about.dart';
import 'Screens/partner.dart';
import 'Screens/contact.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ScreenStateProvider()) // Change this line
      ],
      child: const MaterialApp(
        title: 'Green Barn Solutions',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Home(),
        ),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(1),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              'assets/electrictiller.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const TextWidget(),
                          const Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              PageWidget(),
                            ],
                          )
                        ],
                      ),
                      Container(
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
                                          additionalNotesText:
                                              'Much of the report is done only a summary of simulations is left',
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        ProgressTrack(
                                            title: 'Technical Drawing',
                                            additionalNotesText: '',
                                            maxWidth: 85),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        ProgressTrack(
                                            title: 'Prototype',
                                            additionalNotesText:
                                                'Building of the prototype is yet to start',
                                            maxWidth: 0)
                                      ],
                                    ),
                                  )),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Image.asset(
                                      'assets/electrictiller_sideangle.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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

class PageWidget extends StatefulWidget {
  const PageWidget({Key? key}) : super(key: key);

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ScreenStateProvider>(
        builder: (context, provider, _) {
          Widget child;
          // Use provider.screenState to determine which widget to display
          switch (provider.screenState) {
            case 'Home':
              child = Container();
              break;
            case 'About':
              child = const About();
              break;
            case 'Contact':
              child = const Contact();
              break;
            case 'Partner':
              child = const Partner();
              break;
            default:
              child = Container();
              break;
          }
          return AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: child,
          );
        },
      ),
    );
  }
}
