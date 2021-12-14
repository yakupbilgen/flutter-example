import 'dart:async';

import '../data/product_service.dart';
import '../models/product.dart';

class ProductBloc {
  get productStreamController => StreamController.broadcast();

  Stream get getStream => productStreamController.stream;

  List<Product> getAll() {
    return ProductService.getAll();
  }
}

final productBloc = ProductBloc();
