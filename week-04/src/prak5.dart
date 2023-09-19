(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  // (String, int) mahasiswa = ('Dhoriffito Diansyah Putra', 2141720201);
  // print(mahasiswa);
  // var record = (1, 2);
  // print(record);
  // print(tukar(record));

 var mahasiswa2 = ('Dhoriffito Diansyah Putra', a: 2141720201, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}
