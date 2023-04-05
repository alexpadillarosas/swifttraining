//
//  more.swift
//  swifttraining
//
//  Created by alex on 4/4/2023.
//

import Foundation


/*
var stones2 : [String : Double] = [ "Opal":1000.0 ,
                                   "Topaz":553.33 ,
                                   "Sapphire":332.32 ]

// all keys and values, allKeys & allValues will be dictionaries
var allKeys = stones2.keys
var allValues = stones2.values
print(allKeys)
print(allValues)
// getting all keys and all values as arrays
var allKeysArray = [String](stones2.keys)
var allValuesArray = [Double](stones2.values)
print(allKeysArray)
print(allValuesArray)

//overwriting items
var studentGrades : [String : Int] = [ "Programming 1": 80, "Foundation Programming": 67 , "Information System":52 ]
var oldProg1grade = studentGrades.updateValue(83, forKey: "Programming 1")
print("oldProg1grade = \(oldProg1grade)")
print("studentGradeDic = \(studentGrades) ")
//remove
var removedValue = studentGrades.removeValue(forKey: "Information System")
print("removedValue = \(removedValue)")
print("studentGradeDic = \(studentGrades) ")
//updating an element in a dictionary where the key does not exist, will add the element
studentGrades["Java"] = 77
print("studentGradeDic = \(studentGrades) ")

//Nested dictionaries
var questBoard = [
    "Fetch Gemstones":[
        "Objective":"Retrieve 5 gemstones",
        "Secret":"Complete in under 5 minutes"
    ]  ,
    "Defeat Big Boss":[
        "Objective":"Beat the boss",
        "Secret":"Win with 50% health"
    ]
]

var gemstoneObjective = questBoard["Fetch Gemstones3"]?["Objective"]
print(gemstoneObjective)

//Sets
var os : Set<String> = ["MacOS", "Windows", "Android", "MacOS"]
print(os)
os.insert("Debian")
os.remove("Android")
os.insert("Debian")
print(os)
print(os.sorted())

//Tuples
var uppercutAttack : (String, Int, Bool) = ("Uppercut Smash", 33, true)
print(uppercutAttack.0)
print(uppercutAttack.1)
print(uppercutAttack.2)

//Naming tuple values
var planetSmash : (name : String, damage: Int, rechargeable:Bool)
planetSmash.name = "planet Smash"
planetSmash.damage = 87
planetSmash.rechargeable = false

print(planetSmash.name)
print(planetSmash.damage)
print(planetSmash.rechargeable)

 let value = questBoard["Fetch Gemstones"]?["Objective"]
 if value != nil {
     //this won't break
     print(value!)
 }


 //Looping dictionaries
 //for weaponKey in weapons.keys{
 //    print(weaponKey)
 //}
 //
 //for weaponValue in weapons.values{
 //    print(weaponValue)
 //}
 
 //using range
 //for indexNumber in 1...10{
 //    print(indexNumber)
 //}
 //
 //for indexNumber in armorTypes[0...]{
 //    print(indexNumber)
 //}
 //
 //for indexNumber in 1..<10{
 //    print(indexNumber)
 //}

 //repeat
 //var count1 = 4
 //repeat {
 //    print(count1)
 //    count1 -= 1
 //}while count1 > 0
 //
 ////switch
 //let initial = "R"
 //
 //switch initial {
 //case "A":
 //    print("It's a A")
 //case "H":
 //    print("It's a H")
 //default :
 //    print("Neither A nor H")
 //}

 //Type Alias
 // notice the = simbol after the AttackTuple name, this is different than when declaring a normal tuple using :
 typealias AttackTuple = ( name: String, damage: Int, rechargeable : Bool )

 //using our new datatype for variable declarations
 var jumpStrike : AttackTuple = ("Jump Strike", 60, false)

 //using the new datatype as parameter / return value
 func levelUpAttack( baseAttack : AttackTuple) -> AttackTuple {
     let increasedAttack : AttackTuple = ( baseAttack.name, baseAttack.damage + 10, true)
     return increasedAttack
 }

 //let's use the function:
 var poweredAttack = levelUpAttack(baseAttack: jumpStrike)

 print(poweredAttack)


 class Jedi2 {
     var name : String
     let rank : String
     let maxHealth : Int
     
     //Read Write Computed Property
     fileprivate var health: Int
     
     static var phrase : String = "May the force be with you"
     
     //method to modify / return our health computed property
     var Health : Int {
         get { return health }
         set {
             if newValue <= 100 {
                 health = newValue
             }
         }
     }
     
     //Read Only Computed property
     var healthLost : Int {
         return maxHealth - health;
     }
     
     init(name: String, rank: String, maxHealth: Int) {
         self.name = name
         self.rank = rank
         self.maxHealth = maxHealth
         self.health = maxHealth
     }
     
     func printValues(){
         print("Jedi: \(self.name), rank: \(self.rank), Health: \(self.health) / \(maxHealth) ")
     }
 }
 
 var luke = Jedi2(name: "Luke Skywalker", rank: "Knight", maxHealth: 88)
 luke.printValues()
 luke.health = 60
 luke.printValues()
 print(Jedi2.phrase)

 //Enumerators, used to create datatypes with a small range of elements
 enum SithRank {
     case Master
     case Apprentice
 }

 enum ForceType {
     case DarkSide
     case LightSide
 }

 enum WeaponType {
     case Lightsaber
     case Lightwhip
     case Blaster
 }

 
 // ********************************************************************************************************************
 // 2 Dimensional Arrays
 // ********************************************************************************************************************
 print("**************************** 2 Dimensional Arrays ******************************")
 var subjects : [[String]] = [
                                 ["Android","iOS","Cross Apps"],
                                 ["Programming 1","Programming 2","Java"],
                                 ["Foundation programming", "SW Engineering","Web Dev"]
                             ]

 print(subjects)
 print(subjects[2][1])
 
*/
