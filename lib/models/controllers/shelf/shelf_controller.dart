import 'package:shelfs/api/api.dart';
import 'package:shelfs/models/controllers/controllers.dart';
import 'package:shelfs/models/entities/entities.dart';
import 'package:state_notifier/state_notifier.dart';

class ShelfController extends StateNotifier<ShelfState> with LocatorMixin {
  ShelfController(ShelfState state) : super(state);

  API get client => read();

  Future<void> addBook(Book book) async {
    var newBooks = state.shelf.books..add(book);

    state = state.copyWith(
      shelf: state.shelf.copyWith(books: newBooks),
      searchedBooks: [],
    );
  }

  Future<void> changeShelf(Shelf shelf) async {
    state = state.copyWith(shelf: shelf);
  }

  Future<void> search({String title}) async {
    if (title.isEmpty) {
      return;
    }

    List<Book> result;
    try {
      result = await client.searchByTitle(title);
    } catch (e) {
      print(e);
    }

    state = state.copyWith(searchedBooks: result);
  }

  Future<void> clearSearchedBook() async {
    state = state.copyWith(searchedBooks: []);
  }
}
