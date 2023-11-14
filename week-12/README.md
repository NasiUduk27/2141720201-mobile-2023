## Nama : Dhoriffito Diansyah Putra
## NIM : 2141720201
## Kelas : TI-3F

# Praktikum 1

## Soal 1

```dart
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo fito',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key, this.title = 'Future Page'});

  final String title;

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the feature'),
      ),

      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              onPressed: (){}, 
              child: const Text('Go!')
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

```

![Screenshot soal 1](docs/prak1_no1.png)

## Soal 2

![Screenshot soal 2](docs/prak1_buku.png)

![Screenshot soal 2](docs/prak1_json.png)

## Soal 3
* Substring : digunakan untuk mengambil sebagian string dari string awal
* CatchError : digunakan untuk menangani kesalahan yang terjadi pada sebuah promise

![Screenshot soal 3](docs/prak1_no3.gif)

# Praktikum 4

## Soal 4

* Langkah 1: Mengambil data dari jaringan secara bersamaan menggunakan Future.wait()

```dart
 Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }
```

* Langkah 2: Menghitung jumlah dari tiga fungsi asinkron `returnOneAsync()`, `returnTwoAsync()`, dan `returnThreeAsync()`. Fungsi ini menggunakan `await` untuk menunggu masing-masing fungsi asinkron selesai sebelum melanjutkan ke eksekusi kode berikutnya. 

```dart
  Future count() async {
    int total = 0;

    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();

    setState(() {
      result = total.toString();
    });

  }
```

![Screenshot soal 4](docs/prak2_no4.gif)