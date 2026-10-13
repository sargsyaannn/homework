class Product {
  String name;
  String category;
  double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  final totals = <String, double>{};
  for (final product in products) {
    totals.update(
      product.category,
      (value) => value + product.price,
      ifAbsent: () => product.price,
    );
  }
  return totals;
}

void main() {
  final products = [
    Product('Հաց', 'Սնունդ', 500),
    Product('Կաթ', 'Սնունդ', 700),
    Product('Տետր', 'Գրենական պիտույքներ', 350),
  ];
  print('Գումարներն ըստ կատեգորիայի՝ ${totalByCategory(products)}');
}
