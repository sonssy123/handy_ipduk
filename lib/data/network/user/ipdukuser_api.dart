import 'package:dio/dio.dart';
import 'package:handy_ipduk/data/common/data_source.dart';
import 'package:handy_ipduk/data/models/freezed/ipdukuser.dart';
import 'package:handy_ipduk/data/network/common/network_manager.dart';
import 'package:handy_ipduk/data/network/user/dto/res_ipdukuser.dart';

class IpdukUserApi implements DataSource<IpdukUser> {
  final _dio = NetworkManager().dio;

  @override
  Future<IpdukUser> addOne(IpdukUser item) async {
    try {
      var response = await _dio.post('/tb_user/add', data: item.toJson());
      return IpdukUser.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<IpdukUser> deleteOne(IpdukUser item) async {
    try {
      var response = await _dio.delete('/tb_user/${item.ipdukuser}');
      return IpdukUser.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<List<IpdukUser>> getAll() async {
    try {
      var response = await _dio.get('/tb_user');
      return ResIpdukUser.fromJson(response.data).tbusers;
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

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
          await _dio.put('/tb_user/${item.ipdukuser}', data: item.toJson());
      return IpdukUser.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }
}
