class AppExceptions implements Exception{

  final _message;
  final _prifix;

  AppExceptions([this._message, this._prifix]);

  String toString(){
    return '$_message$_prifix';
  }
}

class InternetException extends AppExceptions{

  InternetException([String? message]) : super(message,'No Internet Canection');

}


class RequestTimeOutException extends AppExceptions{

  RequestTimeOutException([String? message]) : super(message,'Request Time Out');

}

class ServerException extends AppExceptions{

  ServerException([String? message]) : super(message,'Internal server error');

}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message, 'Invalid Url');
}

class FetchDataException extends AppExceptions{

  FetchDataException([String? message]) : super(message,'Error while communication');

}