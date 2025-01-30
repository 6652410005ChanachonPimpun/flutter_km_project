import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project/views/home04_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home03UI extends StatefulWidget {
  const Home03UI({super.key});

  @override
  State<Home03UI> createState() => _Home03UIState();
}

class _Home03UIState extends State<Home03UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          "โย่วววววววววววว",
          style: TextStyle(color: Colors.deepOrange, fontFamily: 'Kanit'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: const Color.fromARGB(255, 183, 11, 77),
            ),
          ),
          IconButton(
              onPressed: () {
                //ตรวจสอบ platfrom
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                }
              },
              icon: Icon(
                Icons.exit_to_app,
                color: const Color.fromARGB(255, 247, 19, 255),
              ))
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home04UI(),
                  ),
                );
              },
              child: Text(
                'go home',
                style: TextStyle(fontFamily: 'Kanit'),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sounteast asia'),
              accountEmail: Text('www.sss.f.ad'),
              decoration: BoxDecoration(color: Colors.indigoAccent),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2024/01/29/08/35/girl-8539256_1280.jpg'),
              ),
              otherAccountsPictures: [
                Image.asset('assets/images/pig1.png'),
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.amber,
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.home,
              ),
              trailing: Icon(
                Icons.numbers,
              ),
              title: Text('ข้อครวญ'),
              subtitle: Text('วันนี้วันจันทร์'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.umbrella,
                color: Colors.red,
              ),
              title: Text(
                'คือไรหรอครับ',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'Give me mana',
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.account_balance_wallet,
              ),
              trailing: Icon(
                Icons.gamepad_rounded,
              ),
              title: Text('พระโอ้วววววววววว'),
              subtitle: Text('ลองดูมั้ยยยยยยยยยยยยยยยยยย'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.radar_rounded,
              ),
              trailing: Icon(
                Icons.mail_lock_rounded,
              ),
              title: Text('Mail'),
              subtitle: Text('Mail นะ'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.key_off_rounded,
              ),
              trailing: Icon(
                Icons.panorama_horizontal_rounded,
              ),
              title: Text('ไม่่มีกุญแจ'),
              subtitle: Text('เห็นอยู่ว่าเป็นสี่เหลี่ยม'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
