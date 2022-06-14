import 'package:dio/dio.dart';

import '../model/model.dart';

ProductModel? productModel;

Future<ProductModel?> postProduct(String title, String price,
    String description, String image, String category) async {
  final Dio dio = Dio();
  final response = await dio.post("https://fakestoreapi.com/products", data: {
    'title': title,
    'price': price,
    'description': description,
    'image': image,
    'category': category
  });
  if (response.statusCode == 200) {
    return ProductModel.fromJson(response.data);
  } else {
    throw Exception("Unable to post data");
  }
}
