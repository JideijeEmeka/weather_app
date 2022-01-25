import 'package:dio/dio.dart';

class ApiStore {
  final String url;
  final Map<String, dynamic>? payload;

  ApiStore({required this.url, required this.payload});

  final Dio _dio = Dio();    

  void get({
    Function()? beforeSend,   
    Function(dynamic data)? onSuccess,
    Function(dynamic onError)? onError,
  }) {
    _dio.get(url, queryParameters: payload).then((response) {
      if (onSuccess != null) {
        onSuccess(response.data);
      }
    }).catchError((e) {
      if (onError != null) {
        onError(e);
      }
    });
  }
}
