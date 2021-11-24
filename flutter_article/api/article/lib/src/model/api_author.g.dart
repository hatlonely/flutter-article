// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiAuthor extends ApiAuthor {
  @override
  final String? id;
  @override
  final String? key;
  @override
  final String? name;

  factory _$ApiAuthor([void Function(ApiAuthorBuilder)? updates]) =>
      (new ApiAuthorBuilder()..update(updates)).build();

  _$ApiAuthor._({this.id, this.key, this.name}) : super._();

  @override
  ApiAuthor rebuild(void Function(ApiAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiAuthorBuilder toBuilder() => new ApiAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiAuthor &&
        id == other.id &&
        key == other.key &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), key.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiAuthor')
          ..add('id', id)
          ..add('key', key)
          ..add('name', name))
        .toString();
  }
}

class ApiAuthorBuilder implements Builder<ApiAuthor, ApiAuthorBuilder> {
  _$ApiAuthor? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ApiAuthorBuilder() {
    ApiAuthor._defaults(this);
  }

  ApiAuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _key = $v.key;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiAuthor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiAuthor;
  }

  @override
  void update(void Function(ApiAuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiAuthor build() {
    final _$result = _$v ?? new _$ApiAuthor._(id: id, key: key, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
