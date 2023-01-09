import 'package:flutter/material.dart';

void main() {
  runApp(UAS());
}

class UAS extends StatefulWidget {
  const UAS({super.key});

  @override
  State<UAS> createState() => _UASState();
}

class _UASState extends State<UAS> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('KAKULATOR'),
          leading: Icon(Icons.dashboard),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  'Kalkulator Spinner',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '(KALSPIN)',
                  style: TextStyle(fontSize: 30),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Masukan Nalai1/Nilai Awal',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextFormField(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Masukan Nalai2/Nilai Akhir',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextFormField(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                      ),
                      hint: Text('--Pilih Oprasi--'),
                      onChanged: (String) {
                        setState(() {});
                      },
                      items: <String>[
                        'Kali',
                        'Bagi',
                        'Tambah',
                        'Kurang',
                        'Genap',
                        'Ganjil'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('Hitung')),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Hasil:-',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
