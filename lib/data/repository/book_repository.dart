import 'package:dio/dio.dart';
import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/response.dart';
import 'package:flutter_blog/data/model/Book.dart';

class BookRepository {
  Future<ResponseDTO> fetchBookDetail(int id) async {
    Response<dynamic> response = await dio.get("/books/$id");
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Book book = Book.fromJson(responseDTO.response);
    responseDTO.response = book;
    return responseDTO;
  }
}
