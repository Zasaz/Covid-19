class ChatModel {
  final String head;
  final String description;
  final String avatarUrl;

  ChatModel({this.head, this.description, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      head: "Fever",
      description: "Fever seems to be to one of the most common early markers of COVID-19, but not every time it occurs"),
  new ChatModel(
      head: "Dry Cough",
      description: "Dry Cough seems to be to one of the most common early markers of COVID-19, but not every time it occurs"),
  new ChatModel(
      head: "Tiredness",
      description: "Tiredness seems to be to one of the most common early markers of COVID-19, but not every time it occurs"),
  new ChatModel(
      head: "Sore Throat",
      description: "Sore Throat seems to be to one of the most common early markers of COVID-19, but not every time it occurs"),
];
