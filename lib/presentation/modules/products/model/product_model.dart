class Product{
  final String image;
  final String name;
  final double price;
  int quantity;

  Product({required this.image, required this.name, required this.price,this.quantity=1});

  factory Product.fromJson(Map<String,dynamic>json){
    return Product(
      name: json['name'],
      image: json['image'],
      price: json['price'],
      quantity: json['quantity'] ?? 1,
     );
  }
   Map<String, dynamic> toJson() {
    return{
      'name': name,
      'image': image,
      'price': price,
      'quantity': quantity,
    };
   }
}