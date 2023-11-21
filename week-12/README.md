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

# Praktikum 2

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

# Praktikum 3

## Soal 5

* Langkah 2: untuk membuat dan menyelesaikan Future secara asinkron

```dart
late Completer completer;

Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

Future calculate() async {
  await Future.delayed(const Duration(seconds : 5));
  completer.complete(42);
}
```
![Screenshot soal 5](docs/prak3_no5.gif)

## Soal 6

* Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!

Perbedaan untuk output masih sama saja, tetapi pada baris kode ditambahkan try and catch untuk menangani error yang terjadi pada kode tersebut.

![Screenshot soal 6](docs/prak3_no6.gif)

## Soal 7

![Screenshot soal 7](docs/prak4_no7.gif)

## Soal 8

Perbedaan langkah 1 dan langkah 4

* Langkah 1: Menggunakan `Future.delayed` untuk menunda eksekusi kode selama 5 detik
* Langkah 4: Menggunakan `Future.delayed` untuk menunda eksekusi kode selama 5 detik, tetapi menggunakan `async` dan `await` untuk menunggu eksekusi kode sebelumnya selesai

## Soal 9

![Screenshot soal 9](docs/prak5_no9.gif)

## Soal 10

Perbedaan langkah 1 dan 4

* langkah 1 : Fungsi returnError() menggunakan objek Future untuk menunda eksekusi selama dua detik. Setelah dua detik berlalu, fungsi tersebut melemparkan pengecualian dengan pesan "Something terrible happened!".

* langkah 4 : Fungsi handleError() menggunakan blok try-catch untuk menangkap pengecualian yang mungkin dilemparkan oleh fungsi returnError().

## Soal 11 

![Screenshot soal 11](docs/prak6_no12.png)

## Soal 12

iya mendapat koordinat GPS dikarenakan kita memakai geolocator untuk menemukan titik lokasi

![Screenshot soal 11](docs/prak6_no12.png)

## Soal 13

Tidak terdapat perbedaan UI dengan praktikum sebelumnya, hal ini disebabkan kita masih menggunakan metode yang sama hanya saja pada praktikum kali ini menggunakan Future.

![Screenshot soal 13](docs/prak7_no13.gif)

## Soal 14

Tidak terdapat perbedaan UI dengan praktikum sebelumnya, hal ini disebabkan karena dalam kode diatas tidak terdapat error

![Screenshot soal 14](docs/prak7_no13.gif)

## Soal 15

* Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
  `title: const Text("Navigation First Screen Fito")`
* Silakan ganti dengan warna tema favorit Anda.
  `Color color = Colors.blueAccent;`

## Soal 16

* Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
karena tiap button memiliki function `Navigation.pop()` maka jika menekan tombol warna akan berubah sesuai nilai yang sudah di set sebelumnya. 
* Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!
```dart
ElevatedButton(
                onPressed: () {
                  color = Colors.red;
                  Navigator.pop(context, color);
                },
                child: const Text("red")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.yellow;
                  Navigator.pop(context, color);
                },
                child: const Text("yellow")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.green;
                  Navigator.pop(context, color);
                },
                child: const Text("green")),
```
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 16".

![Screenshot soal 16](docs/prak8_no16.gif)

## Soal 17

* Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
* Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!
```dart
TextButton(
                child: const Text('Red'),
                onPressed: () {
                  color = Colors.red;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Yellow'),
                onPressed: () {
                  color = Colors.yellow;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Green'),
                onPressed: () {
                  color = Colors.green;
                  Navigator.pop(context, color);
                }),
```
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 17".

![Screenshot soal 17](docs/prak9_no17.gif)