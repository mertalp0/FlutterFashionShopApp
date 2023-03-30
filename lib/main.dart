// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: AnaSayfa());
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _seciliSayfaIndex = 0;
  final List<Widget> _sayfalarListesi = [
    const Kesfet(),
    const Ara(),
    const Menu(),
    const Sepet(),
    const Hesabim(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _sayfalarListesi[_seciliSayfaIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors
            .black, // seçilen sayfanın simgesi ve yazısı için kullanılan renk
        unselectedItemColor: Colors.grey,
        currentIndex: _seciliSayfaIndex,
        onTap: (index) {
          setState(() {
            _seciliSayfaIndex = index;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Keşfet',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menü',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Sepet',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Hesabım',
          ),
        ],
      ),
    );
  }
}

class Kesfet extends StatefulWidget {
  const Kesfet({super.key});

  @override
  State<Kesfet> createState() => _KesfetState();
}

class _KesfetState extends State<Kesfet> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "FASHION",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                "Ara",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 15,
              )
            ],
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/kesfet1.jpg"),
                      fit: BoxFit.cover),
                  color: Color.fromARGB(26, 169, 42, 42),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 380,
                        width: MediaQuery.of(context).size.width,
                      ),
                      const Text(
                        "YENİ ÜRÜNLER",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text("SATIN AL",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              )
            ]),
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/kesfet2.jpg"),
                      fit: BoxFit.cover),
                  color: Color.fromARGB(26, 169, 42, 42),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 380,
                        width: MediaQuery.of(context).size.width,
                      ),
                      const Text(
                        "TARZINI YARAT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text("SATIN AL",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              )
            ]),
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Stack(children: [
                  Container(
                    color: Colors.black,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage("assets/kadin6.jpg"),
                            fit: BoxFit.cover),
                        color: const Color.fromARGB(26, 169, 42, 42),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 25,
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "BAYRAM COLLECTİON",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text("SATIN AL",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.red,
                              ))
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "#FASHİONCOMMUNITY",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "İlham al ve görünümlerini #fashioncommunity etiketiyle paylaş!",
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(
                    height: 50,
                  ),
                  SingleChildScrollView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: createbox(
                              "assets/kullanici1.jpg", "kullanici_adi"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: createbox(
                              "assets/kullanici2.jpg", "kullanici_adi"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: createbox(
                              "assets/kullanici3.jpg", "kullanici_adi"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: createbox(
                              "assets/kullanici4.jpg", "kullanici_adi"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: createbox(
                              "assets/kullanici5.jpg", "kullanici_adi"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side:
                              const BorderSide(color: Colors.white, width: 2.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("SEN DE KATIL!"),
                      )),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createbox(String imgpath, String kullanicIsmi) {
    return Column(
      children: [
        Container(
          width: 160,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgpath), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text("@ $kullanicIsmi", style: const TextStyle(color: Colors.white))
      ],
    );
  }
}

class Ara extends StatefulWidget {
  const Ara({super.key});

  @override
  State<Ara> createState() => _AraState();
}

class _AraState extends State<Ara> {
  final textFieldController = TextEditingController();
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Ara',
          style: TextStyle(color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 48.0,
              child: TextField(
                controller: textFieldController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.search),
                  hintText: 'Search...',
                  contentPadding: const EdgeInsets.all(16.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 1,
                    image: AssetImage("assets/arkaplan2.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // ignore: prefer_const_literals_to_create_immutables
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.black,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Mağaz...",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: const [
                              Icon(
                                FontAwesomeIcons.globe,
                                color: Colors.black,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Tarayıcı",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.mic,
                                color: Colors.black,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Ses",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 13,
              color: Colors.black.withOpacity(0.05),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.only(left: 25, top: 20, bottom: 20),
                child: Text(
                  "POPÜLER ARAMALAR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
                  child: Row(
                    children: [
                      createbutton("Çanta"),
                      const SizedBox(
                        width: 15,
                      ),
                      createbutton("Ceket"),
                      const SizedBox(
                        width: 15,
                      ),
                      createbutton("Elbise"),
                      const SizedBox(
                        width: 15,
                      ),
                      createbutton("Mont"),
                      const SizedBox(
                        width: 15,
                      ),
                      createbutton("Ayakkabı"),
                      const SizedBox(
                        width: 15,
                      ),
                      createbutton("Sweatshhirt"),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 13,
              color: Colors.black.withOpacity(0.05),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.only(left: 25, top: 20, bottom: 10),
                child: Text(
                  "EN ÇOK ARANANLAR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
                  child: Row(
                    children: [
                      createItem("assets/3.jpg", "699,95 TL", "", "",
                          "PARAŞÜT PANTOLON"),
                      createItem("assets/4.jpg", "", "829,95 TL", "759,95",
                          "DENIZCI TONLARINDA BLOK RENKLI CEKET"),
                      createItem("assets/1.jpg", "1.099,00 TL", "", "",
                          "SIYAH SUNI DERI BIKER CEKET"),
                      createItem("assets/2.jpg", "", "359,95 TL", "279,95 TL",
                          "CROP FIT TRIKO KAZAK"),
                      createItem("assets/5.jpg", "599,95 TL", "", "",
                          "BASIC KOLEJ CEKETI"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 33,
              color: Colors.black.withOpacity(0.05),
            ),
          ],
        ),
      ),
    );
  }

  Widget createbutton(String metin) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: const BorderSide(color: Colors.black, width: 1.0),
          ),
        ),
        onPressed: () {},
        child: Text(
          metin,
          style: const TextStyle(color: Colors.black),
        ));
  }

  Widget createItem(String imgPath, String guncelFiyat, String eskiFiyat,
      String yenFiyat, String urunAdi) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2 - 30,
              height: 260,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover),
                  color: const Color.fromARGB(26, 169, 42, 42),
                  borderRadius: BorderRadius.circular(13.0)),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 50,
                child: Text(urunAdi)),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 50,
              child: Row(
                children: [
                  if (guncelFiyat != "") Text(guncelFiyat),
                  if (guncelFiyat != "")
                    const SizedBox(
                      width: 15,
                    ),
                  if (yenFiyat != "")
                    Text(
                      yenFiyat,
                      style: const TextStyle(color: Colors.pink),
                    ),
                  const SizedBox(
                    width: 15,
                  ),
                  if (eskiFiyat != "")
                    Text(
                      eskiFiyat,
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          title: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text: "KADIN",
              ),
              Tab(
                text: "ERKEK",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Kadin(),
            Erkek(),
          ],
        ),
      ),
    );
  }
}

