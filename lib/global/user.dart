/*class User {
  final String name;
  final String email;
  final String id;
  final String userId;
  final String uid;
  final String refId;
  final String firstName;
  final String lastName;
  final String userEmail;
  final String userPass;
  final String gender;
  final String userPhone;
  final String deviceId;
  final String deviceType;
  final String emailFlag;
  final String student;
  final String college;
  User(
      this.name,
      this.email,
      this.id,
      this.userId,
      this.uid,
      this.refId,
      this.firstName,
      this.lastName,
      this.userEmail,
      this.userPass,
      this.gender,
      this.userPhone,
      this.deviceId,
      this.deviceType,
      this.emailFlag,
      this.student,
      this.college);

  User.fromJson(
      Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        userId = json['userId'],
        uid = json['uid'],
        refId = json['refId'],
        firstName = json['firstName'],
        lastName = json['lastName'],
        userEmail = json['userEmail'],
        userPass = json['userPass'],
        gender = json['gender'],
        userPhone = json['userPhone'],
        deviceId = json['deviceId'],
        deviceType = json['deviceType'],
        emailFlag = json['emailFlag'],
        student = json['student'],
        college = json['college'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'id' : id,
        'userId' : userId,
        'uid' : uid,
        'refId' : refId,
        'firstName' : firstName,
        'lastName' : lastName,
        'userEmail' : userEmail,
        'userPass' : userPass,
        'gender' : gender,
        'userPhone' : userPhone,
        'deviceId' : deviceId,
        'deviceType' : deviceType,
        'emailFlag' : emailFlag,
        'student' : student,
        'college' : college,
      };
}
*/
/*
class UserIn{
  Login_response login_response;

  UserIn(this.login_response);
  factory UserIn.fromJSON(Map<String, dynamic> parsedJSON){
    return UserIn(parsedJSON['login_response']);
  }
}
class Login_response{
  String errorcode;
  String login_status;
  List<Login_Detail> login_detail;
}

*/

class User{
  String uid;
  String firstName;
  String lastName;
  String userEmail;
  String userPhone;
  String userPass;
  String ref_id;
  String otp;
  String gender;
  String device_id;
  String device_type;
  User({
      this.uid,
      this.ref_id,
      this.firstName,
      this.lastName,
      this.userEmail,
      this.userPass,
      this.gender,
      this.userPhone,
      this.otp,
      this.device_id,
      this.device_type,
  });
}
