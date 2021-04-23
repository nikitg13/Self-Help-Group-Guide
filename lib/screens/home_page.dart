import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:self_help_group_guide/Components/carousel.dart';
import 'package:self_help_group_guide/Components/reusable_card.dart';

import 'package:self_help_group_guide/screens/pdf_screen.dart';
import 'package:path_provider/path_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<String> prepareTestPdf(String documentPath) async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(documentPath);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$documentPath';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset('images/appicon.png', scale: 0.8),
          ),
          backgroundColor: Colors.pink.shade100,
          title: Text(
            'Self-Help-Group Guide',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 21,
              //fontWeight: FontWeight.bold,
              color: Color(0xFF0A0D22),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black54,
              onPressed: () {
                print("Menu button is pressed.");
              },
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),

            CarouselComponent(),

            SizedBox(
              height: 10,
            ),

            Divider(
              height: 20,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                'Welcome Wonderwoman!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            //card1
            ReusableCard(
              engText: 'Self Help Group',
              marathiText: 'स्वयंसहायता बचत गट (माहिती)',
              onPressed: () {
                // We need to prepare the test PDF, and then we can display the PDF.
                prepareTestPdf("PDFs/pdf1.pdf").then(
                  (path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  },
                );
              },
              cardImage: Image.asset(
                "images/appicon.png",
                height: 60,
              ),
            ),

            //card2
            ReusableCard(
              engText: 'How to form SHGs',
              marathiText: 'स्वयंसहायता बचत गट कसा बनवावा',
              onPressed: () {
                // We need to prepare the test PDF, and then we can display the PDF.
                prepareTestPdf("PDFs/pdf2.pdf").then(
                  (path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  },
                );
              },
              cardImage: Image.asset(
                "images/appicon.png",
                height: 60,
              ),
            ),

            Divider(
              height: 50,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                'About Meetings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            //card3
            ReusableCard(
              engText: 'How to conduct meetings',
              marathiText: 'बैठक कशी घ्यावी',
              onPressed: () {
                // We need to prepare the test PDF, and then we can display the PDF.
                prepareTestPdf("PDFs/pdf3.pdf").then(
                  (path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  },
                );
              },
              cardImage: Image.asset(
                "images/appicon.png",
                height: 60,
              ),
            ),

            //card4
            ReusableCard(
              engText: 'How to record a meeting',
              marathiText: 'बैठक कशी रेकॉर्ड करावी',
              onPressed: () {
                // We need to prepare the test PDF, and then we can display the PDF.
                prepareTestPdf("PDFs/pdf4.pdf").then(
                  (path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  },
                );
              },
              cardImage: Image.asset(
                "images/appicon.png",
                height: 60,
              ),
            ),

            Divider(
              height: 50,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                'About Bank Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            //card5
            ReusableCard(
              engText: 'How to maintain SHG\'s Bank Account',
              marathiText: 'बचत गट बँक खाते कसे टिकवायचे',
              onPressed: () {
                // We need to prepare the test PDF, and then we can display the PDF.
                prepareTestPdf("PDFs/pdf5.pdf").then(
                  (path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  },
                );
              },
              cardImage: Image.asset(
                "images/appicon.png",
                height: 60,
              ),
            ),

            //card6
            ReusableCard(
              engText: 'How to maintain Account book',
              marathiText: '  बँक खाते बुक कसे टिकवायचे',
              onPressed: () {
                // We need to prepare the test PDF, and then we can display the PDF.
                prepareTestPdf("PDFs/pdf6.pdf").then(
                  (path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  },
                );
              },
              cardImage: Image.asset(
                "images/appicon.png",
                height: 60,
              ),
            ),

            Divider(
              height: 50,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                'Other Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            //card7
            ReusableCard(
              engText: 'Functioning and activities of SGH',
              marathiText: 'कार्य आणि उपक्रम',
              onPressed: () {
                // We need to prepare the test PDF, and then we can display the PDF.
                prepareTestPdf("PDFs/pdf7.pdf").then(
                  (path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  },
                );
              },
              cardImage: Image.asset(
                "images/appicon.png",
                height: 60,
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            //card8
            /*ReusableCard(
              engText: 'How to form SHGs',
              marathiText: 'स्वयंसहायता बचत गट कसा बनवावा',
              onPressed: () {
                print("pressed");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen1(
                      header: informationBank[0].header,
                      info: informationBank[0].info
                  ),),
                );
              },
              cardImage: Image.asset(
                "images/appicon.png",
                height: 60,
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
