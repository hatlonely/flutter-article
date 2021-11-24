// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiArticle extends ApiArticle {
  @override
  final String? id;
  @override
  final String? authorID;
  @override
  final String? title;
  @override
  final BuiltList<String>? tags;
  @override
  final String? brief;
  @override
  final String? content;
  @override
  final int? createAt;
  @override
  final int? updateAt;

  factory _$ApiArticle([void Function(ApiArticleBuilder)? updates]) =>
      (new ApiArticleBuilder()..update(updates)).build();

  _$ApiArticle._(
      {this.id,
      this.authorID,
      this.title,
      this.tags,
      this.brief,
      this.content,
      this.createAt,
      this.updateAt})
      : super._();

  @override
  ApiArticle rebuild(void Function(ApiArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiArticleBuilder toBuilder() => new ApiArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiArticle &&
        id == other.id &&
        authorID == other.authorID &&
        title == other.title &&
        tags == other.tags &&
        brief == other.brief &&
        content == other.content &&
        createAt == other.createAt &&
        updateAt == other.updateAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), authorID.hashCode),
                            title.hashCode),
                        tags.hashCode),
                    brief.hashCode),
                content.hashCode),
            createAt.hashCode),
        updateAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiArticle')
          ..add('id', id)
          ..add('authorID', authorID)
          ..add('title', title)
          ..add('tags', tags)
          ..add('brief', brief)
          ..add('content', content)
          ..add('createAt', createAt)
          ..add('updateAt', updateAt))
        .toString();
  }
}

class ApiArticleBuilder implements Builder<ApiArticle, ApiArticleBuilder> {
  _$ApiArticle? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _authorID;
  String? get authorID => _$this._authorID;
  set authorID(String? authorID) => _$this._authorID = authorID;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _brief;
  String? get brief => _$this._brief;
  set brief(String? brief) => _$this._brief = brief;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  int? _createAt;
  int? get createAt => _$this._createAt;
  set createAt(int? createAt) => _$this._createAt = createAt;

  int? _updateAt;
  int? get updateAt => _$this._updateAt;
  set updateAt(int? updateAt) => _$this._updateAt = updateAt;

  ApiArticleBuilder() {
    ApiArticle._defaults(this);
  }

  ApiArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _authorID = $v.authorID;
      _title = $v.title;
      _tags = $v.tags?.toBuilder();
      _brief = $v.brief;
      _content = $v.content;
      _createAt = $v.createAt;
      _updateAt = $v.updateAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiArticle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiArticle;
  }

  @override
  void update(void Function(ApiArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiArticle build() {
    _$ApiArticle _$result;
    try {
      _$result = _$v ??
          new _$ApiArticle._(
              id: id,
              authorID: authorID,
              title: title,
              tags: _tags?.build(),
              brief: brief,
              content: content,
              createAt: createAt,
              updateAt: updateAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApiArticle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
