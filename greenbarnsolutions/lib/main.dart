import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screenStateProvider.dart';
import 'customAppBar.dart';
import 'Screens/about.dart';
import 'Screens/partner.dart';
import 'Screens/contact.dart';
import 'theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ScreenStateProvider()) // Change this line
      ],
      child: MaterialApp(
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
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        padding: const EdgeInsets.all(1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    //     0.6, // Adjust the height as needed
                    child: Image.asset(
                      'assets/electrictiller.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ColoredBox(
                    color: Colors.black.withOpacity(0.2),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height),
                  ),
                  TextWidget(),
                  Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      PageWidget(),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
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
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              Expanded(child: Container())
            ]),
            SizedBox(
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
                    color: Colors.grey.shade400,
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
              child = Container(); // Replace Container() with your Home widget
              break;
            case 'About':
              child = About(); // Replace About() with your About widget
              break;
            case 'Contact':
              child = Contact(); // Replace About() with your About widget
              break;
            case 'Partner':
              child = Partner(); // Replace Partner() with your Partner widget
              break;
            default:
              child = Container();
              break;
          }
          return AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: child,
          );
        },
      ),
    );
  }
}
