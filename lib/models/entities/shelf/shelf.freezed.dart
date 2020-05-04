// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'shelf.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShelfTearOff {
  const _$ShelfTearOff();

  _Shelf call(
      {@required String name,
      @required String description,
      @required List<Book> books}) {
    return _Shelf(
      name: name,
      description: description,
      books: books,
    );
  }
}

// ignore: unused_element
const $Shelf = _$ShelfTearOff();

mixin _$Shelf {
  String get name;
  String get description;
  List<Book> get books;

  $ShelfCopyWith<Shelf> get copyWith;
}

abstract class $ShelfCopyWith<$Res> {
  factory $ShelfCopyWith(Shelf value, $Res Function(Shelf) then) =
      _$ShelfCopyWithImpl<$Res>;
  $Res call({String name, String description, List<Book> books});
}

class _$ShelfCopyWithImpl<$Res> implements $ShelfCopyWith<$Res> {
  _$ShelfCopyWithImpl(this._value, this._then);

  final Shelf _value;
  // ignore: unused_field
  final $Res Function(Shelf) _then;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object books = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      books: books == freezed ? _value.books : books as List<Book>,
    ));
  }
}

abstract class _$ShelfCopyWith<$Res> implements $ShelfCopyWith<$Res> {
  factory _$ShelfCopyWith(_Shelf value, $Res Function(_Shelf) then) =
      __$ShelfCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, List<Book> books});
}

class __$ShelfCopyWithImpl<$Res> extends _$ShelfCopyWithImpl<$Res>
    implements _$ShelfCopyWith<$Res> {
  __$ShelfCopyWithImpl(_Shelf _value, $Res Function(_Shelf) _then)
      : super(_value, (v) => _then(v as _Shelf));

  @override
  _Shelf get _value => super._value as _Shelf;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object books = freezed,
  }) {
    return _then(_Shelf(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      books: books == freezed ? _value.books : books as List<Book>,
    ));
  }
}

class _$_Shelf implements _Shelf {
  _$_Shelf(
      {@required this.name, @required this.description, @required this.books})
      : assert(name != null),
        assert(description != null),
        assert(books != null);

  @override
  final String name;
  @override
  final String description;
  @override
  final List<Book> books;

  @override
  String toString() {
    return 'Shelf(name: $name, description: $description, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Shelf &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(books);

  @override
  _$ShelfCopyWith<_Shelf> get copyWith =>
      __$ShelfCopyWithImpl<_Shelf>(this, _$identity);
}

abstract class _Shelf implements Shelf {
  factory _Shelf(
      {@required String name,
      @required String description,
      @required List<Book> books}) = _$_Shelf;

  @override
  String get name;
  @override
  String get description;
  @override
  List<Book> get books;
  @override
  _$ShelfCopyWith<_Shelf> get copyWith;
}
