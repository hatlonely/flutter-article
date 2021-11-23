import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_article/pages/article/list_article_page.dart';

void main() {
  runApp(const ArticleApp());
}

class ArticleApp extends StatelessWidget {
  const ArticleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hatlonely 的文章',
      theme: FlexColorScheme.light(
        scheme: FlexScheme.bigStone,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        // fontFamily: GoogleFonts.robotoCondensed().fontFamily,
        // fontFamily: GoogleFonts.longCang().fontFamily,
        // fontFamily: 'SourceHanSansSC',
        transparentStatusBar: true,
        appBarElevation: 5,
      ).toTheme,
      themeMode: ThemeMode.system,
      // routes: {
      //   '/': (context) => ListArticlePage(),
      // },
      home: ListArticlePage(),
    );
  }
}
