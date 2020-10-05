import UIKit

//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
//произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.
func First(arrayOne: [Int], arrayTwo: [Int]) {
    if (arrayOne[0] == 0 && arrayTwo[0] == 0) {
        print("their first elements are 0")
    }else {
         print("Not interesting")
    }
   
}

First(arrayOne: [0,9], arrayTwo: [0,5])
print("\n")


//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
//произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль

func Second(arrayOne: [Int]) {
    if (arrayOne.contains(3) && arrayOne.contains(5)) {
        print("Contains 3 and 5")
    } else {
        print("Not contains 3 and 5")
    }
    
}

Second(arrayOne: [0,9,7,9,4,3])
print("\n")





//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
//произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль

//var array = [3,9,7,9,4,3]
//
//if (array[0] == array[array.count-1]) {
//    print("the first element and the last element of a given array of integers are equal")
//} else {
//    print("the first element and the last element of a given array of integers are NOT equal")
//}
//
//print(array.count)

func Third(arrayOne: [Int]) {
    if (arrayOne[0] == arrayOne[arrayOne.count-1]) {
        print("the first element and the last element of a given array of integers are equal")
    } else {
        print("the first element and the last element of a given array of integers are NOT equal")
    }
}

Third(arrayOne: [43,9,7,9,4,43])

print("\n")




//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
//проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)


var arrayOfStrings: [String] = ["Fello", "world", "Bye", "-", "bye", "world"]
    arrayOfStrings.append("!!!")
    arrayOfStrings[0] = "Hello"
    print("Number of elements in array: \(arrayOfStrings.count)")

print("\n")



//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
//проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)

var dictinory: Dictionary<Int, String> = [1: "Vasia", 2: "Petia", 3: "Kolia"]
for element in dictinory {
    print("\(element.key) and \(element.value)")
}

dictinory.removeValue(forKey: 2)

for element in dictinory {
    print("\(element.key) is \(element.value)")
}

print("\n")



//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.

var set: Set<String> = []

set.insert("Vasia")
set.insert("Vasia")
set.insert("Vasia1")
set.insert("Vasia1")
set.insert("Vasia2")
set.insert("Vasia2")
set.insert("Vasia2")
set.insert("Vasia3")



print("\(set), count = \(set.count)")
print("\n")


////проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)
//7. Create 2 arrays, and merge them.
//проинициализировать 2 массива и объединить(можно в новом массиве)

var arrayOne = [1,2,3,4,5]
var arrayTwo = [6,7,8,9,10]

var arrayThree = arrayOne + arrayTwo

print(arrayThree)
print("\n")

//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его и вывести в консоль.

var closure  = { (_ first: Int, _ second:Int) -> (Int) in
    return first + second
}

print(closure(6, 8))
print("\n")


//9. Подготовить примеры:

// array.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)

var arrayMap = [1, 7, 9, 3, 5, 8, 9]
var closureMap = { (_ first: Int) -> (Int) in
    return first * first
}

print(arrayMap.map(closureMap))
print("\n")


// array.filter(<#T##isIncluded: (Int) throws -> Bool##(Int) throws -> Bool#>)

print(arrayMap.filter({$0 % 2 == 0}))
