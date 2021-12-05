//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:articleapi/src/model/api_article_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_list_article_meta_res.g.dart';

/// ApiListArticleMetaRes
///
/// Properties:
/// * [articleMetas] 
abstract class ApiListArticleMetaRes implements Built<ApiListArticleMetaRes, ApiListArticleMetaResBuilder> {
    @BuiltValueField(wireName: r'articleMetas')
    BuiltList<ApiArticleMeta>? get articleMetas;

    ApiListArticleMetaRes._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ApiListArticleMetaResBuilder b) => b;

    factory ApiListArticleMetaRes([void updates(ApiListArticleMetaResBuilder b)]) = _$ApiListArticleMetaRes;

    @BuiltValueSerializer(custom: true)
    static Serializer<ApiListArticleMetaRes> get serializer => _$ApiListArticleMetaResSerializer();
}

class _$ApiListArticleMetaResSerializer implements StructuredSerializer<ApiListArticleMetaRes> {
    @override
    final Iterable<Type> types = const [ApiListArticleMetaRes, _$ApiListArticleMetaRes];

    @override
    final String wireName = r'ApiListArticleMetaRes';

    @override
    Iterable<Object?> serialize(Serializers serializers, ApiListArticleMetaRes object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.articleMetas != null) {
            result
                ..add(r'articleMetas')
                ..add(serializers.serialize(object.articleMetas,
                    specifiedType: const FullType(BuiltList, [FullType(ApiArticleMeta)])));
        }
        return result;
    }

    @override
    ApiListArticleMetaRes deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApiListArticleMetaResBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'articleMetas':
                    result.articleMetas.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ApiArticleMeta)])) as BuiltList<ApiArticleMeta>);
                    break;
            }
        }
        return result.build();
    }
}

