import 'package:http/http.dart' as http;

class ProductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? Category;
  String? img;
  Rating? rating;
  ProductModel(this.id, this.title, this.price, this.description, this.Category,
      this.img, this.rating);
  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    Category = json['Category'];
    img = json['img'];
    rating =
        json['rating'] != null ? new Rating.fromjson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['Category'] = this.Category;
    data['img'] = this.img;
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    return data;
  }
}

class Rating {
  double? rate;
  int? count;
  Rating(this.rate, this.count);

  Rating.fromjson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map();
    data['rate'] = this.rate;
    data['count'] = this.count;
    return data;
  }
}
