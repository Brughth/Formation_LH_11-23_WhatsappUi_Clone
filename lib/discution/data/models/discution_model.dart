class DiscutionModel {
  final String name;
  final String lastMessage;
  final String datetime;
  final int unreadMessage;
  DiscutionModel({
    required this.name,
    required this.lastMessage,
    required this.datetime,
    required this.unreadMessage,
  });
}
