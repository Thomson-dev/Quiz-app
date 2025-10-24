final Map<String, List<Map<String, dynamic>>> questionsByCategory = {
  'JavaScript': [
    {
      'question': 'What is a closure in JavaScript?',
      'options': [
        {'text': 'A function with preserved data', 'isCorrect': true},
        {'text': 'A CSS property', 'isCorrect': false},
        {'text': 'A type of loop', 'isCorrect': false},
        {'text': 'A database', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which company developed JavaScript?',
      'options': [
        {'text': 'Netscape', 'isCorrect': true},
        {'text': 'Microsoft', 'isCorrect': false},
        {'text': 'Google', 'isCorrect': false},
        {'text': 'Apple', 'isCorrect': false},
      ],
    },
    {
      'question': 'What keyword declares a constant in JavaScript?',
      'options': [
        {'text': 'let', 'isCorrect': false},
        {'text': 'const', 'isCorrect': true},
        {'text': 'var', 'isCorrect': false},
        {'text': 'final', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which method is used to convert JSON to an object?',
      'options': [
        {'text': 'JSON.parse()', 'isCorrect': true},
        {'text': 'JSON.stringify()', 'isCorrect': false},
        {'text': 'JSON.object()', 'isCorrect': false},
        {'text': 'parse.JSON()', 'isCorrect': false},
      ],
    },
    {
      'question': 'What will `typeof NaN` return?',
      'options': [
        {'text': 'number', 'isCorrect': true},
        {'text': 'NaN', 'isCorrect': false},
        {'text': 'undefined', 'isCorrect': false},
        {'text': 'object', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which operator is used for strict equality?',
      'options': [
        {'text': '==', 'isCorrect': false},
        {'text': '===', 'isCorrect': true},
        {'text': '=', 'isCorrect': false},
        {'text': '=>', 'isCorrect': false},
      ],
    },
    {
      'question': 'What is the output of `Boolean("")`?',
      'options': [
        {'text': 'true', 'isCorrect': false},
        {'text': 'false', 'isCorrect': true},
        {'text': 'undefined', 'isCorrect': false},
        {'text': 'null', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which built-in method adds an element to the end of an array?',
      'options': [
        {'text': 'push()', 'isCorrect': true},
        {'text': 'pop()', 'isCorrect': false},
        {'text': 'shift()', 'isCorrect': false},
        {'text': 'unshift()', 'isCorrect': false},
      ],
    },
    {
      'question': 'What does `DOM` stand for?',
      'options': [
        {'text': 'Document Object Model', 'isCorrect': true},
        {'text': 'Data Object Management', 'isCorrect': false},
        {'text': 'Display Output Method', 'isCorrect': false},
        {'text': 'Document Oriented Module', 'isCorrect': false},
      ],
    },
    {
      'question': 'What does `setTimeout()` do?',
      'options': [
        {'text': 'Executes a function after a delay', 'isCorrect': true},
        {'text': 'Runs code immediately', 'isCorrect': false},
        {'text': 'Pauses code indefinitely', 'isCorrect': false},
        {'text': 'Repeats code forever', 'isCorrect': false},
      ],
    },
  ],

  // ======================= PYTHON ========================
  'Python': [
    {
      'question': 'What is the output of print(2 ** 3)?',
      'options': [
        {'text': '6', 'isCorrect': false},
        {'text': '8', 'isCorrect': true},
        {'text': '9', 'isCorrect': false},
        {'text': '5', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which keyword is used for functions in Python?',
      'options': [
        {'text': 'function', 'isCorrect': false},
        {'text': 'def', 'isCorrect': true},
        {'text': 'fun', 'isCorrect': false},
        {'text': 'define', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which data type is immutable in Python?',
      'options': [
        {'text': 'List', 'isCorrect': false},
        {'text': 'Tuple', 'isCorrect': true},
        {'text': 'Dictionary', 'isCorrect': false},
        {'text': 'Set', 'isCorrect': false},
      ],
    },
    {
      'question': 'What is the correct file extension for Python files?',
      'options': [
        {'text': '.pyt', 'isCorrect': false},
        {'text': '.py', 'isCorrect': true},
        {'text': '.pt', 'isCorrect': false},
        {'text': '.pyth', 'isCorrect': false},
      ],
    },
    {
      'question': 'How do you start a comment in Python?',
      'options': [
        {'text': '//', 'isCorrect': false},
        {'text': '#', 'isCorrect': true},
        {'text': '/*', 'isCorrect': false},
        {'text': '<!--', 'isCorrect': false},
      ],
    },
    {
      'question': 'What keyword is used for loops in Python?',
      'options': [
        {'text': 'loop', 'isCorrect': false},
        {'text': 'repeat', 'isCorrect': false},
        {'text': 'for', 'isCorrect': true},
        {'text': 'iterate', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which library is used for data analysis in Python?',
      'options': [
        {'text': 'NumPy', 'isCorrect': false},
        {'text': 'Pandas', 'isCorrect': true},
        {'text': 'Matplotlib', 'isCorrect': false},
        {'text': 'Flask', 'isCorrect': false},
      ],
    },
    {
      'question': 'How do you create a virtual environment?',
      'options': [
        {'text': 'python -env', 'isCorrect': false},
        {'text': 'python -m venv env', 'isCorrect': true},
        {'text': 'pip install env', 'isCorrect': false},
        {'text': 'virtualenv start', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which keyword is used to handle exceptions?',
      'options': [
        {'text': 'catch', 'isCorrect': false},
        {'text': 'except', 'isCorrect': true},
        {'text': 'error', 'isCorrect': false},
        {'text': 'trycatch', 'isCorrect': false},
      ],
    },
    {
      'question': 'What does the “len()” function do?',
      'options': [
        {'text': 'Returns the data type', 'isCorrect': false},
        {'text': 'Returns the length of an object', 'isCorrect': true},
        {'text': 'Counts lines of code', 'isCorrect': false},
        {'text': 'Measures memory size', 'isCorrect': false},
      ],
    },
  ],

  // ======================= FLUTTER ========================
  'Flutter': [
    {
      'question': 'Which language is used to write Flutter apps?',
      'options': [
        {'text': 'Kotlin', 'isCorrect': false},
        {'text': 'Swift', 'isCorrect': false},
        {'text': 'Dart', 'isCorrect': true},
        {'text': 'Java', 'isCorrect': false},
      ],
    },
    {
      'question': 'What widget is used for layouts in Flutter?',
      'options': [
        {'text': 'Container', 'isCorrect': false},
        {'text': 'Row', 'isCorrect': false},
        {'text': 'Column', 'isCorrect': false},
        {'text': 'All of the above', 'isCorrect': true},
      ],
    },
    {
      'question': 'What command creates a new Flutter project?',
      'options': [
        {'text': 'flutter new', 'isCorrect': false},
        {'text': 'flutter create', 'isCorrect': true},
        {'text': 'flutter init', 'isCorrect': false},
        {'text': 'flutter start', 'isCorrect': false},
      ],
    },
    {
      'question': 'What is the root widget of a Flutter app?',
      'options': [
        {'text': 'Scaffold', 'isCorrect': false},
        {'text': 'MaterialApp', 'isCorrect': true},
        {'text': 'AppRoot', 'isCorrect': false},
        {'text': 'RootWidget', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which widget is used for unscrollable text?',
      'options': [
        {'text': 'Text', 'isCorrect': true},
        {'text': 'TextView', 'isCorrect': false},
        {'text': 'TextBlock', 'isCorrect': false},
        {'text': 'StaticText', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which file is the entry point of a Flutter app?',
      'options': [
        {'text': 'main.dart', 'isCorrect': true},
        {'text': 'index.dart', 'isCorrect': false},
        {'text': 'app.dart', 'isCorrect': false},
        {'text': 'home.dart', 'isCorrect': false},
      ],
    },
    {
      'question': 'What is “Hot Reload” in Flutter?',
      'options': [
        {'text': 'Restarts the entire app', 'isCorrect': false},
        {'text': 'Updates code changes instantly', 'isCorrect': true},
        {'text': 'Deletes cache files', 'isCorrect': false},
        {'text': 'Stops the app from running', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which widget helps to build responsive layouts?',
      'options': [
        {'text': 'MediaQuery', 'isCorrect': true},
        {'text': 'FlexLayout', 'isCorrect': false},
        {'text': 'GridBuilder', 'isCorrect': false},
        {'text': 'ScreenSize', 'isCorrect': false},
      ],
    },
    {
      'question': 'What is the purpose of “pubspec.yaml”?',
      'options': [
        {'text': 'To store dependencies and assets', 'isCorrect': true},
        {'text': 'To define routes', 'isCorrect': false},
        {'text': 'To style widgets', 'isCorrect': false},
        {'text': 'To configure Android build', 'isCorrect': false},
      ],
    },
    {
      'question': 'Which widget provides basic visual structure in Flutter?',
      'options': [
        {'text': 'Scaffold', 'isCorrect': true},
        {'text': 'Structure', 'isCorrect': false},
        {'text': 'Layout', 'isCorrect': false},
        {'text': 'MainView', 'isCorrect': false},
      ],
    },
  ],
};
