import '../common/globals.dart';
import 'package:dio/dio.dart';

class Maronn {
  static final Maronn _instance = Maronn._internal();
  late Dio dio;

  factory Maronn() {
    return _instance;
  }

  Maronn setOptions(BaseOptions options) {
    dio.options = options;
    return this;
  }

  Maronn._internal() {
    dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 5); // 5 secondi
    dio.options.receiveTimeout = const Duration(seconds: 3); // 3 secondi
    dio.options.headers['x-api-key'] = Globals.apiKey;
  }

  Future<Response> get(String url,
      [Map<String, dynamic>? queryParameters, Options? options]) async {
    return await dio.get(url,
        queryParameters: queryParameters, options: options);
  }

  Future<Response> post(String url, dynamic data,
      [Map<String, dynamic>? queryParameters, Options? options]) async {
    return await dio.post(url,
        data: data, queryParameters: queryParameters, options: options);
  }

  Future<Response> put(String url, dynamic data,
      [Map<String, dynamic>? queryParameters, Options? options]) async {
    return await dio.put(url,
        data: data, queryParameters: queryParameters, options: options);
  }

  Future<Response> delete(String url,
      [Map<String, dynamic>? queryParameters, Options? options]) async {
    return await dio.delete(url,
        queryParameters: queryParameters, options: options);
  }

  Future<Response> patch(String url, dynamic data,
      [Map<String, dynamic>? queryParameters, Options? options]) async {
    return await dio.patch(url,
        data: data, queryParameters: queryParameters, options: options);
  }

  Future<Response> head(String url,
      [Map<String, dynamic>? queryParameters, Options? options]) async {
    return await dio.head(url,
        queryParameters: queryParameters, options: options);
  }

  Future<Response> download(String url, String savePath,
      [Map<String, dynamic>? queryParameters,
      void Function(int, int)? progressCallback,
      Options? options]) async {
    return await dio.download(url, savePath,
        options: options,
        onReceiveProgress: progressCallback,
        queryParameters: queryParameters);
  }
}
