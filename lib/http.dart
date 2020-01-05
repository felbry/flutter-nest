import 'package:dio/dio.dart';
import './loading.dart' show Loading;
import 'package:flutter/material.dart';

Dio createDio () {
  Dio dio = Dio(BaseOptions(
    baseUrl: 'http://localhost:3000/api',
    contentType: Headers.formUrlEncodedContentType));
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions opt) {
      print(opt);
      Loading.before();
    },
    onResponse:(Response response){
      Future.delayed(Duration(seconds: 3), () {
        Loading.complete();
        return response.data['data'];
      });
      // return response.data['data'];
    },
    onError: (DioError err) async {
      print(err);
      Loading.complete();
      Scaffold
        .of(Loading.ctx)
        .showSnackBar(
          SnackBar(
            content: Text('查看提示信息')
          )
        );
    }
  ));
  return dio;
}
Dio dio = createDio();

