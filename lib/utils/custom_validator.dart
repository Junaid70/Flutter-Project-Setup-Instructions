class CustomValidator {
  String? validateName(String? value) {
    String pattern = r'(^[a-zA-Z ]*$)';

    if (value == null) {
      return 'Add a Name';
    }

    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  String? validateAlphaNmeric(String? value) {
    String pattern = r'^[a-zA-Z0-9\-\s]+$';

    if (value == null) {
      return 'Field is required';
    }

    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Field is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Please avoid special characters";
    }
    return null;
  }

  String? validateDescription(String? value) {
    if (value == null) {
      return 'Field is required';
    }

    return null;
  }

  String? validatePrice(String? val) {
    if (val == null) {
      return ' Enter a Price';
    } else {
      double? salesPrice = double.tryParse(val);
      if (salesPrice == null) {
        return "Enter a valid Price";
      } else if (salesPrice < 1) {
        return 'Price cannot be less than 1';
      }
    }
    return null;
  }

  String? validateInteger(
    String? val,
  ) {
    if (val == null) {
      return ' Enter a Quantity';
    } else {
      int? value = int.tryParse(val);
      if (value == null) {
        return "Enter a valid Value";
      } else if (value < 1) {
        return 'Value cannot be less than 1';
      }
    }
    return null;
  }

  String? validateIntegerOrNull(
    String? val,
  ) {
    if (val != null) {
      int? value = int.tryParse(val);
      if (value == null) {
        return "Enter a valid Value";
      } else if (value < 1) {
        return 'Value cannot be less than 1';
      }
    }
    return null;
  }

  String? validateMobile(String? value) {
    if (value == null) {
      return 'Please enter a mobile number';
    }

    String pattern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Please enter a mobile number";
    } else if (value.length != 10) {
      return "Mobile number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Mobile Number must be digits";
    }
    return null;
  }

  String? validatePasswordLength(String? value) {
    if (value == null) {
      return 'Password can\'t be empty';
    }
    const requiredPasswordLength = 6;

    if (value.isEmpty) {
      return "Password is Required";
    } else if (value.length < requiredPasswordLength) {
      return "Password can't be smaller than  $requiredPasswordLength characters";
    } else if (value.length > 50) {
      return "Password can't be then than 50 characters";
    }
    return null;
  }

  String? validatePassword(String? value) {
    String error = '';
    if (value == null) {
      error = 'Password can\'t be empty';
    }

    const requiredPasswordLength = 6;

    if (value!.isEmpty) {
      return "Password can't be empty";
    }
    if (value.length < requiredPasswordLength) {
      return "Password can't be smaller than  $requiredPasswordLength characters";
    }
    // } else if (!regExp.hasMatch(value)) {
    //   return "Password must have uppercase, lowercase, numeric, special characters (! @ # \$ & * ~)";
    // }
    if (value.contains(RegExp(r'[A-Z]'))) {
      error = "Must have lowercase, numeric and special characters";
    }
    if (value.contains(RegExp(r'[0-9]'))) {
      error = "Must have uppercase, lowercase and special characters ";
    }
    if (value.contains(RegExp(r'[a-z]'))) {
      error = "Must have uppercase, numeric and special characters";
    }
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      error = "Must have uppercase, lowercase and numeric";
    }
    if (value.contains(RegExp(r'[A-Z]')) && value.contains(RegExp(r'[0-9]'))) {
      error = "Must have lowercase and special characters";
    }
    if (value.contains(RegExp(r'[A-Z]')) && value.contains(RegExp(r'[a-z]'))) {
      error = "Must have numeric and special characters";
    }
    if (value.contains(RegExp(r'[0-9]')) && value.contains(RegExp(r'[a-z]'))) {
      error = "Must have uppercase and special characters";
    }
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')) &&
        value.contains(RegExp(r'[A-Z]'))) {
      error = "Must have lowercase and numeric";
    }
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')) &&
        value.contains(RegExp(r'[0-9]'))) {
      error = "Must have uppercase and lowercase";
    }
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')) &&
        value.contains(RegExp(r'[a-z]'))) {
      error = "Must have uppercase and numeric";
    }

    if (value.contains(RegExp(r'[A-Z]')) &&
        value.contains(RegExp(r'[a-z]')) &&
        value.contains(RegExp(r'[0-9]'))) {
      error = "Must have special characters";
    }
    if (value.contains(RegExp(r'[A-Z]')) &&
        value.contains(RegExp(r'[a-z]')) &&
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      error = "Must have numeric";
    }
    if (value.contains(RegExp(r'[0-9]')) &&
        value.contains(RegExp(r'[a-z]')) &&
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      error = "Must have uppercase";
    }
    if (value.contains(RegExp(r'[A-Z]')) &&
        value.contains(RegExp(r'[0-9]')) &&
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      error = "Must have lowercase";
    }
    if (value.contains(RegExp(r'[A-Z]')) &&
        value.contains(RegExp(r'[0-9]')) &&
        value.contains(RegExp(r'[a-z]')) &&
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      error = '';
    }
    if (error == '') {
      return null;
    } else {
      return error;
    }
  }

  String? validateEmail(String? value) {
    if (value == null) {
      return 'Add an email';
    }

    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }
}
