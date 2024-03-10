import 'classes/class_mentors.dart';
import 'classes/class_students.dart';
import 'functions/combine.dart';
import 'dart:io';

void main() {
  bool passer = false;
  dynamic userInput;

  print(
      "Welcome to the program , where all the information about our participants is stored:)");
  print(
      "Who would you choose?\n(Press 1 or 2(Only integers type,please))\nMentors - 1\nStudents - 2");

  stdout.write('Your choice:');

  while (!passer) {
    userInput = stdin.readLineSync() ?? '';
    passer = (userInput == '1' || userInput == '2');
    if (!passer) print("Please, try again");
  }
  print(userInput);
  userInput = (userInput == '1') ? "Mentors" : "Students";

  var greeting = functionGreet(userInput);
  greeting();

  List<String> mentorsEmpat2024 = [
    "Anastasiya Tymoshenko",
    "Vlad Fedenko",
    "Yaroslav Melnychenko",
    "Valya Polienova",
    "Andrii Tsabanov"
  ];
  List<String> studentsEmpat2024 = ["Vasyl", "Katya", "Dmytro", "Olya"];
  Set<String> slackChats2024 = {"Flutter", "FullStack", "General", "Random"};

  Map<String, String> mentorsTracks2024 = {
    "Vlad Fedenko": "Flutter",
    "Valya Polienova": "Flutter",
    "Andrii Tsabanov": "FullStack(UI/UX)",
    "Anastasiya Tymoshenko": "PM",
    "Yaroslav Melnychenko": "FullStack(Backend)",
  };

  Map<String, String> studentTracks2024 = {
    "Katya": "FullStack/Flutter",
    "Dmytro": "Fullstack/Flutter",
    "Olya": "Flutter",
    "Vasyl": "FullStack"
  };

  if (userInput == "Students") {
    Students? objStudents2024;

    objStudents2024 = objStudents2024 ?? 
        Students(studentsEmpat2024, slackChats2024, studentTracks2024, 2024);
    //empat2023??= Students(studentsEmpat2024,slackChats2024,studentTracks2024); (possible option)
    print("Students:${objStudents2024.participants}");
    print("Student tracks:${objStudents2024.personalTracks}");
  } else if (userInput == "Mentors") {
    Mentors mentors =
        Mentors(mentorsEmpat2024, slackChats2024, mentorsTracks2024, 2024);
    print("List of mentors in ${mentors.year}:${mentors.participants}");
    print("Mentors tracks:${mentors.personalTracks}");
  }
}
