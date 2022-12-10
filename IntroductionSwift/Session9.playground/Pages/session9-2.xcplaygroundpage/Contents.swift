protocol SomeProtocol {
    var variable: Int { get }
}

// プロトコルに準拠している型はプロトコルにアップキャスト可能 -> プロトコルで定義されているプロパティやメソッドを使用できる
func someMethod(x: SomeProtocol) {
    x.variable
}

// protocol composition(複数のプロトコルに準拠した型を表現する仕組み)
// -> これによって両方のインターフェースを使用できる

protocol SomeProtocol1 {
    var variable1: Int { get }
}

protocol SomeProtocol2 {
    var variable2: Int { get }
}

struct SomeStruct: SomeProtocol1, SomeProtocol2 {
    var variable1: Int
    var variable2: Int
}

func someFunction(x: SomeProtocol1 & SomeProtocol2) {
    x.variable1
}

let a = SomeStruct(variable1: 1, variable2: 0)
someFunction(x: a)



