import 'package:flutter/material.dart';
import 'MainPage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(0xffa85cf9).withOpacity(0.3),
        alignment: Alignment.center,
        child: Column(
          children: [
            // SizedBox(
            //   height: tinggi / 2.5,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 319),
              child: Image.asset('assets/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset('assets/logop.png'),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "© Lidya Simanungkalit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffa85cf9),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => MainPage()),
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
                      'START',
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
