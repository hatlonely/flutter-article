//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_article_meta.g.dart';

/// ApiArticleMeta
///
/// Properties:
/// * [id] 
/// * [authorID] 
/// * [title] 
/// * [tags] 
/// * [brief] 
/// * [createAt] 
/// * [updateAt] 
/// * [authorName] 
/// * [authorAvatar] 
abstract class ApiArticleMeta implements Built<ApiArticleMeta, ApiArticleMetaBuilder> {
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

    @BuiltValueField(wireName: r'createAt')
    int? get createAt;

    @BuiltValueField(wireName: r'updateAt')
    int? get updateAt;

    @BuiltValueField(wireName: r'authorName')
    String? get authorName;

    @BuiltValueField(wireName: r'authorAvatar')
    String? get authorAvatar;

    ApiArticleMeta._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ApiArticleMetaBuilder b) => b;

    factory ApiArticleMeta([void updates(ApiArticleMetaBuilder b)]) = _$ApiArticleMeta;

    @BuiltValueSerializer(custom: true)
    static Serializer<ApiArticleMeta> get serializer => _$ApiArticleMetaSerializer();
}

class _$ApiArticleMetaSerializer implements StructuredSerializer<ApiArticleMeta> {
    @override
    final Iterable<Type> types = const [ApiArticleMeta, _$ApiArticleMeta];

    @override
    final String wireName = r'ApiArticleMeta';

    @override
    Iterable<Object?> serialize(Serializers serializers, ApiArticleMeta object,
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
        if (object.authorName != null) {
            result
                ..add(r'authorName')
                ..add(serializers.serialize(object.authorName,
                    specifiedType: const FullType(String)));
        }
        if (object.authorAvatar != null) {
            result
                ..add(r'authorAvatar')
                ..add(serializers.serialize(object.authorAvatar,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ApiArticleMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApiArticleMetaBuilder();

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
                case r'createAt':
                    result.createAt = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'updateAt':
                    result.updateAt = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'authorName':
                    result.authorName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'authorAvatar':
                    result.authorAvatar = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

