// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject extends InlineObject {
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

  factory _$InlineObject([void Function(InlineObjectBuilder)? updates]) =>
      (new InlineObjectBuilder()..update(updates)).build();

  _$InlineObject._(
      {this.authorID,
      this.title,
      this.tags,
      this.brief,
      this.content,
      this.createAt,
      this.updateAt})
      : super._();

  @override
  InlineObject rebuild(void Function(InlineObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObjectBuilder toBuilder() => new InlineObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject &&
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
                    $jc($jc($jc(0, authorID.hashCode), title.hashCode),
                        tags.hashCode),
                    brief.hashCode),
                content.hashCode),
            createAt.hashCode),
        updateAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject')
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

class InlineObjectBuilder
    implements Builder<InlineObject, InlineObjectBuilder> {
  _$InlineObject? _$v;

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

  InlineObjectBuilder() {
    InlineObject._defaults(this);
  }

  InlineObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(InlineObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineObject;
  }

  @override
  void update(void Function(InlineObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject build() {
    _$InlineObject _$result;
    try {
      _$result = _$v ??
          new _$InlineObject._(
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
            'InlineObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
