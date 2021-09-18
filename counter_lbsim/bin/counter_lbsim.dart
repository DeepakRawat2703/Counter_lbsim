import 'dart:io';

class lbsim_counter {
  int count;
  String user;
  lbsim_counter({required this.count, required this.user});
}

void incrementcounter({required lbsim_counter c1, required int value}) {
  c1.count = c1.count + value;
}

void decrementcounter({required lbsim_counter c1, required int value}) {
  c1.count = c1.count - value;
}

void multiplycounter({required lbsim_counter c1, required int value}) {
  c1.count = c1.count * value;
}

void divisioncounter({required lbsim_counter c1, required int value}) {
  c1.count = c1.count ~/ value;
}

void remaindercounter({required lbsim_counter c1, required int value}) {
  c1.count = c1.count % value;
}

void main(List<String> args) {
  int choice = 10;
  int? operationValue;
  bool stop = false;
  lbsim_counter c1;
  String? user;

  print('Enter Your Name : ');

  user = stdin.readLineSync();
  if (user != null && user.isNotEmpty) {
    c1 = lbsim_counter(
      user: user,
      count: 1999,
    );
  } else {
    return;
  }

  while (!stop) {
    print('''
    Enter Your Choice :
    0. Print count Value
    1. Increment count
    2. Decrement count
    3. Multiply
    4. Divide
    5. Remainder
    6. Change name
    7. Exit
    ''');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      choice = int.parse(input);
    }
    switch (choice) {
      case 0:
        print('The value of Count is : ${c1.count}');
        break;
      case 1:
        print('Enter the value for increment count : ');
        operationValue = int.parse(stdin.readLineSync()!);
        incrementcounter(c1: c1, value: operationValue);
        print(
            'The new value  is ${c1.count}');
        break;
      case 2:
        print('Enter the value for decrement count : ');
        operationValue = int.parse(stdin.readLineSync()!);
        decrementcounter(c1: c1, value: operationValue);
        print(
            'The new value  is ${c1.count}');
        break;
      case 3:
        print('Enter the value to multiply with count : ');
        operationValue = int.parse(stdin.readLineSync()!);
        multiplycounter(c1: c1, value: operationValue);
        print(
            'The new value  is ${c1.count}');
        break;
      case 4:
        print('Enter the value to divide with count : ');
        operationValue = int.parse(stdin.readLineSync()!);
        divisioncounter(c1: c1, value: operationValue);
        print(
            'The new value is ${c1.count}');
        break;
      case 5:
        print(
            'Enter the value for checking remainder of count : ');
        operationValue = int.parse(stdin.readLineSync()!);
        remaindercounter(c1: c1, value: operationValue);
        print(
            'The new value is ${c1.count}');
        break;
      case 6:
        print('Enter the new username : ');
        String? newUser = stdin.readLineSync();
        if (newUser != null && newUser.isNotEmpty) {
          c1.user = newUser;
        }
        print('The new username is ${c1.user}');
        break;
      case 7:
        stop = true;
        break;
      default:
    }
  }
}