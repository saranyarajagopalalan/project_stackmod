import 'package:ecommerce/model/product_model.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<ProductModel>?> getProduct() async {
    var client = http.Client();
    var uri = Uri.parse('https://fakestoreapi.com/products');
    var response = await client.get(uri, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'connection': 'keep-alive'
    });
    if (response.statusCode == 200) {
      var json = response.body;
      return productModelFromJson(json);
    }
  }

  Future<List<ProductModel>?> getSingleProduct(int id) async {
    var client = http.Client();
    var uri = Uri.parse('https://fakestoreapi.com/products/${id}');
  }
}
