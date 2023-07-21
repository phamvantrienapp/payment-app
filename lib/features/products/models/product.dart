class Product {
  final int? id;
  final String? name;
  final String? price;
  final String? description;
  final String? imgUrl;
  final String? imgType;

  Product({
    this.id,
    this.name,
    this.price,
    this.description,
    this.imgUrl,
    this.imgType,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      description: json['description'] as String?,
      imgUrl: json['imgUrl'] as String?,
      imgType: json['imgType'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'imageUrl': imgUrl,
      'imgType': imgType,
    };
  }
}
