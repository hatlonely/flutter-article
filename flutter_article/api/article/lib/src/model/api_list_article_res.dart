//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:articleapi/src/model/api_article.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_list_article_res.g.dart';

/// ApiListArticleRes
///
/// Properties:
/// * [articles] 
abstract class ApiListArticleRes implements Built<ApiListArticleRes, ApiListArticleResBuilder> {
    @BuiltValueField(wireName: r'articles')
    BuiltList<ApiArticle>? get articles;

    ApiListArticleRes._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ApiListArticleResBuilder b) => b;

    factory ApiListArticleRes([void updates(ApiListArticleResBuilder b)]) = _$ApiListArticleRes;

    @BuiltValueSerializer(custom: true)
    static Serializer<ApiListArticleRes> get serializer => _$ApiListArticleResSerializer();
}

class _$ApiListArticleResSerializer implements StructuredSerializer<ApiListArticleRes> {
    @override
    final Iterable<Type> types = const [ApiListArticleRes, _$ApiListArticleRes];

    @override
    final String wireName = r'ApiListArticleRes';

    @override
    Iterable<Object?> serialize(Serializers serializers, ApiListArticleRes object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.articles != null) {
            result
                ..add(r'articles')
                ..add(serializers.serialize(object.articles,
                    specifiedType: const FullType(BuiltList, [FullType(ApiArticle)])));
        }
        return result;
    }

    @override
    ApiListArticleRes deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApiListArticleResBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'articles':
                    result.articles.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ApiArticle)])) as BuiltList<ApiArticle>);
                    break;
            }
        }
        return result.build();
    }
}

