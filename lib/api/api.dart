import 'package:shelfs/models/entities/entities.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class API {
  Future<List<Book>> searchByTitle(String title);
}

class APIClient implements API {
  @override
  Future<List<Book>> searchByTitle(String title) async {
    var response = await http.get('https://www.googleapis.com/books/v1/volumes?q=intitle:${title}');
    var body = json.decode(response.body);
    var result = body['items']
        .where(
      (item) => item['volumeInfo'].keys.contains('imageLinks') == true,
    )
        .map(
      (item) {
        var book = Book(
          title: item['volumeInfo']['title'],
          thumnailUrl: item['volumeInfo']['imageLinks']['smallThumbnail'],
        );
        return book;
      },
    ).toList();

    return List<Book>.from(result);
  }
}
