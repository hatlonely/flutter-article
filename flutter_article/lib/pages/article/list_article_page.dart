import 'package:articleapi/articleapi.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_article/pages/article/get_article_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ListArticlePage extends StatelessWidget {
  final ArticleServiceApi client;

  const ListArticlePage({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '文章列表',
          style: TextStyle(
            color: Colors.white,
            fontFamily: GoogleFonts.robotoCondensed().fontFamily,
            fontFamilyFallback: [
              GoogleFonts.zcoolXiaoWei().fontFamily!,
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 800,
            child: Column(
              children: [ListArticleWidget(client: client)],
            ),
          ),
        ),
      ),
    );
  }
}

class ListArticleWidget extends StatelessWidget {
  final ArticleServiceApi client;

  const ListArticleWidget({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.fromLTRB(10, 50, 10, 20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<Response<ApiListArticleRes>>(future: () {
          return client.articleServiceListArticle();
        }(), builder: (BuildContext context, AsyncSnapshot<Response<ApiListArticleRes>> snapshot) {
          var cards = <Widget>[];

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            cards = snapshot.data!.data!.articles!
                .map((e) => Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.primaryVariant,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                e.title!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: GoogleFonts.robotoCondensed().fontFamily,
                                  fontFamilyFallback: [
                                    GoogleFonts.zcoolXiaoWei().fontFamily!,
                                  ],
                                ),
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "hatlonely",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: GoogleFonts.robotoCondensed().fontFamily,
                                      fontFamilyFallback: [
                                        GoogleFonts.zcoolXiaoWei().fontFamily!,
                                      ],
                                    ),
                                  ),
                                  Text(
                                    DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(e.createAt! * 1000)),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: GoogleFonts.robotoCondensed().fontFamily,
                                      fontFamilyFallback: [
                                        GoogleFonts.zcoolXiaoWei().fontFamily!,
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        onTap: () => Navigator.pushNamed(context, GetArticlePage.kRouteName, arguments: e.id),
                      ),
                    ))
                .toList();
          }

          return GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            maxCrossAxisExtent: 600.0,
            childAspectRatio: 3,
            physics: const NeverScrollableScrollPhysics(),
            children: cards.toList(),
          );
        }),
      ),
    );
  }
}
