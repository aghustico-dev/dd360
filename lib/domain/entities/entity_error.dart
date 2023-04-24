class ErrorEntity {
  String? code;
  String? message;

  ErrorEntity({
    this.code,
    this.message
  });

  factory ErrorEntity.fromJson( Map<String, dynamic> json ) => ErrorEntity(
    code    : json["code"],
    message : json[ "message"] 
  );
}