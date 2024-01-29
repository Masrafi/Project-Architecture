extension StringX on String {
  bool isAlphabetValidated() {
    final pattern = r'^[A-Za-z0-9\s]+$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(trim());
  }
}
