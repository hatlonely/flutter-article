// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_article_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiArticleID extends ApiArticleID {
  @override
  final String? id;

  factory _$ApiArticleID([void Function(ApiArticleIDBuilder)? updates]) =>
      (new ApiArticleIDBuilder()..update(updates)).build();

  _$ApiArticleID._({this.id}) : super._();

  @override
  ApiArticleID rebuild(void Function(ApiArticleIDBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiArticleIDBuilder toBuilder() => new ApiArticleIDBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiArticleID && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiArticleID')..add('id', id))
        .toString();
  }
}

class ApiArticleIDBuilder
    implements Builder<ApiArticleID, ApiArticleIDBuilder> {
  _$ApiArticleID? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ApiArticleIDBuilder() {
    ApiArticleID._defaults(this);
  }

  ApiArticleIDBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiArticleID other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiArticleID;
  }

  @override
  void update(void Function(ApiArticleIDBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiArticleID build() {
    final _$result = _$v ?? new _$ApiArticleID._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
