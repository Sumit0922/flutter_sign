import 'package:flutter/cupertino.dart';

class ProviderHome with ChangeNotifier{
  bool? isEligible;
  String?eligibilityMessage ="";

  void checkEligiblity(int age){
    if(age >=18) {
      isEligible =true;
      eligibilityMessage = "You Are Eligible";
      notifyListeners();
    }
    else{
      isEligible = false;
      eligibilityMessage = "You Are Not Eligible";
      notifyListeners();

    }
    }
  }

