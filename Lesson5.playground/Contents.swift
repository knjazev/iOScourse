// ## Задание:
//: * [App Development with Swift](https://books.apple.com/by/book/app-development-with-swift/id1465002990) **Units 1.1-1.4 + Units 2.1-2.5**

//: ### Практика:
// 1. Придумать ENUM к которому можно применить rawValue (не Error), другой к которому можно применить Associated Values (не из примеров с занятия)
// 2. Создать опционалы типов Int, Double, String + какого-то своего класса, а также применить все виды разворачивания: Optional Binding, Optional chaining, nil-coalesing (??)
// 3. Описать с помощью ENUM погодные явления, сопроводить(где возможно) associated values

//: ### Advanced:
//: * https://www.hackerrank.com/


// ENUM

enum BodyStyle {
    case sedan, coupe, hatchback, van, track, suv, convertible
}

enum MercedesClass {
    case a_class (description: String)
    case b_class (description: String)
    case c_class (description: String)
    case cla (description: String)
    case cls (description: String)
    case e_class (description: String)
    case g_class (description: String)
    case gla (description: String)
    case glb (description: String)
    case glc (description: String)
    case gle (description: String)
    case gls (description: String)
    case s_class (description: String)
    case sl (description: String)
    case slc (description: String)
    case v_class (description: String)
    
}

enum VolvoClass {
    case s40 (description: String)
    case s60 (description: String)
    case s90 (description: String)
    
}

enum MercedesColors{
    case mercedesPerlYellow
    case mercedesMatteBlue
}

enum VolvoColors{
    case polishRed
    case polishWhite
}


enum Garage {
    case mercedes (class: MercedesClass, body_style: BodyStyle, year: UInt, color: MercedesColors)
    case volvo (class: VolvoClass, body_style: BodyStyle, year: UInt, color: VolvoColors)
}

var myCar = Garage.mercedes(class: .s_class(description: "AMG"), body_style: .coupe, year: 2020, color: .mercedesPerlYellow)
var myCar2 = Garage.volvo(class: .s90(description: "600 hp"), body_style: .suv, year: 2020, color: .polishRed)



enum CarsNames: String {
    case mercedes = "Mercedes-Benz"
    case vw = "Volkswagen"
    case bmw = "Bayerische Motoren Werke"
}

var car1 = CarsNames.bmw
var carRawValue = CarsNames.bmw.rawValue
print(car1)
print(carRawValue)

//Optional



enum SuperCarNames{
    case bugatti, ferrari, lotus, pogani, porsche
}

class SuperCars {
    var name: SuperCarNames
    var maxSpeed: UInt
    var fuelTankCapacity: UInt?
    var batteryCapacity: UInt?
    let numberOfwheels: UInt? = 4 //
    
    init(name: SuperCarNames, speed: UInt, fuelCapacity: UInt?, batteryCapacity: UInt?) {
        self.name = name
        self.maxSpeed = speed
        self.fuelTankCapacity = fuelCapacity
        self.batteryCapacity = batteryCapacity
//        self.numberOfwheels = wheels
    }
    
    func description() -> String {
        
        if batteryCapacity == nil {
            return ("Car name \(name), max. speed is \(maxSpeed), fuel capacity is \(fuelTankCapacity), number of wheels is \(numberOfwheels!)")
        }else {
            return ("Car name \(name), max. speed is \(maxSpeed), battery capacity is \(batteryCapacity), number of wheels is  \(numberOfwheels!)")
        }
        
        
}
}

var mySuperCar = SuperCars(name: .bugatti, speed: 400, fuelCapacity: 300, batteryCapacity: nil)
var mySuperCar2 = SuperCars(name: .porsche, speed: 300, fuelCapacity: nil, batteryCapacity: 20000)

print(mySuperCar.description())
print(mySuperCar2.description())


var carGood: String? = "Bugatti Veyron"
var carBad: String? = "Lada Priora"

carBad = nil



if let myCar = carBad {
    print("Bad deals")
}else if let myCar = carGood{
    print("Good deals")
}else {
    print("Use bycicle")
}


var myCar22: String? = carBad ?? carGood

print(myCar22)



//Wheather


    
enum Country { case belarus, russia, usa, germany, belgium}

enum City {
        case minsk (country: Country, temperature: Temperature, date: MonthlyCalendar)
        case moscow (country: Country, temperature: Temperature, date: MonthlyCalendar)
        case berlin    (country: Country, temperature: Temperature, date: MonthlyCalendar)
        case brussel (country: Country, temperature: Temperature, date: MonthlyCalendar)
    }

enum Temperature {
    case cold, good, hot
}

    enum Month {
        case January
        case February
        case March
        case April
        case May
        case June
        case July
        case August
        case September
        case October
        case November
        case December

    }

enum Date {
    case yesterday, today, tommorrow
}

    enum MonthlyCalendar {
        case monday (number: Date, month: Month)
        case tuesday (number: Date, month: Month)
        case wednesday (number: Date, month: Month)
        case thursday (number: Date, month: Month)
        case friday (number: Date, month: Month)
        case saturday (number: Date, month: Month)
        case sunnday (number: Date, month: Month)
    }






var info = City.minsk(country: .belarus, temperature: .good, date: .thursday(number: .today, month: .September))








