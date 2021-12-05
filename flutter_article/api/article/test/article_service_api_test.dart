import 'package:test/test.dart';
import 'package:articleapi/articleapi.dart';


/// tests for ArticleServiceApi
void main() {
  final instance = Articleapi().getArticleServiceApi();

  group(ArticleServiceApi, () {
    //Future<JsonObject> articleServiceDelArticle(String id) async
    test('test articleServiceDelArticle', () async {
      // TODO
    });

    //Future<JsonObject> articleServiceDelAuthor({ String id }) async
    test('test articleServiceDelAuthor', () async {
      // TODO
    });

    //Future<JsonObject> articleServiceDelAuthorByKey(ApiAuthor body) async
    test('test articleServiceDelAuthorByKey', () async {
      // TODO
    });

    //Future<ApiArticle> articleServiceGetArticle(String id) async
    test('test articleServiceGetArticle', () async {
      // TODO
    });

    //Future<ApiListArticleRes> articleServiceListArticle({ int offset, int limit, String authorID }) async
    test('test articleServiceListArticle', () async {
      // TODO
    });

    //Future<ApiListArticleMetaRes> articleServiceListArticleMeta({ int offset, int limit, String authorID }) async
    test('test articleServiceListArticleMeta', () async {
      // TODO
    });

    //Future<JsonObject> articleServicePing() async
    test('test articleServicePing', () async {
      // TODO
    });

    //Future<ApiArticleID> articleServicePutArticle(ApiArticle body) async
    test('test articleServicePutArticle', () async {
      // TODO
    });

    //Future<ApiAuthorID> articleServicePutAuthor(ApiAuthor body) async
    test('test articleServicePutAuthor', () async {
      // TODO
    });

    //Future<JsonObject> articleServiceUpdateArticle(String id, InlineObject body) async
    test('test articleServiceUpdateArticle', () async {
      // TODO
    });

  });
}
