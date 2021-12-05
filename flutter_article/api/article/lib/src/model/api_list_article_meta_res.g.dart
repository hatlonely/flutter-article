// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_list_article_meta_res.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiListArticleMetaRes extends ApiListArticleMetaRes {
  @override
  final BuiltList<ApiArticleMeta>? articleMetas;

  factory _$ApiListArticleMetaRes(
          [void Function(ApiListArticleMetaResBuilder)? updates]) =>
      (new ApiListArticleMetaResBuilder()..update(updates)).build();

  _$ApiListArticleMetaRes._({this.articleMetas}) : super._();

  @override
  ApiListArticleMetaRes rebuild(
          void Function(ApiListArticleMetaResBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiListArticleMetaResBuilder toBuilder() =>
      new ApiListArticleMetaResBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiListArticleMetaRes && articleMetas == other.articleMetas;
  }

  @override
  int get hashCode {
    return $jf($jc(0, articleMetas.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiListArticleMetaRes')
          ..add('articleMetas', articleMetas))
        .toString();
  }
}

class ApiListArticleMetaResBuilder
    implements Builder<ApiListArticleMetaRes, ApiListArticleMetaResBuilder> {
  _$ApiListArticleMetaRes? _$v;

  ListBuilder<ApiArticleMeta>? _articleMetas;
  ListBuilder<ApiArticleMeta> get articleMetas =>
      _$this._articleMetas ??= new ListBuilder<ApiArticleMeta>();
  set articleMetas(ListBuilder<ApiArticleMeta>? articleMetas) =>
      _$this._articleMetas = articleMetas;

  ApiListArticleMetaResBuilder() {
    ApiListArticleMetaRes._defaults(this);
  }

  ApiListArticleMetaResBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _articleMetas = $v.articleMetas?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiListArticleMetaRes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiListArticleMetaRes;
  }

  @override
  void update(void Function(ApiListArticleMetaResBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiListArticleMetaRes build() {
    _$ApiListArticleMetaRes _$result;
    try {
      _$result = _$v ??
          new _$ApiListArticleMetaRes._(articleMetas: _articleMetas?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articleMetas';
        _articleMetas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApiListArticleMetaRes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
