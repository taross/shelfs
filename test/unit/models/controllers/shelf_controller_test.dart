import 'package:flutter_test/flutter_test.dart';
import 'package:shelfs/api/api.dart';

import 'package:shelfs/models/controllers/controllers.dart';
import 'package:shelfs/models/entities/entities.dart';

main() {
  ShelfController controller;
  API api;

  setUpAll(() {
    Shelf shelf = Shelf(name: 'MockShelf', description: 'This is mock shelf.', books: []);
    controller = ShelfController(ShelfState(shelf: shelf));
    api = APIClient();
    controller.debugMockDependency<API>(api);
  });

  group('本を書庫に追加する', () {
    test('「すべてがFになる」を書庫に追加できる', () async {
      var book = Book(
        title: 'すべてがFになる',
        thumnailUrl:
            'http://books.google.com/books/content?id=zoe6DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
      );
      expect(controller.debugState.shelf.books, isEmpty);
      await controller.addBook(book);
      expect(controller.debugState.shelf.books, isNotEmpty);
      expect(controller.debugState.shelf.books.last, book);
    });
  });

  group('APIから本を検索する', () {
    test('「すべてがFになる」を検索すると、３冊発見できる', () async {
      expect(controller.debugState.searchedBooks, isNull);
      await controller.search(title: 'すべてがFになる');
      expect(controller.debugState.searchedBooks, isNotNull);
      expect(controller.debugState.searchedBooks.length, 3);
    });
  });
}
