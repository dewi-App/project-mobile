import 'package:dewi_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:dewi_app/users/homepage.dart';
import 'package:dewi_app/users/mapspage.dart';

class InformationPage extends StatefulWidget {
  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // image: AssetImage("assets/dewi.png"),
        title: Text("Tentang Kami"),
        //   //   // leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
          child: Column(children: [
        Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 120,
            color: Palette.pblue2,
            alignment: Alignment.bottomLeft,
            child: Text(
              "Dewi Kota Bandung",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            )),
        ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: ((context) => HomePage()),
              ));
            },
            leading: Icon(
              Icons.home,
              // color: Palette.pblue1,
            ),
            title: Text("Home",
                style: TextStyle(
                  fontSize: 15,
                ))),
        ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: ((context) => MapsPage()),
              ));
            },
            leading: Icon(
              Icons.location_on_sharp,
              // color: Palette.pblue1,
            ),
            title: Text("Maps",
                style: TextStyle(
                  fontSize: 15,
                ))),
        ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: ((context) => InformationPage()),
              ));
            },
            leading: Icon(
              Icons.info_sharp,
              // color: Palette.pblue1,
            ),
            title: Text("Tentang",
                style: TextStyle(
                  fontSize: 15,
                )))
      ])),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: Container(
              width: 1000.0,
              height: 260.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      // fit: BoxFit.cover,
                      scale: 2,
                      image: AssetImage('assets/dewi.png'))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
            child: Container(
              child: Text(
                  "Dewi adalah sebuah aplikasi destinasi wisata di kota bandung yang menyediakan berbagai informasi terbaru di kota bandung, untuk memungkinka pengguna aplikasi dapat mendapatkan pelayanan da untuk memudahkan pengguna menemuka berbagai tempat wisata yang ada di kota Bandung dan menyediakan berbagai tempat UMKM seperti penginapan,caffe,restoran,mesuem, dan berbagai tempat bersejarah yang ada di kota Bandung,yang dimana dewi juga merupakan lokal services yang menyajikan berbagai tempat rekreasi dan kuliner dan memenuhi berbagai kebutuhan informasi yag membantu masyarakat di kota Bandung."),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child: Container(
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ),
          ),
        ],
      ),
    );
  }
}
