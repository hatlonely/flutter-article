// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_article_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiArticleMeta extends ApiArticleMeta {
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
  final int? createAt;
  @override
  final int? updateAt;
  @override
  final String? authorName;
  @override
  final String? authorAvatar;

  factory _$ApiArticleMeta([void Function(ApiArticleMetaBuilder)? updates]) =>
      (new ApiArticleMetaBuilder()..update(updates)).build();

  _$ApiArticleMeta._(
      {this.id,
      this.authorID,
      this.title,
      this.tags,
      this.brief,
      this.createAt,
      this.updateAt,
      this.authorName,
      this.authorAvatar})
      : super._();

  @override
  ApiArticleMeta rebuild(void Function(ApiArticleMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiArticleMetaBuilder toBuilder() =>
      new ApiArticleMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiArticleMeta &&
        id == other.id &&
        authorID == other.authorID &&
        title == other.title &&
        tags == other.tags &&
        brief == other.brief &&
        createAt == other.createAt &&
        updateAt == other.updateAt &&
        authorName == other.authorName &&
        authorAvatar == other.authorAvatar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), authorID.hashCode),
                                title.hashCode),
                            tags.hashCode),
                        brief.hashCode),
                    createAt.hashCode),
                updateAt.hashCode),
            authorName.hashCode),
        authorAvatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiArticleMeta')
          ..add('id', id)
          ..add('authorID', authorID)
          ..add('title', title)
          ..add('tags', tags)
          ..add('brief', brief)
          ..add('createAt', createAt)
          ..add('updateAt', updateAt)
          ..add('authorName', authorName)
          ..add('authorAvatar', authorAvatar))
        .toString();
  }
}

class ApiArticleMetaBuilder
    implements Builder<ApiArticleMeta, ApiArticleMetaBuilder> {
  _$ApiArticleMeta? _$v;

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

  int? _createAt;
  int? get createAt => _$this._createAt;
  set createAt(int? createAt) => _$this._createAt = createAt;

  int? _updateAt;
  int? get updateAt => _$this._updateAt;
  set updateAt(int? updateAt) => _$this._updateAt = updateAt;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  String? _authorAvatar;
  String? get authorAvatar => _$this._authorAvatar;
  set authorAvatar(String? authorAvatar) => _$this._authorAvatar = authorAvatar;

  ApiArticleMetaBuilder() {
    ApiArticleMeta._defaults(this);
  }

  ApiArticleMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _authorID = $v.authorID;
      _title = $v.title;
      _tags = $v.tags?.toBuilder();
      _brief = $v.brief;
      _createAt = $v.createAt;
      _updateAt = $v.updateAt;
      _authorName = $v.authorName;
      _authorAvatar = $v.authorAvatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiArticleMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiArticleMeta;
  }

  @override
  void update(void Function(ApiArticleMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiArticleMeta build() {
    _$ApiArticleMeta _$result;
    try {
      _$result = _$v ??
          new _$ApiArticleMeta._(
              id: id,
              authorID: authorID,
              title: title,
              tags: _tags?.build(),
              brief: brief,
              createAt: createAt,
              updateAt: updateAt,
              authorName: authorName,
              authorAvatar: authorAvatar);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApiArticleMeta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
