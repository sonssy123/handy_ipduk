import 'package:dio/dio.dart';
import 'package:handy_ipduk/data/common/data_source.dart';
import 'package:handy_ipduk/data/models/freezed/user.dart';
import 'package:handy_ipduk/data/network/user/dto/res_user.dart';
import 'package:handy_ipduk/data/network/common/network_manager.dart';

class UserApi implements DataSource<User> {
  final _dio = NetworkManager().dio;

  @override
  Future<User> addOne(User item) async {
    try {
      var response = await _dio.post('/tb_user/add', data: item.toJson());
      return User.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<User> deleteOne(User item) async {
    try {
      var response = await _dio.delete('/tb_user/${item.user}');
      return User.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<List<User>> getAll() async {
    try {
      var response = await _dio.get('/tb_user');
      return ResUser.fromJson(response.data).tbusers;
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<User> getOne(String key) async {
    try {
      var response = await _dio.get('/tb_user/$key');
      return User.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }

  @override
  Future<User> updateOne(User item) async {
    try {
      var response =
          await _dio.put('/tb_user/${item.user}', data: item.toJson());
      return User.fromJson(response.data);
    } on DioException catch (e) {
      return Future.error(e.message ?? '');
    }
  }
}
