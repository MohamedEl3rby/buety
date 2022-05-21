class NotificationModel {
  final String title;
  final String body;

  NotificationModel({
    required this.title,
    required this.body,
  });
  factory NotificationModel.fromRTDB(Map<dynamic, dynamic> data) {
    return NotificationModel(
      title: data['title'],
      body: data['body'],
    );
  }
}
