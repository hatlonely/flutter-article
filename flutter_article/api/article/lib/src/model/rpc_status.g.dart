// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RpcStatus extends RpcStatus {
  @override
  final int? code;
  @override
  final String? message;
  @override
  final BuiltList<ProtobufAny>? details;

  factory _$RpcStatus([void Function(RpcStatusBuilder)? updates]) =>
      (new RpcStatusBuilder()..update(updates)).build();

  _$RpcStatus._({this.code, this.message, this.details}) : super._();

  @override
  RpcStatus rebuild(void Function(RpcStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RpcStatusBuilder toBuilder() => new RpcStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RpcStatus &&
        code == other.code &&
        message == other.message &&
        details == other.details;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), message.hashCode), details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RpcStatus')
          ..add('code', code)
          ..add('message', message)
          ..add('details', details))
        .toString();
  }
}

class RpcStatusBuilder implements Builder<RpcStatus, RpcStatusBuilder> {
  _$RpcStatus? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<ProtobufAny>? _details;
  ListBuilder<ProtobufAny> get details =>
      _$this._details ??= new ListBuilder<ProtobufAny>();
  set details(ListBuilder<ProtobufAny>? details) => _$this._details = details;

  RpcStatusBuilder() {
    RpcStatus._defaults(this);
  }

  RpcStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RpcStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RpcStatus;
  }

  @override
  void update(void Function(RpcStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RpcStatus build() {
    _$RpcStatus _$result;
    try {
      _$result = _$v ??
          new _$RpcStatus._(
              code: code, message: message, details: _details?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RpcStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
