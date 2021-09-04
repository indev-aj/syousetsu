import 'package:flutter/material.dart';
import 'package:syousetsu/src/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selected = 'ランキング';

  @override
  Widget build(BuildContext context) {
    final List<String> buttonNames = [
      'ランキング',
      '完結済みの連載小説',
      '更新された連載小説',
      '新着の短編小説'
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Center(
                child: Text(
                  '小説家になろう',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 10),
                    for (var item in buttonNames) categoryButton(item)
                  ],
                ),
              ),
              SizedBox(height: 25),
              RankingByCategory(),
              SizedBox(height: 25),
              RankingByCategory(),
              SizedBox(height: 25),
              RankingByCategory(),
              SizedBox(height: 25),
              RankingByCategory(),
              SizedBox(height: 25),
              RankingByCategory(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryButton(String buttonName) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selected = buttonName;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: _selected == buttonName ? Colors.blue : Colors.white,
          onPrimary: _selected == buttonName ? Colors.white : Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
