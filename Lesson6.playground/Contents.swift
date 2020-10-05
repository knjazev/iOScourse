import UIKit

// 1. Описать фцнкцию принимающую 2 аргумента String (word, line), которая с помощью цикла FOR считает сколько раз данное слово встречается в строке line
// 2. Написать алгоритм с помощью цикла DO-WHILE который добавляет в массив [Int] элементы (можно одинаковые, можно рандомные) до тех пор, пока сумма элементов массива меньше 100
// 3. Написать 1 алгоритм сортировки элементов массива [Int]

var emptyLine = ("\n")
func emptyLlineFunc() {
    print(emptyLine)
}


//1
var line  = "odli nekal line line skd ll line"
var word  = "line"
var counter111 = 0

var arrayS: Array<Substring> = []

func checkTheLine(word: String, line: String) {

 arrayS = line.split {
      !$0.isLetter
  }
    
    for element in arrayS {
        if (element.elementsEqual(word)) {
            counter111 = counter111+1
        }
    }
    print("Number of \(word) in \(line) is: \(counter111)")
}


checkTheLine(word: word, line: line)

emptyLlineFunc()

//2



var array100: [Int] = []
var sumOfElements = 0
var counter = 0
var temp = 0
var hundred = 100

repeat {

  array100.append(Int.random(in: 0...hundred))
  sumOfElements += array100[counter]
  temp = array100[counter]
  hundred -= array100[counter]
  counter = counter+1

  print(String(counter) + " step of iteration: element " + String(temp) + " added to array, sum of elements in array = " + String(sumOfElements))

}while sumOfElements <= 100  && hundred > 0
  



// Через WHILE

//while sumOfElements <= 100  && hundred > 0 {
//
//    array100.append(Int.random(in: 0...hundred))
//    temp = array100[counter]
////    print(array100[counter])
//    sumOfElements += array100[counter]
////    print(sumOfElements)
//    hundred -= array100[counter]
////    print(hundred)
//    counter = counter+1
////    print(counter)
//
//    print(String(counter) + " step of iteration: element " + String(temp) + " added to array, sum of elements in array = " + String(sumOfElements))
//}





emptyLlineFunc()


//3

var array = [1, 7, 3, 87, 23, 67, 45, 12]

func bubbleSort(arr: [Int]) -> [Int] {
    
    var dataSet = arr
    let last_position = dataSet.count - 1
    
    var swapFlag = true
    
    while swapFlag == true {
    swapFlag = false
        
        for i in 0..<last_position {
            if (dataSet[i] > dataSet[i + 1]) {
                
                let temp = dataSet [i + 1]
                dataSet [i + 1] = dataSet[i]
                dataSet[i] = temp
                
                swapFlag = true
            }
        }
    }
    return dataSet
}

let arr2 = bubbleSort(arr: array)

//for element in arr2 {
//    print(element)
//}

print(arr2)





