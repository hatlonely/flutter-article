// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_author_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiAuthorID extends ApiAuthorID {
  @override
  final String? id;

  factory _$ApiAuthorID([void Function(ApiAuthorIDBuilder)? updates]) =>
      (new ApiAuthorIDBuilder()..update(updates)).build();

  _$ApiAuthorID._({this.id}) : super._();

  @override
  ApiAuthorID rebuild(void Function(ApiAuthorIDBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiAuthorIDBuilder toBuilder() => new ApiAuthorIDBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiAuthorID && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiAuthorID')..add('id', id))
        .toString();
  }
}

class ApiAuthorIDBuilder implements Builder<ApiAuthorID, ApiAuthorIDBuilder> {
  _$ApiAuthorID? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ApiAuthorIDBuilder() {
    ApiAuthorID._defaults(this);
  }

  ApiAuthorIDBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiAuthorID other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiAuthorID;
  }

  @override
  void update(void Function(ApiAuthorIDBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiAuthorID build() {
    final _$result = _$v ?? new _$ApiAuthorID._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
