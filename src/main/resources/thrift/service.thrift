namespace java ru.balmukanov.argonathinterface.thrift

exception WrongPhoneOrPasswordException {
    1: i32 code,
    2: string description
}

struct Session {
    1: i64 id,
    2: string jwt
}

service ArhonathThriftService {
    Session login(1:string phone, 2:string password, 3:string channel) throws (2:WrongPhoneOrPasswordException e),
}