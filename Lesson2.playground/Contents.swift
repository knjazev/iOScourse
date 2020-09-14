import UIKit

// В конспекте (файле Playground):
// 1. Проинициализируйте константы типа Int, Double, String, Bool, не задавая тип явно

let a = 1
let b = 1
let c = " world"
let d = true

// 2. Проинициализируйте переменные типа Int, Double, String, Bool, явно задав тип
var e:Int = 1
var f:Double = 1
var g:String = "1"
var h:Bool = true

// 3. Проинициализируйте переменную типа Int со значением, равным сумме созданной константе и переменной в п.1-2

var i: Int = a+e


// 4. Задайте новое значение переменной, созданной в п.3, равное произведению константы из п.1 и переменной из п.2

i = b * Int(f)

// 5. Объявите(не инициализируя) переменные типов Int, Double, String

var j: Int
var k: Double
var l: String



// 6. Проинициализируйте переменную типа Bool с результатом сравнения константы из п.1 и переменной из п.2

var m:Bool = a != e

// 7. Проинициализируйте переменую типа String с каким-либо значением

var n:String = "Hello\(c)"

// 8. Взять модуль из переменной типа Int, реализовать округление переменной типа Double

var o:Int = 123
var p = o%2

var q:Int = -8
var r = abs(q)


print(type(of: a))
print(type(of: b))
print(type(of: c))
print(type(of: d))
print(type(of: e))
print(type(of: f))
print(type(of: g))
print(type(of: h))

print(type(of: i))
print(type(of: j))
print(type(of: k))
print(type(of: l))

print(m)
print(n)
print(type(of: n))
print(p)
print(r)
