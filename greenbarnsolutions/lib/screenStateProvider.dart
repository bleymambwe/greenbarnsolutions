import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ScreenStateProvider extends ChangeNotifier {
  String screenState = 'home';

  void updateState(String newState) {
    screenState = newState; // Update the state
    notifyListeners(); // Notify listeners about the state change
  }
}
