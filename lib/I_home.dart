import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'kullanicilar/kullanici_kart.dart';

class IHome extends StatefulWidget {
  const IHome({super.key});

  @override
  State<IHome> createState() => _IHomeState();
}

List<String> kullanicilar = [
  "İbrahim KONÇ",
  "Mehmet GEZER",
  "Ayşe ÇALIŞKAN",
  "Zeynep UÇMAN",
  "Mahmut ALMAN",
  "Kamil TEMBEL",
  "Salih KATAN",
];

class _IHomeState extends State<IHome> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController data = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF2F2C7F),
        title: const Text("Kullanıcı Listesi"),
      ),
      body: Padding(
        padding: EdgeInsets.all(33.0),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: TextField(
                  controller: data,
                  decoration: InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.person_add_alt),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Kullanıcı Adı Soyadı',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  if (!data.text.toString().isEmpty) {
                    kullanicilar.add(data.text.toString());
                    setState(() {});
                  } else {
                    print("Lütfen Boş Bırakmayınız !");
                  }
                },
                icon: Icon(Icons.add_box_outlined),
                color: Color(0xFF2F2C7F),
                iconSize: 45.0,
              )
            ]),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: kullanicilar
                    .map((e) => KullaniciKart(
                          kullanici: e.toString(),
                        ))
                    .toList()
                    .reversed
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
