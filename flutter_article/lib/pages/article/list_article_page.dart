import 'package:articleapi/articleapi.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_article/pages/article/get_article_page.dart';
import 'package:intl/intl.dart';

class ListArticlePage extends StatelessWidget {
  final ArticleServiceApi client;

  const ListArticlePage({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '文章列表',
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
            width: 1000,
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

  static const kImageUriList = <String>[
    "https://k8s.minio.hatlonely.com/article/thumbnail/IMG_2684.png",
    "https://k8s.minio.hatlonely.com/article/thumbnail/IMG_2704.png",
    "https://k8s.minio.hatlonely.com/article/thumbnail/IMG_2731.png",
    "https://k8s.minio.hatlonely.com/article/thumbnail/IMG_2732.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 10),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: FutureBuilder<Response<ApiListArticleMetaRes>>(future: () {
          return client.articleServiceListArticleMeta();
        }(), builder: (BuildContext context, AsyncSnapshot<Response<ApiListArticleMetaRes>> snapshot) {
          var cards = <Widget>[];

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            cards = snapshot.data!.data!.articleMetas!
                .asMap()
                .entries
                .map((e) => Card(
                    elevation: 1,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: const EdgeInsets.all(0),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: ListTile(
                          // 头像
                          leading: CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(e.value.authorAvatar!),
                          ),
                          // 作者
                          title: Text(
                            e.value.authorName!,
                            style: const TextStyle(
                              fontFamily: 'Roboto Condensed',
                              fontFamilyFallback: [
                                'Source Han Sans SC',
                              ],
                            ),
                          ),
                          // 时间
                          trailing: Text(
                            DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(e.value.createAt! * 1000)),
                            style: const TextStyle(
                              fontFamily: 'Roboto Condensed',
                              fontFamilyFallback: [
                                'Source Han Sans SC',
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        // 插图
                        child: Image(
                          image: NetworkImage(kImageUriList[e.key % kImageUriList.length]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              elevation: 0,
                              margin: const EdgeInsets.all(0),
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                  child: Column(
                                    children: [
                                      // 标题
                                      Text(
                                        e.value.title!,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Roboto Condensed',
                                          fontFamilyFallback: [
                                            'Source Han Sans SC',
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () =>
                                    Navigator.pushNamed(context, GetArticlePage.kRouteName, arguments: e.value.id),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])))
                .toList();
          }

          return GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(5),
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            maxCrossAxisExtent: 600.0,
            physics: const NeverScrollableScrollPhysics(),
            children: cards.toList(),
          );
        }),
      ),
    );
  }
}
