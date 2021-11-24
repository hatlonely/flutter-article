// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protobuf_any.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProtobufAny extends ProtobufAny {
  @override
  final String? typeUrl;
  @override
  final String? value;

  factory _$ProtobufAny([void Function(ProtobufAnyBuilder)? updates]) =>
      (new ProtobufAnyBuilder()..update(updates)).build();

  _$ProtobufAny._({this.typeUrl, this.value}) : super._();

  @override
  ProtobufAny rebuild(void Function(ProtobufAnyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtobufAnyBuilder toBuilder() => new ProtobufAnyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtobufAny &&
        typeUrl == other.typeUrl &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, typeUrl.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProtobufAny')
          ..add('typeUrl', typeUrl)
          ..add('value', value))
        .toString();
  }
}

class ProtobufAnyBuilder implements Builder<ProtobufAny, ProtobufAnyBuilder> {
  _$ProtobufAny? _$v;

  String? _typeUrl;
  String? get typeUrl => _$this._typeUrl;
  set typeUrl(String? typeUrl) => _$this._typeUrl = typeUrl;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ProtobufAnyBuilder() {
    ProtobufAny._defaults(this);
  }

  ProtobufAnyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeUrl = $v.typeUrl;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtobufAny other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProtobufAny;
  }

  @override
  void update(void Function(ProtobufAnyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtobufAny build() {
    final _$result = _$v ?? new _$ProtobufAny._(typeUrl: typeUrl, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
