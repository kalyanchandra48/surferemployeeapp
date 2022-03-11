enum ITRequestStatus { pending, approved, moreInfo, denied, cancelled }

class ITRequest {
  String description;
  ITRequestStatus status;
  String assignedTo; // should have assigned to in db
  String requestType;
  bool resolved;
  DateTime timeCreated;
  String priority;
  String userId;

  ITRequest({
    required this.assignedTo,
    required this.description,
    required this.priority,
    required this.requestType,
    required this.resolved,
    required this.status,
    required this.timeCreated,
    required this.userId,
  });
}
