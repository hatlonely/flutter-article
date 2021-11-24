import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ListArticlePage extends StatelessWidget {
  const ListArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('文章列表')),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 800,
            child: Column(
              children: const [ListArticle()],
            ),
          ),
        ),
      ),
    );
  }
}

class ListArticle extends StatefulWidget {
  const ListArticle({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListArticleState();
}

class _ListArticleState extends State<ListArticle> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.fromLTRB(10, 50, 10, 20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<Response<Map>>(
            future: Dio().get('http://k8s.rpc.article.hatlonely.com/v1/articles'),
            builder: (BuildContext context, AsyncSnapshot<Response<Map>> snapshot) {
              var cards = <Widget>[];

              var addCard = Card(
                elevation: 5,
                color: Theme.of(context).colorScheme.primaryVariant,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: InkWell(
                  child: const Center(
                    child: Text("+", style: TextStyle(color: Colors.white)),
                  ),
                  onTap: () => Navigator.pushNamed(context, "+"),
                ),
              );

              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                cards = ((snapshot.data as Response<Map>).data!["articles"] as List)
                    .map((e) => Card(
                          elevation: 5,
                          color: Theme.of(context).colorScheme.primaryVariant,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: InkWell(
                            child: Center(
                              child: Text((e as Map)["title"], style: const TextStyle(color: Colors.white)),
                            ),
                            onTap: () => Navigator.pushNamed(context, ""),
                          ),
                        ))
                    .toList();
              }

              cards.add(addCard);

              return GridView.extent(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                maxCrossAxisExtent: 200.0,
                physics: const NeverScrollableScrollPhysics(),
                children: cards.toList(),
              );
            }),
      ),
    );
  }
}