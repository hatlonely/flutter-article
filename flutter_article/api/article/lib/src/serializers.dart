//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:articleapi/src/date_serializer.dart';
import 'package:articleapi/src/model/date.dart';

import 'package:articleapi/src/model/api_article.dart';
import 'package:articleapi/src/model/api_article_id.dart';
import 'package:articleapi/src/model/api_author.dart';
import 'package:articleapi/src/model/api_author_id.dart';
import 'package:articleapi/src/model/api_list_article_res.dart';
import 'package:articleapi/src/model/inline_object.dart';
import 'package:articleapi/src/model/protobuf_any.dart';
import 'package:articleapi/src/model/rpc_status.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApiArticle,
  ApiArticleID,
  ApiAuthor,
  ApiAuthorID,
  ApiListArticleRes,
  InlineObject,
  ProtobufAny,
  RpcStatus,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
