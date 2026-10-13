List<int> findPair(List<int> numbers, int target) {
  final seen = <int, int>{};
  for (var i = 0; i < numbers.length; i++) {
    final complement = target - numbers[i];
    if (seen.containsKey(complement)) {
      return [seen[complement]!, i];
    }
    seen[numbers[i]] = i;
  }
  return [];
}

void main() {
  print('Ինդեքսները՝ ${findPair([2, 7, 11, 15], 9)}');
  print('Զույգ չկա՝ ${findPair([1, 2, 3], 10)}');
}
