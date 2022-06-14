import 'package:flutter/cupertino.dart';
import 'package:post_api/model/model.dart';
import 'package:post_api/services/api_service.dart';

class ProductPage extends ChangeNotifier {
  ProductModel? _product;

  ProductModel? get product {
    return _product;
  }

  set productM(ProductModel? productM) {
    _product = productM;
  }

  createData(String title, String price, String description, String image,
      String category) async {
    _product = await postProduct(title, price, description, image, category);
    notifyListeners();
  }
}
