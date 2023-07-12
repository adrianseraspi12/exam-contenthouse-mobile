
class ExamResponse {
  ExamResponse({
    required this.statusCode,
    this.image,
    this.message,
    this.errorMessage,
    this.count
  });

  final int statusCode;
  final String? image;
  final String? message;
  final String? errorMessage;
  final int? count;

  factory ExamResponse.fromJson(Map<String, dynamic> json) {
    return ExamResponse(
      statusCode: json['status_code'],
      image: json['image'],
      message: json['message'],
      errorMessage: json['error_message'],
      count: int.tryParse(json['count'].toString())
    );
  }
}

// Getters

extension ResponseChecker on ExamResponse {
  bool get isSuccess {
    return statusCode >= 200 && statusCode <= 299;
  }
}