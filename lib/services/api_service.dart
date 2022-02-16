import 'package:dio/dio.dart';

import '../../utils/log_messenger.dart';

class ApiService {
  final String _allBaseUrl = 'https://fabcurate.easternts.in';
  Dio _dio = Dio();

  /// initial dio base data
  ApiService() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: _allBaseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    _dio = Dio(baseOptions);
  }

  // fetch all home sticky menu & offers banners.
  Future<Map<String, dynamic>> fetchAllHomeTopLevelData() async {
    try {
      Response response = await _dio.get('/top.json');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw 'home top level api error';
      }
    } catch (e) {
      shootLog(e.toString());
      throw 'home top level api error';
    }
  }

  // fetch all home category, unstitched & boutique collection.
  Future<Map<String, dynamic>> fetchAllHomeMiddleLevelData() async {
    try {
      Response response = await _dio.get('/middle.json');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw 'home middle level api error';
      }
    } catch (e) {
      shootLog(e.toString());
      throw 'home middle level api error';
    }
  }

  // fetch all home pattern range & design_occasion.
  Future<Map<String, dynamic>> fetchAllHomeBottomLevelData() async {
    try {
      Response response = await _dio.get('/bottom.json');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw 'home bottom level api error';
      }
    } catch (e) {
      shootLog(e.toString());
      throw 'home bottom level api error';
    }
  }

  // fetch all categories.
  Future<Map<String, dynamic>> fetchAllCategoryData() async {
    try {
      Response response = await _dio.get('/category.json');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw 'category api error';
      }
    } catch (e) {
      shootLog(e.toString());
      throw 'category api error';
    }
  }
}
