// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_list_article_res.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiListArticleRes extends ApiListArticleRes {
  @override
  final BuiltList<ApiArticle>? articles;

  factory _$ApiListArticleRes(
          [void Function(ApiListArticleResBuilder)? updates]) =>
      (new ApiListArticleResBuilder()..update(updates)).build();

  _$ApiListArticleRes._({this.articles}) : super._();

  @override
  ApiListArticleRes rebuild(void Function(ApiListArticleResBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiListArticleResBuilder toBuilder() =>
      new ApiListArticleResBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiListArticleRes && articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc(0, articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiListArticleRes')
          ..add('articles', articles))
        .toString();
  }
}

class ApiListArticleResBuilder
    implements Builder<ApiListArticleRes, ApiListArticleResBuilder> {
  _$ApiListArticleRes? _$v;

  ListBuilder<ApiArticle>? _articles;
  ListBuilder<ApiArticle> get articles =>
      _$this._articles ??= new ListBuilder<ApiArticle>();
  set articles(ListBuilder<ApiArticle>? articles) =>
      _$this._articles = articles;

  ApiListArticleResBuilder() {
    ApiListArticleRes._defaults(this);
  }

  ApiListArticleResBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _articles = $v.articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiListArticleRes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiListArticleRes;
  }

  @override
  void update(void Function(ApiListArticleResBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiListArticleRes build() {
    _$ApiListArticleRes _$result;
    try {
      _$result = _$v ?? new _$ApiListArticleRes._(articles: _articles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        _articles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApiListArticleRes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
