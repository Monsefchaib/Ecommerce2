class Item{
  String title;
  String description;
  String imageUrl;
  double price;
  int quantity;

  Item(this.title, this.description, this.imageUrl, this.price, this.quantity);

  factory Item.fromJson(dynamic json) {
    return Item(
      json['title'] as String,
      json['description'] as String,
      json['imageUrl'] as String,
      json['price'] as double,
      json['quantity'] as int,
    );
  }

  @override
  String toString() {
    return 'Item{title: $title, description: $description, imageUrl: $imageUrl, price: $price, quantity: $quantity}';
  }
}