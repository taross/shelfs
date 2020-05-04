import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shelfs/models/entities/entities.dart';

part 'shelf_state.freezed.dart';

@freezed
abstract class ShelfState with _$ShelfState {
  factory ShelfState({
    Shelf shelf,
    List<Book> searchedBooks,
  }) = _ShelfState;
}
