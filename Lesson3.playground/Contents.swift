import UIKit


//: ## Задание:

//: * Подготовить интерпретацию иерархии видов животных в коде (класс-семейство-вид) подробно описать их свойства и функции
//: *


//Variant 1:

class WildCats {
    
    enum WildCatType{
        case Lion, Leopard, Jaguar, Tiger, Snow_Leopard, Clouded_Leopard, Sunda_Clouded_Leopard, Asiatic_Golden_Cat, Borneo_Bay_Cat, Marbled_Cat, Caracal, African_Golden_Cat, Serval, Geoffroy_s_Cat, Guiña, Southern_Oncilla, Northern_Oncilla,Andean_Cat, Colocolo, Margay, Ocelot, Iberian, Eurasian, Bobcat, Mountain_Lion, Jaguarundi, Cheetah, Mainland_Leopard_Cat, Sunda_Leopard_Cat, Fishing_Cat, Flat_headed_Cat, Rusty_spotted_Cat, Pallas_Cat, European_Wild_Cat, African_Wild_Cat, Chinese_Mountain_Cat, Sand_Cat, Black_footed_Cat, Jungle_Cat
    }

    enum WildCatSize{
        case Big, Middle, Small
    }
    
    enum Lineage {
        case Panthera, Bay_Cat, Caracal, Ocelot, Lynx, Puma, Leopard_Cat, Domestic_Cat
    }
    
    var wildCatType: WildCatType
    var size: WildCatSize
    var lineage: Lineage
    var hasAstripes: Bool
    
    
   
    
    init(type: WildCatType, size: WildCatSize, lineage: Lineage, stripes: Bool) {
        self.wildCatType = type
        self.size = size
        self.lineage = lineage
        self.hasAstripes = stripes
    }
    
    func description(){
        print("Wild Cat type: \(self.wildCatType) , it's size: \(self.size), lineage: \(self.lineage), stripes? - \(self.hasAstripes)")
    }
}

var wildCatOne = WildCats(type: .Jaguar, size: .Middle, lineage: .Leopard_Cat, stripes: true)
var wildCatTwo = WildCats(type: .Lion, size: .Big, lineage: .Caracal, stripes: false)

print(wildCatOne.description())
print(wildCatTwo.description())



//Variant 2


class WildCats2 {
    
    var name = ""
    var size = ""
    var hasAstripes = false
    
    func makeSound(){
    }
}

class Puma: WildCats2 {
    
    override func makeSound() {
        print ("Sh-sh-sh-sh-sh")
    }
    
    func description() {
        print("Type is \(self.name), size is \(self.size). Has a stripes? - \(hasAstripes)")
    }
}

class Lion: WildCats2 {
    
    override func makeSound() {
        print ("Rrr-rrrrrr-rrrrrrrrr-rrrrr")
    }
    
    func description() {
        print("Type is \(self.name), size is \(self.size). Has a stripes? - \(hasAstripes)")
    }
}


let pumaOne = Puma()
pumaOne.name = "Puma"
pumaOne.size = "Middle"
pumaOne.hasAstripes = false
pumaOne.description()
pumaOne.makeSound()


let lion = Lion()
lion.name = "Lion"
lion.size = "Big"
lion.hasAstripes = false
lion.description()
lion.makeSound()
