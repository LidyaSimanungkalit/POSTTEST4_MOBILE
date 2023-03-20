import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'LandingPage.dart';
import 'Favorite.dart';
import 'Profile.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffEEA4CE).withOpacity(0.2),
                    Color(0xffC58BF2).withOpacity(0.2),
                  ]),
                ),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Image.asset(
                          "assets/logo.png",
                          fit: BoxFit.contain,
                          height: 80,
                        )),
                    Image.asset("assets/logop.png"),
                  ],
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return MainPage();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return Favorite();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return Profile();
                  },
                ));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 288),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => MyHomePage()),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(99))),
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Color(0xffa85cf9),
                        borderRadius: BorderRadius.circular(99)),
                    child: Container(
                      width: 230,
                      height: 60,
                      alignment: Alignment.center,
                      child: const Text(
                        'DATA PENGIRIMAN',
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Pembayaran { transfer, dana, shopeePay, cod }

class _MyHomePageState extends State<MyHomePage> {
  final namaLengkapCtrl = TextEditingController();
  final noHpCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  final kodePosCtrl = TextEditingController();
  final catatanCtrl = TextEditingController();
  final kuponCtrl = TextEditingController();

  Pembayaran pembayaran = Pembayaran.transfer;

  String namaLengkap = "",
      noHp = '',
      email = "",
      alamat = "",
      kodePos = '',
      catatan = "",
      kupon = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaLengkapCtrl.dispose();
    noHpCtrl.dispose();
    emailCtrl.dispose();
    alamatCtrl.dispose();
    kodePosCtrl.dispose();
    catatanCtrl.dispose();
    kuponCtrl.dispose();
    super.dispose();
  }

  String getPembayaran(Pembayaran? value) {
    if (value == Pembayaran.cod) {
      return "COD";
    } else if (value == Pembayaran.dana) {
      return "DANA";
    } else if (value == Pembayaran.shopeePay) {
      return "ShopeePay";
    }
    return "Transfer Bank";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa85cf9),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 95),
              child: Image.asset(
                'assets/logoAtas.png',
                fit: BoxFit.contain,
                height: 25,
              ),
            ),
            Icon(Icons.notifications_outlined),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8)),
              Text(
                "DATA PENGIRIMAN",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa85cf9)),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: namaLengkapCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xffa85cf9).withOpacity(0.13),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Nama Lengkap",
                  labelStyle: TextStyle(color: Color(0xffa85cf9)),
                  hintText: 'Masukkan Nama Lengkap',
                  hintStyle: TextStyle(color: Color(0xffa85cf9)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: noHpCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xffa85cf9).withOpacity(0.13),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "No HP / Whatsapp",
                  labelStyle: TextStyle(color: Color(0xffa85cf9)),
                  hintText: 'Masukkan No Hp / Whatsapp',
                  hintStyle: TextStyle(color: Color(0xffa85cf9)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: emailCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xffa85cf9).withOpacity(0.13),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Color(0xffa85cf9)),
                  hintText: 'Masukkan Email',
                  hintStyle: TextStyle(color: Color(0xffa85cf9)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                maxLines: 4,
                controller: alamatCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xffa85cf9).withOpacity(0.13),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Alamat",
                  labelStyle: TextStyle(color: Color(0xffa85cf9)),
                  hintText: 'Masukkan Alamat',
                  hintStyle: TextStyle(color: Color(0xffa85cf9)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: kodePosCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xffa85cf9).withOpacity(0.13),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Kode Pos",
                  labelStyle: TextStyle(color: Color(0xffa85cf9)),
                  hintText: 'Masukkan Kode Pos',
                  hintStyle: TextStyle(color: Color(0xffa85cf9)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                maxLines: 5,
                controller: catatanCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xffa85cf9).withOpacity(0.13),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Catatan Tambahan",
                  labelStyle: TextStyle(color: Color(0xffa85cf9)),
                  hintText: 'Masukkan Catatan Tambahan',
                  hintStyle: TextStyle(color: Color(0xffa85cf9)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: kuponCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xffa85cf9).withOpacity(0.13),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Kode Kupon",
                  labelStyle: TextStyle(color: Color(0xffa85cf9)),
                  hintText: 'Masukkan Kode Kupon',
                  hintStyle: TextStyle(color: Color(0xffa85cf9)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Metode Pembayaran : ",
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffa85cf9))),
              ),
              ListTile(
                title: const Text(
                  "Transfer Bank",
                  style: TextStyle(
                      color: Color(0xffa85cf9), fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  groupValue: pembayaran,
                  value: Pembayaran.transfer,
                  onChanged: (Pembayaran? value) {
                    setState(() {
                      pembayaran = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text(
                  "DANA",
                  style: TextStyle(
                      color: Color(0xffa85cf9), fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  groupValue: pembayaran,
                  value: Pembayaran.dana,
                  onChanged: (Pembayaran? value) {
                    setState(() {
                      pembayaran = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text(
                  "ShopeePay",
                  style: TextStyle(
                      color: Color(0xffa85cf9), fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  groupValue: pembayaran,
                  value: Pembayaran.shopeePay,
                  onChanged: (Pembayaran? value) {
                    setState(() {
                      pembayaran = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text(
                  "COD",
                  style: TextStyle(
                      color: Color(0xffa85cf9), fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  groupValue: pembayaran,
                  value: Pembayaran.cod,
                  onChanged: (Pembayaran? value) {
                    setState(() {
                      pembayaran = value!;
                    });
                  },
                ),
              ),
              Container(
                width: 200,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xffa85cf9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    setState(() {
                      namaLengkap = namaLengkapCtrl.text;
                      noHp = noHpCtrl.text;
                      email = emailCtrl.text;
                      alamat = alamatCtrl.text;
                      kodePos = kodePosCtrl.text;
                      catatan = catatanCtrl.text;
                    });
                  },
                  child: Text("Konfirmasi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 2,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Nama Lengkap : $namaLengkap"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("No Hp / Whatsapp : $noHp"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Email : $email"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Alamat : $alamat"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Kode Pos : $kodePos"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Catatan Tambahan : $catatan"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Kode Kupon : $kupon"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text('Pembayaran : ${getPembayaran(pembayaran)}'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
