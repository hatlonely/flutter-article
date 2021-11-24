//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_author_id.g.dart';

/// ApiAuthorID
///
/// Properties:
/// * [id] 
abstract class ApiAuthorID implements Built<ApiAuthorID, ApiAuthorIDBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    ApiAuthorID._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ApiAuthorIDBuilder b) => b;

    factory ApiAuthorID([void updates(ApiAuthorIDBuilder b)]) = _$ApiAuthorID;

    @BuiltValueSerializer(custom: true)
    static Serializer<ApiAuthorID> get serializer => _$ApiAuthorIDSerializer();
}

class _$ApiAuthorIDSerializer implements StructuredSerializer<ApiAuthorID> {
    @override
    final Iterable<Type> types = const [ApiAuthorID, _$ApiAuthorID];

    @override
    final String wireName = r'ApiAuthorID';

    @override
    Iterable<Object?> serialize(Serializers serializers, ApiAuthorID object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ApiAuthorID deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApiAuthorIDBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

