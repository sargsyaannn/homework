class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);

  String getInfo() => '$title by $author, $pages pages';
}

void main() {
  final book = Book('Սասունցի Դավիթ', 'Հայկական էպոս', 240);
  print(book.getInfo());
}
