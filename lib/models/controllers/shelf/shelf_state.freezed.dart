// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'shelf_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShelfStateTearOff {
  const _$ShelfStateTearOff();

  _ShelfState call({Shelf shelf, List<Book> searchedBooks}) {
    return _ShelfState(
      shelf: shelf,
      searchedBooks: searchedBooks,
    );
  }
}

// ignore: unused_element
const $ShelfState = _$ShelfStateTearOff();

mixin _$ShelfState {
  Shelf get shelf;
  List<Book> get searchedBooks;

  $ShelfStateCopyWith<ShelfState> get copyWith;
}

abstract class $ShelfStateCopyWith<$Res> {
  factory $ShelfStateCopyWith(
          ShelfState value, $Res Function(ShelfState) then) =
      _$ShelfStateCopyWithImpl<$Res>;
  $Res call({Shelf shelf, List<Book> searchedBooks});

  $ShelfCopyWith<$Res> get shelf;
}

class _$ShelfStateCopyWithImpl<$Res> implements $ShelfStateCopyWith<$Res> {
  _$ShelfStateCopyWithImpl(this._value, this._then);

  final ShelfState _value;
  // ignore: unused_field
  final $Res Function(ShelfState) _then;

  @override
  $Res call({
    Object shelf = freezed,
    Object searchedBooks = freezed,
  }) {
    return _then(_value.copyWith(
      shelf: shelf == freezed ? _value.shelf : shelf as Shelf,
      searchedBooks: searchedBooks == freezed
          ? _value.searchedBooks
          : searchedBooks as List<Book>,
    ));
  }

  @override
  $ShelfCopyWith<$Res> get shelf {
    if (_value.shelf == null) {
      return null;
    }
    return $ShelfCopyWith<$Res>(_value.shelf, (value) {
      return _then(_value.copyWith(shelf: value));
    });
  }
}

abstract class _$ShelfStateCopyWith<$Res> implements $ShelfStateCopyWith<$Res> {
  factory _$ShelfStateCopyWith(
          _ShelfState value, $Res Function(_ShelfState) then) =
      __$ShelfStateCopyWithImpl<$Res>;
  @override
  $Res call({Shelf shelf, List<Book> searchedBooks});

  @override
  $ShelfCopyWith<$Res> get shelf;
}

class __$ShelfStateCopyWithImpl<$Res> extends _$ShelfStateCopyWithImpl<$Res>
    implements _$ShelfStateCopyWith<$Res> {
  __$ShelfStateCopyWithImpl(
      _ShelfState _value, $Res Function(_ShelfState) _then)
      : super(_value, (v) => _then(v as _ShelfState));

  @override
  _ShelfState get _value => super._value as _ShelfState;

  @override
  $Res call({
    Object shelf = freezed,
    Object searchedBooks = freezed,
  }) {
    return _then(_ShelfState(
      shelf: shelf == freezed ? _value.shelf : shelf as Shelf,
      searchedBooks: searchedBooks == freezed
          ? _value.searchedBooks
          : searchedBooks as List<Book>,
    ));
  }
}

class _$_ShelfState implements _ShelfState {
  _$_ShelfState({this.shelf, this.searchedBooks});

  @override
  final Shelf shelf;
  @override
  final List<Book> searchedBooks;

  @override
  String toString() {
    return 'ShelfState(shelf: $shelf, searchedBooks: $searchedBooks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShelfState &&
            (identical(other.shelf, shelf) ||
                const DeepCollectionEquality().equals(other.shelf, shelf)) &&
            (identical(other.searchedBooks, searchedBooks) ||
                const DeepCollectionEquality()
                    .equals(other.searchedBooks, searchedBooks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shelf) ^
      const DeepCollectionEquality().hash(searchedBooks);

  @override
  _$ShelfStateCopyWith<_ShelfState> get copyWith =>
      __$ShelfStateCopyWithImpl<_ShelfState>(this, _$identity);
}

abstract class _ShelfState implements ShelfState {
  factory _ShelfState({Shelf shelf, List<Book> searchedBooks}) = _$_ShelfState;

  @override
  Shelf get shelf;
  @override
  List<Book> get searchedBooks;
  @override
  _$ShelfStateCopyWith<_ShelfState> get copyWith;
}
