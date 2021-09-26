import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontThai extends StatefulWidget {
  const FontThai({Key? key}) : super(key: key);

  @override
  _FontThai createState() => _FontThai();
}

class _FontThai extends State<FontThai> {
  int type = 1;

  sriracha() {
    setState(() {
      type = 1;
    });
  }

  kanit() {
    setState(() {
      type = 2;
    });
  }

  pattaya() {
    setState(() {
      type = 3;
    });
  }

  thasadith() {
    setState(() {
      type = 4;
    });
  }

  athiti() {
    setState(() {
      type = 5;
    });
  }

  chonburi() {
    setState(() {
      type = 6;
    });
  }

  k2d() {
    setState(() {
      type = 7;
    });
  }

  charmonman() {
    setState(() {
      type = 8;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('THAI FONT VIEWER'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.blueGrey.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text(''),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (type == 1)
                  Text(
                    'การเดินทางขากลับคงจะเหงาน่าดู',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sriracha(fontSize: 70.0),
                  ),
                if (type == 2)
                  Text(
                    'การเดินทางขากลับคงจะเหงาน่าดู',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(fontSize: 70.0),
                  ),
                if (type == 3)
                  Text(
                    'การเดินทางขากลับคงจะเหงาน่าดู',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pattaya(fontSize: 70.0),
                  ),
                if (type == 4)
                  Text(
                    'การเดินทางขากลับคงจะเหงาน่าดู',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.thasadith(fontSize: 70.0),
                  ),
                if (type == 5)
                  Text(
                    'การเดินทางขากลับคงจะเหงาน่าดู',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.athiti(fontSize: 70.0),
                  ),
                if (type == 6)
                  Text(
                    'การเดินทางขากลับคงจะเหงาน่าดู',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.chonburi(fontSize: 70.0),
                  ),
                if (type == 7)
                  Text(
                    'การเดินทางขากลับคงจะเหงาน่าดู',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.k2d(fontSize: 70.0),
                  ),
                if (type == 8)
                  Text(
                    'การเดินทางขากลับคงจะเหงาน่าดู',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.charmonman(fontSize: 70.0),
                  ),
              ],
            ),
            Column(
              children: [
                if (type == 1)
                  Text(
                    'Font: Sriracha',
                    style: TextStyle(fontSize: 20),
                  ),
                if (type == 2)
                  Text(
                    'Font: Kanit',
                    style: TextStyle(fontSize: 20),
                  ),
                if (type == 3)
                  Text(
                    'Font: Pattaya',
                    style: TextStyle(fontSize: 20),
                  ),
                if (type == 4)
                  Text(
                    'Font: Thasadith',
                    style: TextStyle(fontSize: 20),
                  ),
                if (type == 5)
                  Text(
                    'Font: Athiti',
                    style: TextStyle(fontSize: 20),
                  ),
                if (type == 6)
                  Text(
                    'Font: Chonburi',
                    style: TextStyle(fontSize: 20),
                  ),
                if (type == 7)
                  Text(
                    'Font: K2D',
                    style: TextStyle(fontSize: 20),
                  ),
                if (type == 8)
                  Text(
                    'Font: Charmonman',
                    style: TextStyle(fontSize: 20),
                  ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.white,
                    child: Wrap(alignment: WrapAlignment.center, children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 3,right: 3, top: 0, bottom: 0),
                        child: ElevatedButton(
                          onPressed: sriracha,
                          child: Text('Sriracha'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3,right: 3, top: 0, bottom: 0),
                        child: ElevatedButton(
                          onPressed: kanit,
                          child: Text('Kanit'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3,right: 3, top: 0, bottom: 0),
                        child: ElevatedButton(
                          onPressed: pattaya,
                          child: Text('Pattaya'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3,right: 3, top: 0, bottom: 0),
                        child: ElevatedButton(
                          onPressed: thasadith,
                          child: Text('Thasadith'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3,right: 3, top: 0, bottom: 0),
                        child: ElevatedButton(
                          onPressed: athiti,
                          child: Text('Athiti'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3,right: 3, top: 0, bottom: 0),
                        child: ElevatedButton(
                          onPressed: chonburi,
                          child: Text('Chonburi'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3,right: 3, top: 0, bottom: 0),
                        child: ElevatedButton(
                          onPressed: k2d,
                          child: Text('K2D'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3,right: 3, top: 0, bottom: 0),
                        child: ElevatedButton(
                          onPressed: charmonman,
                          child: Text('Charmonman'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
