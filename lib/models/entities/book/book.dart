import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
abstract class Book with _$Book {
  factory Book({
    @required String title,
    @required String thumnailUrl,
  }) = _Book;
}
