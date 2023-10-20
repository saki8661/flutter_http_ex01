class ResponseDTO {
  final bool success; // 요청 성공 여부를 응답할 때 사용되는 변수
  dynamic response; // 응답 메시지를 담아두는 변수
  dynamic error;

  ResponseDTO.fromJson(Map<String, dynamic> json)
      : success = json["success"],
        response = json["response"],
        error = json["error"];
}