class Erkek extends StatefulWidget {
  const Erkek({Key? key}) : super(key: key);

  @override
  _ErkekState createState() => _ErkekState();
}

class _ErkekState extends State<Erkek> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(),
      Scaffold(
        body: SingleChildScrollView(
          controller: controller,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                container("assets/erkek7.jpg", "YENİ ÜRÜNLER",
                    "77 ürün eklendi ", Colors.black, false, false),
                dividir(),
                container("assets/erkek5.jpg", "BAYRAM COLLECTİON", "",
                    Colors.black, true, false),
                dividir(),
                container("assets/erkek6.jpg", "%30 İNDİRİM", "+ITEMS ",
                    Colors.red, false, false),
                dividir(),
                container("assets/erkek1.jpg", "GİYİM", "", Colors.white, false,
                    true),
                dividir(),
                container("assets/erkek4.jpg", "JEAN", "", Colors.black, false,
                    false),
                dividir(),
                container("assets/erkek3.jpg", "AYAKKABI", "", Colors.black,
                    false, false),
                dividir(),
                container("assets/erkek2.jpg", "SANA ÖZEL", "", Colors.black,
                    true, false),
                dividir(),
                container("assets/unisex2.jpg", "UNİSEX", "", Colors.black,
                    false, false),
                dividir(),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  Widget container(String resimPath, String baslik, String subtitle, Color renk,
      bool yeni, bool imgstil) {
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: imgstil
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(resimPath), fit: BoxFit.cover),
                ),
                child: row(resimPath, baslik, subtitle, renk, yeni, imgstil))
            : row(resimPath, baslik, subtitle, renk, yeni, imgstil));
  }

  Widget dividir() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.5,
      color: Colors.grey,
    );
  }

  Widget row(String resimPath, String baslik, String subtitle, Color renk,
      bool yeni, bool imgstil) {
    return Row(
      children: [
        if (!imgstil)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(resimPath), fit: BoxFit.cover),
            ),
            width: 80,
            height: 80,
          ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              baslik,
              style: TextStyle(
                  color: renk, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            if (subtitle != "") Text(subtitle)
          ],
        ),
        const SizedBox(
          width: 3,
        ),
        if (yeni == true)
          const Text(
            "YENİ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Color.fromARGB(255, 255, 230, 0)),
          )
      ],
    );
  }
}

class Kadin extends StatefulWidget {
  const Kadin({Key? key}) : super(key: key);

  @override
  _KadinState createState() => _KadinState();
}

