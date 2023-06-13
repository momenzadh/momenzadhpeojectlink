import 'package:momenzadhpeojectlink/common/exceptions.dart';
import 'package:momenzadhpeojectlink/data/product.dart';
abstract class IProductDataSource{
  Future<List<ProductEntity>>.getAll(int sort);
  Future<List<ProductEntity>>.search(String searchTerm);
}

class ProductRemoteDataSource implements IProductDataSource{
  final Dio httpClient;

  ProductRemoteDataSource(this.httpClient);
  @override
  Future<List<ProductEntity>>.getAll(int sort) async{
    final responce = await httpClient.get('product/list?sort=$sort');
    validateResponnse(response);
  }

  Future<List<ProductEntity>>.search(String searchTerm) {

  }

  validateResponnse(Response response){
    if(response.statusCode !=200){
      throw AppException();
    }
  }

}