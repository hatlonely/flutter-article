import 'package:articleapi/articleapi.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_article/pages/article/get_article_page.dart';
import 'package:flutter_article/pages/article/list_article_page.dart';

void main() {
  runApp(ArticleApp());
}

class ArticleApp extends StatelessWidget {
  final client = Articleapi(
    basePathOverride: 'https://k8s.rpc.article.hatlonely.com',
  ).getArticleServiceApi();

  ArticleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hatlonely 的文章',
      theme: FlexColorScheme.light(
        scheme: FlexScheme.greyLaw,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        // fontFamily: GoogleFonts.robotoCondensed().fontFamily,
        // fontFamily: GoogleFonts.longCang().fontFamily,
        // fontFamily: 'SourceHanSansSC',
        fontFamily: 'Source Han Sans SC',
        transparentStatusBar: true,
        appBarElevation: 5,
      ).toTheme,
      themeMode: ThemeMode.system,
      routes: {
        GetArticlePage.kRouteName: (context) => GetArticlePage(client: client),
      },
      home: ListArticlePage(client: client),
    );
  }
}