class _KadinState extends State<Kadin> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(),
      Scaffold(
        body: SingleChildScrollView(
          controller: controller,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                container("assets/kadin4.jpg", "YENİ ÜRÜNLER",
                    "77 ürün eklendi ", Colors.black, false, false),
                dividir(),
                container("assets/kadin6.jpg", "BAYRAM COLLECTİON", "",
                    Colors.black, true, false),
                dividir(),
                container("assets/kadin7.jpg", "%30 İNDİRİM", "+ITEMS ",
                    Colors.red, false, false),
                dividir(),
                container("assets/kadin2.jpg", "GİYİM", "", Colors.black, false,
                    true),
                dividir(),
                container("assets/kadin5.jpg", "JEAN", "", Colors.black, false,
                    false),
                dividir(),
                container("assets/kadin3.jpg", "ÇANTALAR", "", Colors.black,
                    false, false),
                dividir(),
                container("assets/kadin1.jpg", "SANA ÖZEL", "", Colors.black,
                    true, false),
                dividir(),
                container("assets/unisex2.jpg", "UNİSEX", "", Colors.black,
                    false, false),
                dividir(),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  Widget container(String resimPath, String baslik, String subtitle, Color renk,
      bool yeni, bool imgstil) {
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: imgstil
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(resimPath), fit: BoxFit.cover),
                ),
                child: row(resimPath, baslik, subtitle, renk, yeni, imgstil))
            : row(resimPath, baslik, subtitle, renk, yeni, imgstil));
  }

  Widget dividir() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.5,
      color: Colors.grey,
    );
  }

  Widget row(String resimPath, String baslik, String subtitle, Color renk,
      bool yeni, bool imgstil) {
    return Row(
      children: [
        if (!imgstil)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(resimPath), fit: BoxFit.cover),
            ),
            width: 80,
            height: 80,
          ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              baslik,
              style: TextStyle(
                  color: renk, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            if (subtitle != "") Text(subtitle)
          ],
        ),
        const SizedBox(
          width: 3,
        ),
        if (yeni == true)
          const Text(
            "YENİ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Color.fromARGB(255, 255, 230, 0)),
          )
      ],
    );
  }
}

class Sepet extends StatefulWidget {
  const Sepet({super.key});

  @override
  State<Sepet> createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const Icon(
          Icons.close,
          color: Colors.black,
          size: 48,
        ),
        actions: [
          Stack(children: const [
            Center(
                child: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 40,
            )),
            Positioned(
                bottom: 10,
                right: 2,
                child: CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.red,
                  child: Text("3"),
                ))
          ]),
          const SizedBox(
            width: 9,
          )
        ],
        centerTitle: true,
        title: const Text(
          "SEPET",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 6 / 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "ALIŞVERİŞ SEPETİNİZ BOŞ. ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("İstek listesinde ürün var mı kontrol et,",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                  Text("tükenmeden senin olsun!,",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                  Text("Ayrıca en yeni ürünlerimizi de keşfedebilirsinin ;)",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15))
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.black),
                  onPressed: () {},
                  child: const Text(
                    "İSTEK LİSTESİNİ GÖRÜNTÜLE",
                    style: TextStyle(fontSize: 19),
                  )),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text(
                    "YENİ ÜRÜNLERİ KEŞFET",
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Hesabim extends StatelessWidget {
  const Hesabim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: const ListTile(
            title: Text(
              "MERT ALP",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("mertalp@gmail.com"),
          ),
          actions: const [
            Icon(
              Icons.logout_outlined,
              size: 35,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
          ]),
      body: Column(
        children: [
          hesabimItem("Siparişlerim", Icons.shopping_bag_outlined),
          const Divider(
            height: 1,
          ),
          hesabimItem("İadeler", Icons.rotate_90_degrees_ccw_sharp),
          const Divider(
            height: 1,
          ),
          hesabimItem("Bilgileriniz", Icons.fingerprint),
          const Divider(
            height: 1,
          ),
          hesabimItem("Adres Defterim", Icons.note_alt_outlined),
          const Divider(
            height: 1,
          ),
          hesabimItem("Bülten", Icons.local_post_office_outlined),
          const Divider(
            height: 1,
          ),
          hesabimItem("Müşteri Hizmetleri", Icons.info_outline),
          const Divider(
            height: 1,
          ),
        ],
      ),
    );
  }

  Widget hesabimItem(String metin, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 37),
              const SizedBox(
                width: 14,
              ),
              Text(
                metin,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
        ],
      ),
    );
  }
}
