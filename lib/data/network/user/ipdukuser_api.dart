import 'package:dio/dio.dart';
import 'package:handy_ipduk/data/common/data_source.dart';
import 'package:handy_ipduk/data/models/freezed/ipduk_user.dart';
import 'package:handy_ipduk/data/network/common/network_manager.dart';

class IpdukUserApi implements DataSource<IpdukUser> {
  final _dio = NetworkManager().dio;

  @override
  Future<IpdukUser> getOne(String key) async {
    try {
      var response = await _dio.get('/tb_user/$key');
      return IpdukUser.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<IpdukUser> updateOne(IpdukUser item) async {
    try {
      var response =
          await _dio.put('/tb_user/${item.uid}', data: item.toJson());
      return IpdukUser.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }
}
