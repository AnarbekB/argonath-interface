namespace java ru.balmukanov.argonathinterface.thrift

exception WrongPhoneOrPasswordException {
    1: i32 code,
    2: string description
}

exception UserAlreadyExistException {
    1: i32 code,
    2: string description
}

exception NotValidPhoneException {
    1: i32 code,
    2: string description
}

struct Session {
    1: i64 id,
    2: string jwt
}

enum Channel {
    WEB = 1,
    MOBILE = 2,
    ATM = 3
}

struct User {
    1: required i64 id,
    2: optional string email,
    3: required string phone,
    4: required string username,
    5: required bool enabled
}

struct RegisterUser {
    1: required string username,
    2: required string phone,
    3: optional string email,
    4: required string password,
    5: required bool enabled,
    6: required bool accountLocked,
    7: required bool accountExpired,
    8: required bool credentialsExpired,
    9: required Channel channel,
}

service ArhonathThriftService {
    Session login(1:string phone, 2:string password, 3:string channel) throws (1:WrongPhoneOrPasswordException e),
    User registeration(1:RegisterUser dto) throws (1:UserAlreadyExistException e, 2:NotValidPhoneException en),
    void logout(1:string jwt, 2:Channel channel),
    Session refresh(1: string jwt, 2:Channel channel),
}