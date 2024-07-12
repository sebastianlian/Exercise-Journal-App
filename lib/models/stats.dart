mixin Stats {
  // private fields
  int _sets = 3;
  int _reps = 8;
  int _weight = 10;

  // getters
  int get sets => _sets;
  int get reps => _reps;
  int get weight => _weight;

  Map<String, int> get statsAsMap => {
    "sets": _sets,
    "reps": _reps,
    "weight": _weight,
  };

  List<Map<String, String>> get statsAsFormattedList => [
    {'title': 'sets', 'value': _sets.toString()},
    {'title': 'reps', 'value': _reps.toString()},
    {'title': 'reps', 'value': _weight.toString()},
  ];

  // methods
  void increaseStat(String stat) {
    if (_sets > 0) {
      _sets++;
    }
    if (_reps > 0) {
      _reps++;
    }
    if (_weight > 0) {
      _weight++;
    }
  }

  void decreaseStat(String stat) {
    if (stat == 'sets' && _sets > 0) {
      _sets--;
    }
    if (stat == 'reps' && _reps > 0) {
      _reps--;
    }
    if (stat == 'weight' && _weight > 0) {
      _weight--;
    }
  }
}