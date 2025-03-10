class AppExceptions implements Exception {
  final message;
  final prefix;

  AppExceptions({
    this.message,
    this.prefix,
  });

  String toString() {
    return '$prefix $message';
  }
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message: 'Error During Communication');
}


class BadRequestException extends AppExceptions {
  BadRequestException([String? message])
      : super(message: 'Invalid request');
}

class UnauthorisedException extends AppExceptions {
  UnauthorisedException([String? message])
      : super(message: 'Unauthorised Request');
}

class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message])
      : super(message: 'Invalid Input');
}