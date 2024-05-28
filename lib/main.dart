import 'package:library_management/models/library.dart';
import 'package:library_management/models/book.dart';
import 'dart:io';

void main() {
  Library library = Library();

  while (true) {
    print('\t\t\t\t\t\t Library Management System\n');
    print('1. Add a Book');
    print('2. Remove a Book');
    print('3. List Books');
    print('4. Exit');
    stdout.write('Select an option\n');
    var option = stdin.readLineSync();

    switch (option) {
      case '1':
        print(Process.runSync("clear", [], runInShell: true).stdout);

        stdout.writeln('Please enter the Book title');
        String title = stdin.readLineSync() ?? " ";
        stdout.writeln('Please enter the Book Author');
        var author = stdin.readLineSync() ?? " ";
        stdout.writeln('Please enter the Book serial number');
        var srlNO = stdin.readLineSync() ?? " ";

        var book = Book(author, title, srlNO);
        library.addBook(book);
        break;

      case '2':
        stdout.writeln('Enter the book serial number');
        var srlNO = stdin.readLineSync() ?? " ";

        library.deleteBook(srlNO);
        break;

      case '3':
        stdout.writeln('All the books we have.');
        library.listBooks();
        break;

      case '4':
        stdout.writeln('Exiting ........');
        return;

      default:
        print('Invalid Option please type again');
    }
  }
}
