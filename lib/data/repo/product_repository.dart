import 'package:momenzadhpeojectlink/data/product.dart';

abstract class IProductRepository{
  Future<List<ProductEntity>>.getAll(int sort);
  Future<List<ProductEntity>>.search(String searchTerm);
}

class ProductRepository implements IProductRepository{
  @override
  Future<List>() {
    // TODO: implement Future
    throw UnimplementedError();
  }

  @override
  getAll(int sort) {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  search(String searchTerm) {
    // TODO: implement search
    throw UnimplementedError();
  }

}