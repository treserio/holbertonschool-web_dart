List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((temp) => double.parse((temp * 9 / 5 + 32).toStringAsFixed(2)))
      .toList();
}