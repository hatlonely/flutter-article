import 'package:articleapi/articleapi.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class GetArticlePage extends StatelessWidget {
  static const kRouteName = '/article/get';

  final ArticleServiceApi client;

  const GetArticlePage({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articleID = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text('文章详情')),
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
            a: TextStyle(fontFamily: GoogleFonts.robotoCondensed().fontFamily, fontFamilyFallback: [
              GoogleFonts.zcoolXiaoWei().fontFamily!,
            ]),
            h1: TextStyle(fontFamily: GoogleFonts.robotoCondensed().fontFamily, fontFamilyFallback: [
              GoogleFonts.zcoolXiaoWei().fontFamily!,
            ]),
            h2: TextStyle(fontFamily: GoogleFonts.robotoCondensed().fontFamily, fontFamilyFallback: [
              GoogleFonts.zcoolXiaoWei().fontFamily!,
            ]),
            h3: TextStyle(fontFamily: GoogleFonts.robotoCondensed().fontFamily, fontFamilyFallback: [
              GoogleFonts.zcoolXiaoWei().fontFamily!,
            ]),
            h4: TextStyle(fontFamily: GoogleFonts.robotoCondensed().fontFamily, fontFamilyFallback: [
              GoogleFonts.zcoolXiaoWei().fontFamily!,
            ]),
            h5: TextStyle(fontFamily: GoogleFonts.robotoCondensed().fontFamily, fontFamilyFallback: [
              GoogleFonts.zcoolXiaoWei().fontFamily!,
            ]),
            h6: TextStyle(fontFamily: GoogleFonts.robotoCondensed().fontFamily, fontFamilyFallback: [
              GoogleFonts.zcoolXiaoWei().fontFamily!,
            ]),
            p: TextStyle(fontFamily: GoogleFonts.robotoCondensed().fontFamily, fontFamilyFallback: [
              GoogleFonts.notoSerif().fontFamily!,
            ]),
            code: TextStyle(
              fontFamily: GoogleFonts.sourceCodePro().fontFamily,
            ),
          ),
        );
      }
      return const Text("光速加载中");
    });
  }
}
