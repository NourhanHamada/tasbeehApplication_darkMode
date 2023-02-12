import 'package:flutter/material.dart';
import '../../constant.dart';

class SebhaScreen extends StatefulWidget {

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int sebhaCount = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'السبحة الالكترونية',
          style: TextStyle(
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w500
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 230,
                  height: 230,
                  decoration: BoxDecoration(
                    color: darkGreen,
                    borderRadius: BorderRadius.circular(1000)
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      sebhaCount++;
                    });
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: tasbehButton,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text(
                              '$sebhaCount',
                              style: TextStyle(
                                fontSize: 60,
                                color: white,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text('سبح',
                              style: TextStyle(
                                  color: darkGreen,
                                  fontSize: 16
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: navbarDark,
                elevation: 20,
                shape: const CircleBorder(),
              ),
                onPressed: (){
                  setState(() {
                    sebhaCount = 0;
                  });
            }, child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageIcon(AssetImage(reset),
                color: mainColor,
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
                  color: mainColor,
                ),
              ),
              label: ''
          ),
        ],
      ),
    );
  }
}
