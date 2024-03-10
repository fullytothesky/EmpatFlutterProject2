import 'class_students.dart';

class Mentors extends Students {
  Mentors(
      List<String> mentorList, Set<String> slack, Map<String, String> tracks,
      [int year = 2024])
      : super.initialize(mentorList, slack, tracks, year);
}
