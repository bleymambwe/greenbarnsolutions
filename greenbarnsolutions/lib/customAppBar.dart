import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenbarnsolutions/screenStateProvider.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.112,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Green Barn Solutions',
              style: GoogleFonts.pacifico(
                  color: Colors.green, fontSize: titleSize),
            ),
            Expanded(child: Container()),
            InkWell(
                onTap: () {
                  ScreenStateProvider provider =
                      Provider.of<ScreenStateProvider>(context, listen: false);
                  // Calling the updateState function
                  String state = 'Contact';
                  provider.updateState(state);
                },
                child: const HoverContainer(text: 'Contact')),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.005,
            ),
            InkWell(
              onTap: () {
                ScreenStateProvider provider =
                    Provider.of<ScreenStateProvider>(context, listen: false);
                // Calling the updateState function
                String state = 'About';
                provider.updateState(state);
              },
              child: const HoverContainer(
                text: 'About',
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.005,
            ),
            InkWell(
              onTap: () {
                ScreenStateProvider provider =
                    Provider.of<ScreenStateProvider>(context, listen: false);
                // Calling the updateState function
                String state = 'Partner';
                provider.updateState(state);
              },
              child: const HoverContainer(
                text: 'Partner',
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.005,
            ),
            InkWell(
              onTap: () {
                ScreenStateProvider provider =
                    Provider.of<ScreenStateProvider>(context, listen: false);
                // Calling the updateState function
                String state = 'Dontate';
                provider.updateState(state);
              },
              child: const HoverContainer(
                text: 'Dontate',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
