void main() {
  List<String> shopping = ['Հաց', 'Կաթ', 'Ձու'];
  shopping.add('Խնձոր');
  shopping.insert(1, 'Պանիր');
  shopping.removeAt(2);
  shopping[0] = 'հաց';
  print('Առաջին ապրանքը՝ ${shopping.first}');
  print('Վերջին ապրանքը՝ ${shopping.last}');
  print('Ցուցակը դատա՞րկ է՝ ${shopping.isEmpty}');
  print('Գնումների ցուցակ՝ $shopping');
}
