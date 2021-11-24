//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_article_id.g.dart';

/// ApiArticleID
///
/// Properties:
/// * [id] 
abstract class ApiArticleID implements Built<ApiArticleID, ApiArticleIDBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    ApiArticleID._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ApiArticleIDBuilder b) => b;

    factory ApiArticleID([void updates(ApiArticleIDBuilder b)]) = _$ApiArticleID;

    @BuiltValueSerializer(custom: true)
    static Serializer<ApiArticleID> get serializer => _$ApiArticleIDSerializer();
}

class _$ApiArticleIDSerializer implements StructuredSerializer<ApiArticleID> {
    @override
    final Iterable<Type> types = const [ApiArticleID, _$ApiArticleID];

    @override
    final String wireName = r'ApiArticleID';

    @override
    Iterable<Object?> serialize(Serializers serializers, ApiArticleID object,
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
    ApiArticleID deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApiArticleIDBuilder();

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

