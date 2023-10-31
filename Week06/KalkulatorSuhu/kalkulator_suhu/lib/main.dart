import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // variabel berubah
  double _inputUser = 0;
  double _hasil = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Konverter Suhu'),
        ),
        body: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Memposisikan elemen di tengah layar
          crossAxisAlignment:
              CrossAxisAlignment.center, // Memposisikan elemen di tengah layar
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Masukkan Suhu Dalam Celcius'),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            const Spacer(),

            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Suhu dalam Kelvin', style: TextStyle(fontSize: 12)),
                      Container(
                        margin:
                            EdgeInsets.only(top: 8), // Tambahkan margin di sini
                        child: Text('$_hasil',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Suhu dalam Reamur', style: TextStyle(fontSize: 12)),
                      Container(
                        margin:
                            EdgeInsets.only(top: 8), // Tambahkan margin di sini
                        child: Text('$_hasil',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(), // Mengisi ruang kosong untuk mendorong button ke bawah
            ElevatedButton(
              onPressed: () {},
              child: Text('Konversi Suhu'),
            ),
          ],
        ),
      ),
    );
  }
}
