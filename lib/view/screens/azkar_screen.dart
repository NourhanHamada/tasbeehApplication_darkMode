import 'package:flutter/material.dart';

import '../../constant.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'الأذكار',
          style: TextStyle(
            color: white,
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: ImageIcon(
            AssetImage(arrow,
            ),
            color: white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/azkarDetails');
                },
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image(
                      image:
                      AssetImage(
                          morning,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Text(
                          'أذكار الصباح',
                      style: TextStyle(
                        color: white,
                        fontSize: 18
                      ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image(
                    image:
                    AssetImage(
                        night,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                        'أذكار المساء',
                    style: TextStyle(
                      color: white,
                      fontSize: 18
                    ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
             const Text(
                'أذكار متنوعة',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image(
                    image:
                    AssetImage(
                      midnight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      'أذكار قيام الليل',
                      style: TextStyle(
                          color: white,
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image(
                    image:
                    AssetImage(
                      pray,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      'أذكار الصلاة',
                      style: TextStyle(
                          color: white,
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image(
                    image:
                    AssetImage(
                      bedtime,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      'أذكار النوم',
                      style: TextStyle(
                          color: white,
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image(
                    image:
                    AssetImage(
                      random,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      'أذكار متنوعة',
                      style: TextStyle(
                          color: white,
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              ),

            ],
          ),
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
                AssetImage(homeUnSelected),
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
                Navigator.pushNamed(context, '/azkar');
              },
              child: ImageIcon(
                AssetImage(bookUnSelected),
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
