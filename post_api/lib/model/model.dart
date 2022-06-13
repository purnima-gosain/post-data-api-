class ProductModel {
  final int? id;
  final String? title;
  final String? price;
  final String? description;
  final String? image;
  final String? category;

  const ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.category});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        image: json['image'],
        category: json['category']);
  }
}
