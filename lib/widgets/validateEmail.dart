class ValidateEmail {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Email';
    }

    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._-]+@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid Email address';
    }

    if (value.length > 100) {
      return 'Email is too long';
    }

    return null;
  }
}
