//3. Create a class named “Book” with properties such as title, author, publisher, and price. Add getter and setter methods for each property. Also, add a method to calculate the
//discount price of the book based on a given percentage.

class Book {
  String _title;
  String _author;
  String _publisher;
  double _price;

  Book(this._title, this._author, this._publisher, this._price);

  set title(String title) {
    _title = title;
  }

  get name {
    print("Title: $_title");
    return _title;
  }

  set author(String author) {
    _author = author;
  }

  get writer {
    print("Author: $_author");
    return _author;
  }

  set publisher(String publisher) {
    _publisher = publisher;
  }

  get publish {
    print("Title: $_publisher");
    return _publisher;
  }

  set price(double price) {
    _price = price;
  }

  get rate {
    print("Book Price: \$$_price");
    return _price;
  }

  void discountPrice() {
    //Percentage to decimal 25/100
    double percent = 0.25;
    double discount = _price * percent;
    double dicountedPrice = _price - discount;
    print("Discounted Price is: \$${dicountedPrice.toStringAsFixed(2)}");
  }
}

void main() {
  Book book = Book(
      "Dart Programming for Beginners", "Mark Smart", "Packt Publishing", 7.99);
  book.name;
  book.writer;
  book.publish;
  book.rate;
  book.discountPrice();
}
