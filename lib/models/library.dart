import 'book.dart';

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added');
    book.printBook();
  }

  void deleteBook(String srlNO) {
    books.removeWhere((book) => book.srlID == srlNO);
    print('Book removed with serial number $srlNO');
  }

  void listBooks() {
    if (books.isEmpty) {
      print('There are no books in the library at the moment.');
    } else {
      print('Below is the list of available books in the library.');
      for (var book in books) {
        book.printBook();
      }
    }
  }
}
