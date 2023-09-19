void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  mhs1['nama'] = 'Dhoriffito Diansyah Putra';
  mhs1['nim'] = '2141720201';

  mhs2[1] = 'Dhoriffito Diansyah Putra';
  mhs2[2] = '2141720201';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
