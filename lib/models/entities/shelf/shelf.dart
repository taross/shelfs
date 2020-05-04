import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shelfs/models/entities/entities.dart';

part 'shelf.freezed.dart';

@freezed
abstract class Shelf with _$Shelf {
  factory Shelf({
    @required String name,
    @required String description,
    @required List<Book> books,
  }) = _Shelf;
}
