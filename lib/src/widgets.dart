import 'package:flutter/material.dart';

// ********************************************************************************************************************** \\
// ******************************************** RankingByCategory ******************************************************* \\
// ********************************************************************************************************************** \\

class RankingByCategory extends StatelessWidget {
  /// List 5 top novels from each category
  const RankingByCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> novelName = [
      '魔術師クノンは見えている',
      '煤まみれの騎士',
      '【連載版】左遷された無能王子は実力を隠したい',
      'ニセモノ聖女が本物に担ぎ上げられるまでのその過程',
      '見切りから始める我流剣術',
    ];

    final List<String> novelAuthor = [
      '南野海風',
      '美浜ヨシヒコ',
      '茨木野',
      'エイ',
      '氷純',
    ];

    final List<String> novelDetails = [
      '・ハイファンタジー｜ファンタジー｜',
      '・ハイファンタジー｜ファンタジー｜',
      '・ハイファンタジー｜ファンタジー｜',
      '・異世界恋愛｜',
      '・ハイファンタジー｜ファンタジー｜',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              '恋愛',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          for (int i = 0; i < novelName.length; i++)
            novelList(i, novelName[i], novelAuthor[i], novelDetails[i])
        ],
      ),
    );
  }

  Widget novelList(int index, String title, String author, String detail) {
    var rankingColor;

    switch (index) {
      case 0:
        rankingColor = Colors.amber[400];
        break;

      case 1:
        rankingColor = Colors.grey[400];
        break;

      case 2:
        rankingColor = Colors.brown[200];
        break;

      default:
        rankingColor = Colors.white;
    }

    return Column(
      children: [
        Row(
          children: [
            // Ranking
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 10),
              child: Container(
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    (index + 1).toString(),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: rankingColor,
                ),
              ),
            ),

            // Novel's Detail
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        author,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        detail,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
