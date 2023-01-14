import 'package:flutter/material.dart';

void main() {
  runApp(const UAS());
}

class UAS extends StatelessWidget {
  const UAS({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator Cok!',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Kalkulator Spinner'),
    );
  }
}

// Oprator
const List<String> list = <String>[
  '- Pilih Operasi -',
  'Kali',
  'Bagi',
  'Tambah',
  'Kurang',
  'Genap',
  'Ganjil'
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = list.first;
  var bil1 = 0, bil2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void doAddition() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);

      sum = bil1 + bil2;
    });
  }

  void doSub() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);

      sum = bil1 - bil2;
    });
  }

  void doMul() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);

      sum = bil1 * bil2;
    });
  }

  void doDiv() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);

      sum = bil1 ~/ bil2;
    });
  }

  void ganjil() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard),
        title: const Text("Kalkulator Spinner"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                "Kalkulator Spinner\n     (KALSPIN)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Masukkan nilai 1 / Nilai Awal"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Masukkan nilai 2 / Nilai Akhir"),
              controller: t2,
            ),
          
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.architecture),
              elevation: 16,
              isExpanded: true,
              
              style: const TextStyle(color: Colors.black),
              onChanged: (String? value) {
                
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (dropdownValue == 'Kali') {
                    doMul();
                  } else if (dropdownValue == "Tambah") {
                    doAddition();
                  } else if (dropdownValue == "Bagi") {
                    doDiv();
                  } else if (dropdownValue == "Kurang") {
                    doSub();
                  }
                },
                child: const Text("Hitung "),
              ),
            ),
            Text(
              "hasil : $sum",
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
