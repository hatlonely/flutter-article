//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_author.g.dart';

/// ApiAuthor
///
/// Properties:
/// * [id] 
/// * [key] 
/// * [name] 
abstract class ApiAuthor implements Built<ApiAuthor, ApiAuthorBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'key')
    String? get key;

    @BuiltValueField(wireName: r'name')
    String? get name;

    ApiAuthor._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ApiAuthorBuilder b) => b;

    factory ApiAuthor([void updates(ApiAuthorBuilder b)]) = _$ApiAuthor;

    @BuiltValueSerializer(custom: true)
    static Serializer<ApiAuthor> get serializer => _$ApiAuthorSerializer();
}

class _$ApiAuthorSerializer implements StructuredSerializer<ApiAuthor> {
    @override
    final Iterable<Type> types = const [ApiAuthor, _$ApiAuthor];

    @override
    final String wireName = r'ApiAuthor';

    @override
    Iterable<Object?> serialize(Serializers serializers, ApiAuthor object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.key != null) {
            result
                ..add(r'key')
                ..add(serializers.serialize(object.key,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ApiAuthor deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApiAuthorBuilder();

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
                case r'key':
                    result.key = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

