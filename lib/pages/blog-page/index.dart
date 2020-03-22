import 'package:flutter/material.dart';
import '../../http.dart' show dio;
import '../../components/drawer-builder.dart' show drawerBuilder;
import './models/artical-overview.dart' show ArticalOverview;

List<ListTile> genArticalList(articalList) {
  return List<ListTile>.from(articalList.map((v) => ListTile(
        title: Text(v.title),
        subtitle: Text(v.createdAt),
      )));
}

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  List<ArticalOverview> t = [];
  Future<List<ArticalOverview>> gd() async {
    dynamic response = await dio.get('/articals');
    print(response);
    print(response.data);
    return List<ArticalOverview>.from(response.data['articalList']
        .map((v) => ArticalOverview.fromJson(v)));
  }

  @override
  void initState() {
    super.initState();
    gd().then((val) {
      setState(() {
        t = val;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('博客'),
        ),
        drawer: drawerBuilder(context),
        body: Column(
          children: genArticalList(t),
        ));
  }
}
