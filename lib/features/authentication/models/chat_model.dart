class Chat {
  final String id;
  final List<String> userIds;
  final int unreadMessageCount;
  final int createdAt; //dates => miles
  final int updatedAt; //dates => miles

  Chat({
    required this.id,
    required this.userIds,
    required this.createdAt,
    required this.updatedAt,
    required this.unreadMessageCount,
  });
}
