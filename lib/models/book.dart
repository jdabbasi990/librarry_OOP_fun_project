class Book {
  String? author;
  String? title;
  String? srlID;

  Book(String author, String title, String srlID)
  {
    this.author = author;
    this.title = title;
    this.srlID = srlID;
  }
  
  void printBook(){
    print('Title: ${title}. Author: ${author}. SerialNO: ${srlID}');
  }
}