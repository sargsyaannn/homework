Future<int> getNumber(int value) async {
  await Future.delayed(const Duration(milliseconds: 100));
  if (value <= 0) {
    throw Exception('Թիվը պետք է դրական լինի');
  }
  return value;
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (error) {
    return 0;
  }
}

Future<void> main() async {
  print('Դրական թիվ՝ ${await safeGetNumber(5)}');
  print('Սխալի դեպքում՝ ${await safeGetNumber(-2)}');
}
