# Praktikum Week 13

## Soal 1

* Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
```dart
title: 'Stream Fito',
```
* Gantilah warna tema aplikasi sesuai kesukaan Anda.
```dart
  theme: ThemeData(primarySwatch: Colors.blue),
```
* Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

## Soal 2

* Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
```dart
class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    // Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
    Colors.pinkAccent,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.purple,
  ];
}
```
* Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

## Soal 3

* Jelaskan fungsi keyword yield* pada kode tersebut!
untuk mendelegasikan atau melempar elemen-elemen dari satu stream ke dalam stream yang sedang dibuat. 
* Apa maksud isi perintah kode tersebut?
membuat asynchronous generator yang menghasilkan stream warna yang diperbarui setiap detik, diambil dari sebuah daftar colors. `Stream.periodic` digunakan untuk mengatur interval waktu, dan `yield*` untuk memasukkan nilai-nilai tersebut ke dalam stream.
* Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"

## Soal 4

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![Screenshot soal 4](docs/prak1_no4.gif)
* Lakukan commit hasil jawaban Soal 4 dengan pesan "W13: Jawaban Soal 4"
