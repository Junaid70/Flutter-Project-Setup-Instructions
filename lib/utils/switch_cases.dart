import 'package:flutter/widgets.dart';


class CustomizedSwitchCases {
  String? message = 'Let’s get started by figuring out who you need!';
  String? appBarMessage = 'Qualifications';
  String? buttonMessage = 'Next: The Pitch';
  String getMessage(int index) {
    switch (index) {
      case 0:
        return message = 'Let’s get started by figuring out who you need!';
      case 1:
        return message =
            'Next, give a short pitch that will excite your future collaborator!';
      case 2:
        return message =
            'Alright, let’s get down the biz. What’s the scope for this gig?';
      case 3:
        return message =
            'Finally, let’s sprinkle in a personalized touch to help you get the one you’re looking for.';

      case 4:
        return message =
            'And that’s that! Let’s review it together and make sure we got it all right.';
      default:
        return message = 'Let’s get started by figuring out who you need!';
    }
  }

  String getAppbarMessage(int index) {
    switch (index) {
      case 0:
        return appBarMessage = 'Qualifications';
      case 1:
        return appBarMessage = 'The Pitch';
      case 2:
        return appBarMessage = 'The Scope';
      case 3:
        return appBarMessage = 'Additional Info';

      case 4:
        return appBarMessage = 'Review';
      default:
        return appBarMessage = 'Qualifications';
    }
  }
  String getAppbarMessage2(int index) {
    switch (index) {
      case 0:
        return appBarMessage = 'Verification';
      case 1:
        return appBarMessage = 'Sign Up';
      case 2:
        return appBarMessage = 'Getting to know you';
      case 3:
        return appBarMessage = 'Your Career';

      case 4:
        return appBarMessage = 'bizlyCard';
      default:
        return appBarMessage = 'Verification';
    }
  }
  String getPositionTitleMessage(int index) {
    switch (index) {
      case 0:
        return 'Let’s get started by figuring out where this opportunity will take place!';
      case 1:
        return 'Now let’s figure out who the right candidate is for you.';
      case 2:
        return 'Alright, let’s get down the biz. What’s the scope for this job?';
      case 3:
        return 'Finally, let’s sprinkle in a personalized touch to help you get the one you’re looking for.';
      case 4:
        return 'And that’s that! Let’s review it together and make sure we got it all right.';
      default:
        return 'Let’s get started by figuring out where this opportunity will take place!';
    }
  }

  String getPositionMessage(int index) {
    switch (index) {
      case 0:
        return 'Background';
      case 1:
        return 'Qualifications';
      case 2:
        return 'The Scope';
      case 3:
        return 'Additional Info';
      case 4:
        return 'Review';
      default:
        return 'Background';
    }
  }

  String getButtonMessage(int index) {
    switch (index) {
      case 0:
        return appBarMessage = 'Next: The Pitch';
      case 1:
        return appBarMessage = 'Next: The Scope';
      case 2:
        return appBarMessage = 'Next: Additional Info';
      case 3:
        return appBarMessage = 'Next: Review';

      case 4:
        return appBarMessage = 'Post Gig';
      default:
        return appBarMessage = 'Next: The Pitch';
    }
  }
  //
  // Widget getQuestionWidget(
  //   int Index,
  // ) {
  //   switch (Index) {
  //     case 0:
  //       return QualificationScreen();
  //
  //     default:
  //       return ScreenUnderDevelopment();
  //   }
  // }
}
