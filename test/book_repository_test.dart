import 'package:dio/dio.dart';
import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/response.dart';
import 'package:flutter_blog/data/model/Book.dart';
import 'package:logger/logger.dart';

void main() async {
  await fetch();
}

Future<void> fetch() async {
  Response<dynamic> response = await dio.get("/books/1");
  Logger().d(response.data);
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  print(responseDTO.success);
  print(responseDTO.error);
  print(responseDTO.response);
  Book book = Book.fromJson(responseDTO.response);
  responseDTO.response = book;
  print(book.content);
  print(book.title);
}
