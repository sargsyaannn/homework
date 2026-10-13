Future<int> delayedValue(int value) async {
  await Future.delayed(const Duration(milliseconds: 100));
  return value;
}

Future<int> sumValues(int a, int b) async {
  final values = await Future.wait([delayedValue(a), delayedValue(b)]);
  return values[0] + values[1];
}

Future<void> main() async {
  print('Գումարը՝ ${await sumValues(7, 5)}');
}
