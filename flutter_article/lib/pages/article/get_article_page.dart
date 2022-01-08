import 'package:articleapi/articleapi.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class GetArticlePage extends StatelessWidget {
  static const kRouteName = '/article/get';

  final ArticleServiceApi client;

  const GetArticlePage({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articleID = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '文章详情',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto Condensed',
            fontFamilyFallback: [
              'Source Han Sans SC',
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 800,
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: GetArticleWidget(client: client, articleID: articleID),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GetArticleWidget extends StatelessWidget {
  final ArticleServiceApi client;
  final String articleID;

  const GetArticleWidget({Key? key, required this.client, required this.articleID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Response<ApiArticle>>(future: () {
      return client.articleServiceGetArticle(id: articleID);
    }(), builder: (BuildContext context, AsyncSnapshot<Response<ApiArticle>> snapshot) {
      if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else if (snapshot.hasData) {
        return MarkdownBody(
          selectable: true,
          data: snapshot.data!.data!.content!,
          // styleSheetTheme: MarkdownStyleSheetBaseTheme.platform,
          styleSheet: MarkdownStyleSheet(
            a: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Source Han Sans SC',
            ]),
            h1: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Source Han Sans SC',
            ]),
            h2: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Source Han Sans SC',
            ]),
            h3: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Source Han Sans SC',
            ]),
            h4: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Source Han Sans SC',
            ]),
            h5: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Source Han Sans SC',
            ]),
            h6: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Source Han Sans SC',
            ]),
            p: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Source Han Sans SC',
            ]),
            code: const TextStyle(fontFamily: 'Roboto Condensed', fontFamilyFallback: [
              'Cousine',
            ]),
          ),
        );
      }
      return const Text(
        "光速加载中...",
        style: TextStyle(
          fontFamily: 'Roboto Condensed',
          fontFamilyFallback: [
            'Source Han Sans SC',
          ],
        ),
      );
    });
  }
}
