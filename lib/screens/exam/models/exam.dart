
import 'package:mobile_exam/screens/exam/models/exam_response.dart';

class Exam {
  Exam({
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

  factory Exam.fromResponse(ExamResponse response) {
    return Exam(
      statusCode: response.statusCode,
      image: response.image,
      message: response.message,
      errorMessage: response.errorMessage,
      count: response.count
    );
  }
}

// Getters

extension Getters on Exam {
  bool get hasImage {
    return image != null && (image?.isNotEmpty ?? false);
  }
}