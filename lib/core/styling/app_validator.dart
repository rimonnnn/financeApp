class AppValidator {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your email";
    } else if (!value.contains("@")) {
      return "Please enter a valiad email";
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your password";
    } else if (value.length < 8) {
      return "Please enter at least 8 characters";
    }
    return null;
  }

  static String? confirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return "Please confirm your password";
    } else if (value != password) {
      return "Passwords do not match";
    }
    return null;
  }
}
