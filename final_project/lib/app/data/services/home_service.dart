import 'package:dio/dio.dart';
import 'package:final_project/app/data/models/book_model.dart';

class HomeService {
  Dio dio = Dio();
  static const host = 'https://final-project-go-batch-58.up.railway.app';

  Future <List<TBook>> getBooks(String token) async {
    try {
      final resp = await dio.get('$host/api/books', 
        options: Options(headers: {"authorization": 'Bearer $token'})
      );
      print('$resp');

      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final data = resp.data['data'];

        List<TBook> books = List.from(data.map((book) => TBook.fromJson(book)));
        return books;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}