void main() {
  for (int i = 0; i <= 201; i++) {
    // jika ganjil maka print nama dan nim
    if (isPrime(i)) {
      print("Dhoriffito Diansyah Putra / 2141720201");
      // jika salah maka print bilangan tersebut
    } else {
      print(i);
    }
  }
}

// memeriksa apakah suatu bilangan prima atau tidak
bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  
  for (int j = 2; j <= num / 2; j++) {
    if (num % j == 0) {
      return false;
    }
  }

  return true;
}