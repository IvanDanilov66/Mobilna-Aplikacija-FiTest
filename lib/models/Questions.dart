class Question {
  final int? id, answer;
  final String? question;
  final List<String>? options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
    "Достава на податочни пакети до дестинацискиот хост е задача на  ______",
    "options": ['Мрежата', 'Оперативниот систем', 'Апликацијата', 'Јадрото'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Методите на контролерот се нарекуваат:",
    "options": ['Рути', 'Акции', 'Пакети', 'Параметри'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Flutter е развиен од _______",
    "options": ['Microsoft', 'IBM', 'Facebook', 'Google'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "Дали Flutter е програмски јазик ?",
    "options": ['Не', 'Да'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "______ е процес за тражење на грешки и нивно поправање во рамките на програмата?",
    "options": ['Compiling', 'Executing','Debugging','Scanning'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "Што од наведеното не може да биде static во C??",
    "options": ['Functions', 'Structures','None','Variables'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "Ознаката за тернарен оператор е?",
    "options": ['%', '?:','&','~'],
    "answer_index": 1,
  },
];
