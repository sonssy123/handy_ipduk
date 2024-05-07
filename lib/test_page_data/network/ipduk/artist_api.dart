import 'package:dio/dio.dart';
import 'package:handy_ipduk/test_page_data/common/data_source.dart';
import 'package:handy_ipduk/test_page_data/network/freezed/artist.dart';
import 'package:handy_ipduk/test_page_data/network/common/network_manager.dart';
import 'package:handy_ipduk/test_page_data/network/ipduk/dto/res_artist.dart';

class ArtistApi implements DataSource<Artist> {
  final _dio = NetworkManager().dio;

  @override
  Future<Artist> addOne(Artist item) async {
    try {
      var response = await _dio.post('/activities/add', data: item.toJson());
      return Artist.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<Artist> deleteOne(Artist item) async {
    try {
      var response = await _dio.delete('/activities/${item.artist}');
      return Artist.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<List<Artist>> getAll() async {
    try {
      var response = await _dio.get('/activities');
      return ResArtist.fromJson(response.data).activities;
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<Artist> getOne(String key) async {
    try {
      var response = await _dio.get('/activities/$key');
      return Artist.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<Artist> updateOne(Artist item) async {
    try {
      var response =
          await _dio.put('/activities/${item.artist}', data: item.toJson());
      return Artist.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }
}
