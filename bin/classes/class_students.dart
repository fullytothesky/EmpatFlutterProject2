mixin Combine {
  //mixins
  Set<String> _slackEmpat = {};
  int _year = 0;

  get slack {
    return _slackEmpat;
  }

  get year {
    return _year;
  }
}

class Students with Combine {
  List<String> _participants = [];
  Map<dynamic, dynamic> _devTracks = {};
  static final Map<int, Students> _cache = {};

  Students.initialize(List<String> students, Set<String> slack,
      Map<String, String> tracks, 
      [int year = 2024])
      : _participants = students, 
        _devTracks = tracks,
        assert(year >= 2022 && year < 2025, "Forbidden") {
    _slackEmpat = slack;
    _year = year;
  }

  factory Students(
      List<String> students, Set<String> slack, Map<String, String> tracks,
      [int year = 2024]) {
    if (_cache.containsKey(year)) {
      var obj = _cache[year];
      return obj!;
    } else {
      var newObj = Students.initialize(students, slack, tracks, year);
      _cache[year] = newObj;
      return newObj;
    }
  }

  get participants {
    return _participants;
  }

  get personalTracks {
    return _devTracks;
  }
}
