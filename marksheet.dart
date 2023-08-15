// =========================== Marksheet Using Oops =======================

import 'dart:io';

// ignore: unused_import
import 'm.dart';

void main(){
  stdout.write("Write English Marks");
  int english = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Urdu Marks");
  int urdu = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Maths Marks");
  int maths = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Physics Marks");
  int physics = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Chemistry Marks");
  int chemistry = int.parse(stdin.readLineSync()!);


  // ignore: unused_local_variable
  Subjects result = Subjects.Marksheet(english, urdu, maths, physics, chemistry);
}

class Subjects {
 late int english;
 late int urdu;
 late int maths;
 late int physics;
 late int chemistry;

  Subjects.Marksheet(this.english, this.urdu, this.maths, this.physics, this.chemistry){
    int totalMarks = 500;
    int obtainMarks = english + urdu + maths + physics + chemistry;
    double percentage = (obtainMarks / totalMarks * 100);
        print("Your Percentage is : $percentage % ");

    if(percentage >= 80){
       print("Your Grade is A");
    }
    else if(percentage >=70 && percentage < 80){
      print("Your Grade is B");
    }
    else if(percentage >= 60 && percentage < 70){
      print("Your Grade is C");
    }
    else if(percentage >= 50 && percentage < 60){
      print("Your Grade is D");
    }
    else{
      print("You Are Failed. Dont Be Dissapoint Just Keep Trying :)");
    }

    
  }

  
}