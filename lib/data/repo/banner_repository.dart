import 'package:momenzadhpeojectlink/common/http_client.dart';
import 'package:momenzadhpeojectlink/data/banner.dart';
import 'package:momenzadhpeojectlink/data/source/banner_data_source.dart';
import 'package:momenzadhpeojectlink/data/repo/product_repository.dart';
final bannerRepository = BannerRepository(BannerRemoteDataSource(httpClient));

abstract class IBannerRepository {
  Future<List<BannerEntity>> getAll();
}

class BannerRepository implements IBannerRepository {
  final IBannerDataSource dataSource;

  BannerRepository(this.dataSource);

  @override
  Future<List<BannerEntity>> getAll() => dataSource.getAll();
}
