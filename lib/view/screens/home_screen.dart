import 'package:flutter/material.dart';
import 'package:tasbeh_application/constant.dart';
import 'package:http/http.dart' as http;

import '../../controller/timePray.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    'الأحد 25,سبتمبر',
                  style: TextStyle(
                    color: white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                    '13 صفر , 1444',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20
            ),
            // First Card - -> Location and time left for prayer
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: mainColor,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('مصر ، القاهرة',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        ImageIcon(
                          AssetImage(location),
                          color: white,
                        ),
                      ],
                    ),
                    Text('متبقي على',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('دقيقة',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text('15:20',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30
                              ),
                            ),
                          ],
                        ),
                        Text('صلاة الضهر',
                        style: TextStyle(
                          color: white,
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Second Card - -> Prayers Time
            Card(
              color: card,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: FutureBuilder(
                  future: TimePray.getTimePray(),
                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return (snapshot.hasData) ?
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        width: 165,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'مواعيد الصلاة',
                                style: TextStyle(
                                    color: black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              ImageIcon(
                                AssetImage(mosque),
                                color: black,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${snapshot.data.shurooq}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: darkGreen,
                                    fontSize: 16,
                                  ),
                                ),
                                Text('الشروق',
                                  style: TextStyle(
                                    color: darkGreen,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${snapshot.data.fajr}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: darkGreen,
                                    fontSize: 16,
                                  ),
                                ),
                                Text('الفجر',
                                  style: TextStyle(
                                    color: darkGreen,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${snapshot.data.dhuhr}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: darkGreen,
                                    fontSize: 16,
                                  ),
                                ),
                                Text('الظهر',
                                  style: TextStyle(
                                    color: darkGreen,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${snapshot.data.asr}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: mainColor,
                                    fontSize: 16,
                                  ),
                                ),
                                Text('العصر',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${snapshot.data.maghrib}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text('المغرب',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${snapshot.data.isha}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text('العشاء',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                      : const CircularProgressIndicator();
                },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Third Card - -> Random Duaa
            Card(
              color: greenCard,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('دعاء اليوم',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 14,
                    ),
                    ),
                   const SizedBox(
                      height: 5,
                    ),
                    Text('اللَّهُمَّ إنِّي أعُوذُ بكَ مِنَ الهَمِّ والحَزَنِ، والعَجْزِ والكَسَلِ، والبُخْلِ، والجُبْنِ، وضَلَعِ الدَّيْنِ، وغَلَبَةِ الرِّجالِ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                      color: white,
                      fontSize: 16,
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');

              },
              child: ImageIcon(
                AssetImage(homeSelected),
                color: mainColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/azkar');
              },
              child: ImageIcon(
                AssetImage(bookUnSelected),
                color: navbarDark,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/sebha');

                },
                child: ImageIcon(
                  AssetImage(sebhaUnSelected),
                  color: navbarDark,
                ),
              ),
              label: ''
          ),
        ],
      ),
    );
  }
}
