import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Berita Olahraga'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            // Section 1: Judul Navbar
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(
                      10.0,
                    ),
                    child: const Center(
                      child: Text(
                        'BERITA TERBARU',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(
                      10.0,
                    ),
                    child: const Center(
                      child: Text(
                        'PERTANDINGAN HARI INI',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Section 2: Foto-foto atlet
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Container(
                    width: 75.0,
                    height: 200.0,
                    color: Colors.grey,
                    margin: const EdgeInsets.all(1.0),
                    child: Image.network(
                      _getAthleteImageURL(index),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),

            // Section 3: Tekst 5 pesepakbola handal
            const Center(
              child: Text(
                '5 Pesepakbola Handal',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              height: 4.0,
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.red,
            ),

            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: List.generate(4, (index) {
                  return Container(
                    color: Colors
                        .red, 
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          height: 100.0,
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.only(right: 10.0),
                          child: Image.network(
                            _getAthleteImageURL(index),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          namaPesepakbola[index],
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> namaPesepakbola = [
  'Lionel Messi',
  'Cristiano Ronaldo',
  'Kylian Mbappe',
  'Neymar Jr.',
  'Karim Benzema'
];

String _getAthleteImageURL(int index) {
  List<String> imageUrls = [
    'https://static.republika.co.id/uploads/images/headline_slide/lionel-messi-dari-argentina-menyentuh-trofi-piala-dunia_221219200502-521.jpg',
    'https://cdns.klimg.com/bola.net/library/upload/21/2023/09/645x430/cristiano-ronaldo-al_4c2b6d2.jpg',
    'https://asset-2.tstatic.net/jateng/foto/bank/images/sultan-psg-tidak-mata-duitan-tolak-mentah-mentah-mahar-real-madrid-untuk-meminang-kylian-mbappe.jpg',
    'https://cdn.antaranews.com/cache/1200x800/2023/08/16/000_33R84RB.jpg',
    'https://cdns.klimg.com/bola.net/library/upload/21/2023/01/645x430/benzema-ab-1_a017789.jpg',
  ];

  return imageUrls[index];
}
