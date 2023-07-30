class LoginResponseModel {
  final int statusCode;
  final String message;
  // Other properties you may have in the response model

  LoginResponseModel({
    required this.statusCode,
    required this.message,
    // Other constructor parameters you may have
  });

  // Getter for statusCode
  int getStatusCode() {
    return statusCode;
  }
}
