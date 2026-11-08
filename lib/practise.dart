
import 'dart:io';

void main() {

//--->>> Spread Operator function Calling ---<<<<//

 // List<String> section1Name = ["Sanjeev", "Sandeep"];
 // List<String> section2Name = ["Ram", "Sita"];
 //
 // List<String> studentName = [...section1Name, ...section2Name];
 // print(studentName);

 // Can add operator and conditional statements.
 // List<int> number = [2,3,4];
 // List<int> newNumber = [4,3, for(int n in number) n * 2, if (number.length > 5) 22];
 // print(newNumber);

 //--->>> Normal function Calling ---<<<<//

 // int? num;
 // stdout.write("The value check is $num");

 // stdout.write("Enter the first number: ");
 // int no1 = getIntValue();
 //
 // stdout.write("Enter the second number: ");
 // int no2 = getIntValue();
 //
 // int sum = add(no1, no2);
 // stdout.write("The sum of number is: $sum");

  //--->>> Class Calling ---<<<<//

// User user1 = User(name: "Sanjeev", age: 32);

  //--->>> Inheritance ---<<<<//

  // Male male = Male();
  // male.exhale();
  // male.inhale();
// Add a = Add();
// int sum = a.add(12, 113);
// print(sum);
//

  // Square a = Square();
  // int sum = a.add(2, 3);
  // print(sum);

  //--->>> Abstraction and interface ---<<<<//
// B b = B();
// print(b.add(1,2));

}

// 2


// class Add{
//   int add(int num1, int num2) {
//     return num1 + num2;
//   }
// }
//
// class Square extends Add {
//
//   @override
//   int add(int num1, int num2) {
//     int a = super.add(num1, num2);
//     return num1 + num2 + a;
//   }
// }

// class HumanBeing {
//   void inhale() {
//     print("Human Inhale oxygen");
//   }
//
//   void exhale() {
//     print("Human Exhale CO2");
//   }
// }
//
// class Male extends HumanBeing {
//
// }


// class User {
//   String name;
//   int age;
//
//   User({required this.name,  required this.age});
// }


// String getStringValue() => stdin.readLineSync().toString();
//
// int getIntValue() => int.parse(getStringValue());
//
// int add(int no1, int no2, [int? no3, int? no4]) =>  no1 + no2 + (no3 ?? 0) + (no3 ?? 0);0