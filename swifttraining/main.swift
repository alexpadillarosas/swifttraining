//
//  main.swift
//  swifttraining
//
//  Created by alex on 19/9/2022.
//

import Foundation

//Variables
var currentTemperature = 90
print(currentTemperature)

//Contants
let maxTemperature = 200
print(maxTemperature)

//Type Inference
//var characterName = "Kung Fu"
var characterName : String
characterName = "Kung Fu"
print(characterName)

var minTemperature : Int = 80
print(minTemperature)
//Multiple variable declarations
var inventoryItems, equipmentSlots, currentGold : Int

var currentHealth = 45
currentHealth *= 5 // currentHealth = currentHealth * 5
print(currentHealth)
// Comparisons ==  ,  != , >  , <  >=  , <=
// Logical operators  ! ,  &&   ,  ||

//Understanding Strings
var activeQuest : String = "Retrieving the cart"
print(activeQuest)

var difficulty = "Nightmare"
var info = activeQuest + " |==> " + difficulty
print(info)

//String interpolation
var interpolatedInfo = "I'm not sure you are ready for \(activeQuest)  yet, it's \(difficulty) level"
print(interpolatedInfo)

//Working with Strings
var phrase = "The song is boring"

print(phrase.count)
print(phrase.isEmpty)
print(phrase.contains("s"))

//append and insert
phrase.append(contentsOf: ", but relaxing!")
print(phrase)

phrase.insert("*", at: phrase.startIndex)
print(phrase)

phrase.insert(contentsOf: ", specially when going to bed.", at: phrase.endIndex)
print(phrase)

// Remove and Split
phrase.removeLast()
phrase.removeFirst()
print(phrase)

print(phrase.split(separator: ","))
var amITired : Bool = false
print(amITired)

//Type Conversions
var currentGoldDouble = 5.654

var currentGoldInteger : Int = Int(currentGoldDouble)
print(currentGoldInteger)

var currentGoldString = String(currentGoldDouble)
print(currentGoldString)

//Booleans
var isActive : Bool = false
var canMove : Bool = true

var booleanResult = isActive && canMove
print(booleanResult)

//Optional
var itemGathered : String?
print(itemGathered)
var itemDropped : String? = "Axe"
print(itemDropped)

//First version that will break your code
var myName2 : String = "" //it's hard to fool the compiler here but in an app with a UI myName2 can be nil

print(myName2.count)


//Optionals to the rescue
var myName :  String? = "Dr Pepper"
//print(myName?.count)

if let unwrapped = myName {
    print("\(unwrapped.count) letters")
    //here you are sure myName has a value
    print(unwrapped)
    
}else{
    //myName does not have a value
    print("Missing name")
}

/*
 implicit unwrapped optional : ! (exclamation mark)  it might contain a value or might not, but it won't need to be unwrapped before use
 but you need to be extra carefull, Swift won't check for you.
 Implicitly unwrapped optional exist because sometimes a variable will start life as nil, but will always have a value
 before you need to use it. Because you know they will have a value by the time you need them, it's helpful not having to write if let all the time.
 To sum up: an implicitly unwrapped optional promises the compiler it has a value when it is accessed.
 */


var text: String! = nil

let totalLetters = text?.count //test what happens if we remove the optional -> the app crashes

print(totalLetters)

//Swift Arrays
//creating arrays
var test : [String] = [] //empty initialised array
var levelDifficulty : [String] = ["Easy", "Moderate", "Veteran", "Nightmare"]
var anotherSyntax : Array<String> = Array<String>()

//Count and isEmpty
print(levelDifficulty.count)
print(levelDifficulty.isEmpty)

//Accessing array values
print(levelDifficulty[1])
levelDifficulty[3] = "Utter Ridiculousness"
print(levelDifficulty)

levelDifficulty.append("Very Easy")
print(levelDifficulty)
levelDifficulty.insert("Nightmare", at: 1)
print(levelDifficulty)
levelDifficulty.remove(at: 2)
print(levelDifficulty)
print(levelDifficulty.contains("Moderate"))
print(levelDifficulty.sorted())


var subjects : [[String]] = [
    ["Android","iOS","Cross Apps"],
    ["Programming 1","Programming 2","Java"],
    ["Foundation programming", "SW Engineering","Web Dev"]
]

print(subjects)
print(subjects[2][1])

//Dictionaries
var stones : [String : Double] = [ "Opal":1000.0 , "Topaz":553.33 , "Sapphire":332.32 ]

//accessing and modifying values
var opalPrice = stones["Opal"]
print(opalPrice)
//modifying a value in a dictionary
stones["Opal"] = 2000.0
print(stones["Opal"])
// all keys and values, allKeys & allValues will be dictionaries
var allKeys = stones.keys
var allValues = stones.values
print(allKeys)
print(allValues)
// getting all keys and all values as arrays
var allKeysArray = [String](stones.keys)
var allValuesArray = [Double](stones.values)
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

//Control Flow
var score = 34
var maxScore = 122

if score > maxScore { // <, >, <=, =>, !=, ==
    print("I've achieved a new maxScore")
}else if score > 50 {
    print("Average score, keep pushing!")
}else  {
    print("Try again!")
}

