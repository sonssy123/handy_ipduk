import 'package:dio/dio.dart';
import 'package:handy_ipduk/data/common/data_source.dart';
import 'package:handy_ipduk/data/models/artist/artist.dart';
import 'package:handy_ipduk/data/network/common/network_manager.dart';

class ArtistApi implements DataSource<Artist> {
  final _dio = NetworkManager().dio;

  @override
  Future<Artist> getOne(String key) async {
    try {
      var response = await _dio.get('/tb_artist/$key');
      return Artist.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<Artist> updateOne(Artist item) async {
    try {
      var response =
          await _dio.put('/tb_artist/${item.id}', data: item.toJson());
      return Artist.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }
}
