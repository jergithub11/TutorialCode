import 'package:flutter/material.dart';

void main() {
  runApp(kalkulator());
}

class kalkulator extends StatefulWidget {
  const kalkulator({super.key});

  @override
  State<kalkulator> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('KALKULATOR'),
          leading: Icon(Icons.dashboard),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(30),
            child: Column(children: [
              Image.asset(
                'assets/images/logo.png',
                width: 150,
              ),
              Text(
                'Kalkulator UBG',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Nilai pertama',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(),
                          ),
                          labelText: 'Masukan Nilai Pertama'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Nilai Kedua',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(),
                          ),
                          labelText: 'Masukan Nilai Kedua'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          SizedBox(width: 50),
                          ElevatedButton(
                            child: Text('x'),
                            onPressed: () {
                              // Tambahkan aksi untuk tombol kali disini
                            },
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            child: Text('/'),
                            onPressed: () {
                              // Tambahkan aksi untuk tombol tambah disini
                            },
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            child: Text('+'),
                            onPressed: () {
                              // Tambahkan aksi untuk tombol kurang disini
                            },
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            child: Text('-'),
                            onPressed: () {
                              // Tambahkan aksi untuk tombol kurang disini
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Hasil',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28),
                                  borderSide: BorderSide(),
                                ),
                                labelText: 'Hasil'),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                SizedBox(width: 50),
                                ElevatedButton(
                                  child: Text('='),
                                  onPressed: () {
                                    // Tambahkan aksi untuk tombol kali disini
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
