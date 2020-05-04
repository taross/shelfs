// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookTearOff {
  const _$BookTearOff();

  _Book call({@required String title, @required String thumnailUrl}) {
    return _Book(
      title: title,
      thumnailUrl: thumnailUrl,
    );
  }
}

// ignore: unused_element
const $Book = _$BookTearOff();

mixin _$Book {
  String get title;
  String get thumnailUrl;

  $BookCopyWith<Book> get copyWith;
}

abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call({String title, String thumnailUrl});
}

class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object title = freezed,
    Object thumnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      thumnailUrl:
          thumnailUrl == freezed ? _value.thumnailUrl : thumnailUrl as String,
    ));
  }
}

abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call({String title, String thumnailUrl});
}

class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object title = freezed,
    Object thumnailUrl = freezed,
  }) {
    return _then(_Book(
      title: title == freezed ? _value.title : title as String,
      thumnailUrl:
          thumnailUrl == freezed ? _value.thumnailUrl : thumnailUrl as String,
    ));
  }
}

class _$_Book implements _Book {
  _$_Book({@required this.title, @required this.thumnailUrl})
      : assert(title != null),
        assert(thumnailUrl != null);

  @override
  final String title;
  @override
  final String thumnailUrl;

  @override
  String toString() {
    return 'Book(title: $title, thumnailUrl: $thumnailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.thumnailUrl, thumnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumnailUrl, thumnailUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(thumnailUrl);

  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);
}

abstract class _Book implements Book {
  factory _Book({@required String title, @required String thumnailUrl}) =
      _$_Book;

  @override
  String get title;
  @override
  String get thumnailUrl;
  @override
  _$BookCopyWith<_Book> get copyWith;
}
