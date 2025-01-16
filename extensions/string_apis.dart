extension Numparsing on String {
  int parseInt() {
    return int.parse(this);
  }
}
extension on String {
  bool get isBlank => trim().isEmpty;
}