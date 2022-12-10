// Session9- プロトコル

protocol SomeProtocol1 {
    func someMethods1()
}

protocol SomeProtocol2 {
    func someMethods2()
}
// プロトコルに準拠
// -> プロトコルが要求している全てのインターフェースを実装する必要がある

struct SomeStruct {
    let someProperty: Int
}

// extensionを使うことで,プロパティ、メソッドとの対応が明確になる == 可読性が上がる
extension SomeStruct: SomeProtocol1 {
    func someMethods1() {}
}

extension SomeStruct: SomeProtocol2 {
    func someMethods2() {}
}