if score > 100 && score < 122 {
    print("You are getting close to break the record")
}

let value = questBoard["Fetch Gemstones"]?["Objective"]
if value != nil {
    //this won't break
    print(value!)
}

//for in loops
let playerGreeting = "Hello fellow hunter"
let armorTypes = ["Heavy Plate", "Hunters Gear", "Mage Robes"]
let weapons = ["Longsword": 150, "Dagger":25 , "Mace":75]
//Looping string
for myCharacter in playerGreeting {
    print(myCharacter)
}
//Looping arrays
for armor in armorTypes {
    print(armor)
}
//Looping dictionaries
for weaponKey in weapons.keys{
    print(weaponKey)
}

for weaponValue in weapons.values{
    print(weaponValue)
}

for ( weapon, cost ) in  weapons {
    print("\(weapon) : \(cost)")
}

//using range
for indexNumber in 1...10{
    print(indexNumber)
}

for indexNumber in armorTypes[0...]{
    print(indexNumber)
}

for indexNumber in 1..<10{
    print(indexNumber)
}

//While
var playerHealth = 5

while playerHealth > 0 {
    print(playerHealth)
    playerHealth = playerHealth - 1
}
//repeat
var count1 = 4
repeat {
    print(count1)
    count1 -= 1
}while count1 > 0

//switch
let initial = "R"

switch initial {
case "A":
    print("It's a A")
case "H":
    print("It's a H")
default :
    print("Neither A nor H")
}

//Basic Functions
func showMeTheMoney1(){
    print("Show me the money 1")
}
showMeTheMoney1()

func showMeTheMoney2() -> String {
    print("Show me the money 2")
    return "How much do you want? "
}
var result2 = showMeTheMoney2()
print("result2 : \(result2)")

func showMeTheMoney2(name : String) -> String {
    print("Show me the money 3")
    return "How much money do you want \(name)"
}
var result3 = showMeTheMoney2(name: "John")
print("result3 : \(result3)")

//Functions with multiple return values
func createUser(firstName : String, lastName: String) -> (fullName : String, active: Bool){
    let temp = firstName + " " + lastName
    return ( temp, false)
}
var details = createUser(firstName: "Shiori", lastName: "Takei")
print(details.fullName)
print(details.active)

//closures
// defining an empty closure
var myClosure : () -> () = {}

var computeDamage: (Int) -> Int = { argument in
    return argument * 4
}

print(computeDamage(25))


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

//Classes

class Jedi {
    var name : String
    var rank : String  //Apprentice, Knight, Master
    let maxHealth : Int
    
    // designated initializer
    init(name: String, rank: String, maxHealth: Int) {
        self.name = name
        self.rank = rank
        self.maxHealth = maxHealth
    }
    
    // convenience  initializers
    convenience init(name : String) {
        self.init(name: name, rank : "Apprentice", maxHealth : 100)
    }
    
    func printValues(){
        print("Jedi: \(self.name), rank: \(self.rank), Health: \(maxHealth) ")
    }
}
//Using a class:
var anakin = Jedi(name: "Anankin Skywalker", rank: "Knight", maxHealth: 80)
anakin.printValues()
var dooku = Jedi(name: "Count Dooku", rank: "Master", maxHealth: 100)
dooku.printValues()
//watch out with assigning objects, objects are references
var unknown = dooku;
unknown.name = "Unknown"
unknown.printValues()
dooku.printValues()

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

//Subclassing

class Force {
    var strength : Int
    var essence : ForceType //Dark Side , Light Side
    
    init(strength: Int, essence: ForceType) {
        self.strength = strength
        self.essence = essence
    }
    
    func printValues(){
        print("strength: \(self.strength), essence: \(self.essence)")
    }
}

class Sith : Force, Weaponry {
    
    var name : String
    var rank : SithRank // Master, Apprentice
    var lightning : Bool
    var weapon: WeaponType
    
    init(name: String, rank: SithRank, lightning: Bool, strength : Int, weapon : WeaponType) {
        self.name = name
        self.rank = rank
        self.lightning = lightning
        self.weapon = weapon
        super.init(strength: strength, essence: ForceType.DarkSide)
    }
    
    override func printValues() {
        print("Sith : \(self.name), rank: \(self.rank), lightning: \(self.lightning), strength: \(self.strength), essence: \(self.essence)")
    }
    
    func aim() -> Bool {
        if self.lightning {
            print("I am \(self.name) and I'm going to show you the Sith Lightning I will strike you down with")
        }else{
            print("I am \(self.name) and I'm aready to fight with my \(self.weapon)")
        }
        return true
    }
}

var darthSidious = Sith(name: "Sheev Palpatine", rank: SithRank.Master, lightning: true, strength: 100, weapon: WeaponType.Lightsaber)
darthSidious.printValues()
darthSidious.aim()

//Protocols : A protocol can only have functions and properties, theuy don't store values or have implementations

protocol Weaponry {
    
    var weapon : WeaponType { get set }
    
    func aim() -> Bool
}

// Extensions
extension String {
    func myOwnStringFunction(){
        print("I have this capability now")
    }
}

var name : String = "John"
name.myOwnStringFunction()

