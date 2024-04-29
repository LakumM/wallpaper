import 'package:flutter/material.dart';

class WallPaperFrontScreen extends StatelessWidget {
  List<String> listLandsWall = [
    'assets/images/lands/lands 1.jpg',
    'assets/images/lands/lands 2.jpg',
    'assets/images/lands/lands 3.jpg',
    'assets/images/lands/lands 4.jpg',
    'assets/images/lands/lands 5.jpg',
    'assets/images/lands/lands 6.jpg',
    'assets/images/lands/lands 7.jpg',
    'assets/images/lands/lands 8.jpg',
    'assets/images/lands/lands 9.jpg',
    'assets/images/lands/lands 10.jpg',
    'assets/images/lands/lands 11.jpg',
    'assets/images/lands/lands 12.jpg',
    'assets/images/lands/lands 13.jpg',
    'assets/images/lands/lands 14.jpg',
    'assets/images/lands/lands 15.jpg',
    'assets/images/lands/lands 16.jpg',
    'assets/images/lands/lands 17.jpg',
    'assets/images/lands/lands 18.jpg',
    'assets/images/lands/lands 19.jpg',
    'assets/images/lands/lands 20.jpg',
    'assets/images/lands/lands 21.jpg',
    'assets/images/lands/lands 22.jpg',
    'assets/images/lands/lands 23.jpg',
    'assets/images/lands/lands 24.jpg',
    'assets/images/lands/lands 25.jpg',
    'assets/images/lands/lands 26.jpg'
  ];

  List<dynamic> listColor = [
    0xFFDFFF00,
    0xFFFFBF00,
    0xFFFF7F50,
    0xFFDE3163,
    0xFF9FE2BF,
    0xFF40E0D0,
    0xFF6495ED,
    0xFFCCCCFF,
    0xFF800000,
    0xFF00FFFF,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),

        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: TextField(
                decoration: InputDecoration(
              suffixIcon: Icon(Icons.search_rounded),
              hintText: 'Find Wallpaper..',
              label: Text('Find Wallpaper..'),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Text(
              'Best of the lands',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: SizedBox(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: listLandsWall.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        listLandsWall[index],
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: 160,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'The Color tone',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listColor.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: 50,
                      width: 50,
                      color: Color(listColor[index]),
                    );
                  })),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 240,
            width: double.infinity,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/1,),

              itemCount: listLandsWall.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 7, top: 0, right: 7, bottom: 5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        listLandsWall[index],
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      )),
                );
              },
            ),
          )
        ]));
  }
}
