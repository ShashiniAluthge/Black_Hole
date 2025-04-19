class ValidatePassword {
 static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (value.length > 32) {
      return 'Password must not exceed 32 characters';
    }

    final hasUppercase = RegExp(r'[A-Z]');
    final hasLowercase = RegExp(r'[a-z]');
    final hasDigit = RegExp(r'\d');
    final hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    final hasSpace = RegExp(r'\s');

    if (!hasUppercase.hasMatch(value)) {
      return 'Password must have at least one uppercase letter';
    }
    if (!hasLowercase.hasMatch(value)) {
      return 'Password must have at least one lowercase letter';
    }
    if (!hasDigit.hasMatch(value)) {
      return 'Password must have at least one digit';
    }

    if (!hasSpecialChar.hasMatch(value)) {
      return 'Password must have at least one special character';
    }

    if (hasSpace.hasMatch(value)) {
      return 'Password must not contain spaces';
    }
    return null;
  }
}
