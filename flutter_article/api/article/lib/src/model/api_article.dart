//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_article.g.dart';

/// ApiArticle
///
/// Properties:
/// * [id] 
/// * [authorID] 
/// * [title] 
/// * [tags] 
/// * [brief] 
/// * [content] 
/// * [createAt] 
/// * [updateAt] 
abstract class ApiArticle implements Built<ApiArticle, ApiArticleBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'authorID')
    String? get authorID;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'tags')
    BuiltList<String>? get tags;

    @BuiltValueField(wireName: r'brief')
    String? get brief;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'createAt')
    int? get createAt;

    @BuiltValueField(wireName: r'updateAt')
    int? get updateAt;

    ApiArticle._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ApiArticleBuilder b) => b;

    factory ApiArticle([void updates(ApiArticleBuilder b)]) = _$ApiArticle;

    @BuiltValueSerializer(custom: true)
    static Serializer<ApiArticle> get serializer => _$ApiArticleSerializer();
}

class _$ApiArticleSerializer implements StructuredSerializer<ApiArticle> {
    @override
    final Iterable<Type> types = const [ApiArticle, _$ApiArticle];

    @override
    final String wireName = r'ApiArticle';

    @override
    Iterable<Object?> serialize(Serializers serializers, ApiArticle object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.authorID != null) {
            result
                ..add(r'authorID')
                ..add(serializers.serialize(object.authorID,
                    specifiedType: const FullType(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.tags != null) {
            result
                ..add(r'tags')
                ..add(serializers.serialize(object.tags,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        if (object.brief != null) {
            result
                ..add(r'brief')
                ..add(serializers.serialize(object.brief,
                    specifiedType: const FullType(String)));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        if (object.createAt != null) {
            result
                ..add(r'createAt')
                ..add(serializers.serialize(object.createAt,
                    specifiedType: const FullType(int)));
        }
        if (object.updateAt != null) {
            result
                ..add(r'updateAt')
                ..add(serializers.serialize(object.updateAt,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ApiArticle deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApiArticleBuilder();

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
                case r'authorID':
                    result.authorID = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'title':
                    result.title = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'tags':
                    result.tags.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
                case r'brief':
                    result.brief = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'content':
                    result.content = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'createAt':
                    result.createAt = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'updateAt':
                    result.updateAt = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

