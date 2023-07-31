class NotificationModel {
  final String reservationId;
  final String date;
  final String? deposit;

  NotificationModel(
      {required this.reservationId, required this.date, this.deposit});
}
final List<NotificationModel> notificationListMockData = [
  NotificationModel(reservationId: '716001', date: ' 19:30 19-09-2021'),
  NotificationModel(reservationId: '131001', date: ' 19:30 19-09-2021', deposit: '400.000'),
  NotificationModel(reservationId: '070011', date: ' 19:30 19-09-2021'),
  NotificationModel(reservationId: '070011', date: ' 19:30 19-09-2021'),
  NotificationModel(reservationId: '070011', date: ' 19:30 19-09-2021', deposit: '400.000'),
];
