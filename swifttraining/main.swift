//
//  main.swift
//  swifttraining
//
//  Created by alex on 19/9/2022.
//

import Foundation

//********************************************************************************************************************
//  DataTypes
//********************************************************************************************************************
/**
    Swift manage datatypes such:
        Int, Float, Double, Bool, Character, String
 
*/

//********************************************************************************************************************
//  Declaring Variables and initializing them
//********************************************************************************************************************
print("**************************** Declaring Variables ******************************")
var letter : Character = "S"
var name : String = "Michael"
var weight : Float = 70.2
var isItRaining : Bool = false

//Multiple variable declarations
var inventoryItems, equipmentSlots, currentGold : Int

//********************************************************************************************************************
//  Constants
//********************************************************************************************************************
print("**************************** Constants ******************************")
let maxTemperature = 200
print(maxTemperature)

//********************************************************************************************************************
//  Type Inference
//********************************************************************************************************************
print("**************************** Type Inference ******************************")
var characterName = "Kung Fu"
/**
    The previous statement will be the equivalent to
    var characterName : String
    characterName = "Kung Fu"
 */
print(characterName)

var minTemperature = 80
print(minTemperature)

var currentHealth = 45
currentHealth *= 5 // currentHealth = currentHealth * 5
print(currentHealth)
// Comparisons ==  ,  != , >  , <  >=  , <=
// Logical operators  ! ,  &&   ,  ||

//********************************************************************************************************************
//  String interpolation
//********************************************************************************************************************
print("**************************** String Interpolation ******************************")
var activeQuest : String = "Retrieving the cart"
var difficulty = "Nightmare"

var interpolatedInfo = "I'm not sure you are ready for \(activeQuest)  yet, it's \(difficulty) level"
print(interpolatedInfo)

//********************************************************************************************************************
//  String Methods
//********************************************************************************************************************
print("**************************** String Methods ******************************")
var phrase = "The song is boring"

print(phrase.count)
print(phrase.isEmpty)
print(phrase.contains("s"))

//append and insert
//phrase.append(contentsOf: ", but relaxing!")
//print(phrase)
//
//phrase.insert("*", at: phrase.startIndex)
//print(phrase)
//
//phrase.insert(contentsOf: ", specially when going to bed.", at: phrase.endIndex)
//print(phrase)
//
//// Remove and Split
//phrase.removeLast()
//phrase.removeFirst()
//print(phrase)

print(phrase.split(separator: " "))

//********************************************************************************************************************
//  Type Conversions
//********************************************************************************************************************
print("**************************** Type Conversions ******************************")
var currentGoldDouble = 5.654

var currentGoldInteger : Int = Int(currentGoldDouble)
print(currentGoldInteger)

var currentGoldString = String(currentGoldDouble)
print(currentGoldString)

//********************************************************************************************************************
//  Optionals
//********************************************************************************************************************
print("**************************** Optionals ******************************")
// If we declare a variable and try to print it (the next 2 instructions), Swift will stop us and tell us : Varible 'itemGathered'
// used before being initialized
// var itemGathered : String
// print(itemGathered)
// To avoid this issue, we need declare the variable as Optional by adding the symbol ? after the datatype, and Swift
// will let us proceed but the variable will have nil as value

var itemGathered : String?
print(itemGathered)

// Now if we assign a value to an Optional Variable, we will see how the variable gets wrapped as Optional
var itemDropped : String? = "Axe"
print(itemDropped)

//First version that will break your code
var myName2 : String = "" //it's hard to fool the compiler here but in an app with a UI myName2 can be nil

print(myName2.count)


//Optionals to the rescue
var myName :  String? = "Dr Pepper"
//print(myName?.count)

//======================================
//Unwrapping an optional with an if let  (Very useful and used a lot)
if let unwrapped = myName {
    //here you are sure myName has a value
    print("\(unwrapped.count) letters")
    
    print(unwrapped)
    
}else{
    //myName does not have a value
    print("Missing name")
}
//So if you want to be sure that a variable does contain a value you better use optional  : ? (question mark)

//======================================
//Unwrapping an optional with guard:
// guard let is designed to exit the current function, loop or condition if the check fails, let's use the same example
func checkValue() -> Void {
    guard let unwrapped = myName else {
        return
    }
    print(unwrapped)
}
//a couple of things happens in here, guard let us focus on the happy path, the behaviour of logic when everything has
//gone to plan. it requires that we exit the current scope (loop, condition, function) when the guard fails
//It's a good fit for validations at the beginning of the function, after we pass all guards it means all conditions are correct.


//********************************************************************************************************************
//  Unwrapping Optionals :  if let vs guards let
//********************************************************************************************************************

//It’s common to see guard used one or more times at the start of methods, because it’s used to verify some conditions are correct up front. This makes our code easier to read than if we tried to check a condition then run some code, then check another condition and run some different code.

//So, use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing.



//********************************************************************************************************************
//  implicit unwrapped optional : ! (exclamation mark)
//********************************************************************************************************************
/*
 it might contain a value or might not, but it won't need to be unwrapped before use
 but you need to be extra carefull, Swift won't check for you.
 Implicitly unwrapped optional exist because sometimes a variable will start life as nil, but will always have a value
 before you need to use it. Because you know they will have a value by the time you need them, it's helpful not having to write if let all the time.
 To sum up: an implicitly unwrapped optional promises the compiler it has a value when it is accessed.
 */
print("**************************** Unwrapping Optionals ******************************")

var text: String! = nil

let totalLetters = text?.count //test what happens if we remove the optional -> the app crashes

print(totalLetters)

//Watch out when telling the compiler a variable will have a value, but it won't, so the app will crash. run the following instructions to test it.
//Uncomment these 2 lines to see how your program crashes

//var someValue: Int!
//var unwrappedValue : Int = someValue


//********************************************************************************************************************
//  Nil-Coalescing Ooperator ??
//********************************************************************************************************************
print("**************************** ?? Operator ******************************")

//Optionals sometimes litter the code ( they are everywhere ), to avoid nil-coalescing operator helps to solve this problem

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil


var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"

// You don't need to create a separate variable to use nil coalescing


//********************************************************************************************************************
//  Arrays
//********************************************************************************************************************
print("**************************** Arrays ******************************")
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

print(levelDifficulty.contains("Moderate"))
print(levelDifficulty.sorted())


//********************************************************************************************************************
//  Dictionaries
//********************************************************************************************************************
print("**************************** Dictionaries ******************************")
var stones : [String : Double] = [ "Opal":1000.0 ,
                                   "Topaz":553.33 ,
                                   "Sapphire":332.32 ]

//accessing and modifying values
var opalPrice = stones["Opal"]
print(opalPrice)
//modifying a value in a dictionary
stones["Opal"] = 2000.0
print(stones["Opal"])

//declare an empty dictionary
var emojiDictionary = [Int  : String]()

//alternative declaration
var emoji: Dictionary<Int, String>

//********************************************************************************************************************
//  Conditionals
//********************************************************************************************************************
print("**************************** Conditionals ******************************")
var score = 34
var maxScore = 122

 // <, >, <=, =>, !=, ==

if score < 0 || score > 1000 {
    print("not possible scenario")
}else if score > maxScore {
    print("I've achieved a new MaxScore")
}else if score > 50 {
    print("Average Score, keep pushing!")
}else{
    print("try again!")
}

// conditionals using logical operators
if score > 100 && score < 122 {
    print("You are getting close to break the record")
}

//********************************************************************************************************************
//  Loops
//********************************************************************************************************************
print("**************************** Loops ******************************")

let playerGreeting = "Hello fellow hunter"
let armorTypes = ["Heavy Plate", "Hunters Gear", "Mage Robes"]  //Array
let weapons = ["Longsword": 150, "Dagger":25 , "Mace":75]       //Dictionary

//Looping through all characters inside of a ?string
for myCharacter in playerGreeting {
    print(myCharacter)
}
//Looping arrays
for armor in armorTypes {
    print(armor)
}

//Looping a Dictionary
for ( weapon, cost ) in  weapons {
    print("\(weapon) : \(cost)")
}

//While
var playerHealth = 5

while playerHealth > 0 {
    print(playerHealth)
    playerHealth = playerHealth - 1
}


//********************************************************************************************************************
//  Functions
//********************************************************************************************************************

print("**************************** Functions ******************************")
// Function Without Parameters
func showMeTheMoney1(){
    print("Show me the money 1")
}
showMeTheMoney1()

// Function Without Parameters returning a value
func showMeTheMoney2() -> String {
    print("Show me the money 2")
    return "How much do you want? "
}
var result2 = showMeTheMoney2()
print("result2 : \(result2)")

// Function With Parameters returning a value
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
print(details)

print("**************************** External & Internal Parameter names in Swift ******************************")
/*
Swift  functions can use external parameter names to give parameters more  meaningful names when the function is called. The external parameter  name is used when calling the function, while the internal parameter  name is used within the function body.
To  use external parameter names, you can write the external parameter name  before the internal parameter name in the function definition,  separated by a space.
For example, the following function calculates the area of a rectangle:
*/
func calculateArea(of width: Int, and height: Int) -> Int {
  return width * height
}
/*
 Here, of and and are the external parameter names, and width and height are the internal parameter names. To call this function, you would use the external parameter names:
 */
let area = calculateArea(of: 5, and: 10) // 50
/*
 Alternatively, you can use _ as the external parameter name to indicate that the parameter should not be used when calling the function:
 */
func calculateArea(_ width: Int, _ height: Int) -> Int {
    return width * height
}
//In this example, you can call the function like this:

let area2 = calculateArea(5, 10) // 50

/*
Using  external parameter names can make your code more readable and  organized, allowing you to more clearly express the intent of the  function.
 */

//********************************************************************************************************************
//  Enumerators, used to create datatypes with a small range of elements
//********************************************************************************************************************
print("**************************** Enumerators ******************************")
enum SithRank {
    case Master
    case Apprentice
}
// Enumerators with values
enum Turn : String{
    case NOUGHT = "O"
    case CROSS = "X"
}

var firstTurn = Turn.CROSS
print(firstTurn)
print(firstTurn.rawValue)


//********************************************************************************************************************
//  Closures
//********************************************************************************************************************
print("**************************** Closures ******************************")
// In Swift, a closure is a special type of function without the function name, for example
/*
    Syntax:
    {   (parameters) -> returnType in
        // statements (closure body)
    }
    where:
    parameters : Any value passed to closure
    returnType : Specifies the return type of value returned by the closure
    in         : This is optional, it is used to separate parameters/returnType from the closure body
 */

//  Closure without parameters

var greet = {
    print("Hello World")
}
//  Here we have defined a closure and assigned to a variable called greet, notice : the closure does not have any parameters and return type.
//  To execute this closure, we need to call it. Here is how we can call the closure
//  notice that the print statement inside the closure is executed
greet()

//  Closure with parameters

let greetUser = {  (name:  String) in
    print("Hello \(name)")
}
//  calling the closure
greetUser("Curly lemon peel")
//  notice: Unlike functions, we call the closure without mentioning the parameter name.

//  Closure with parameters returning a value

let calculateSquareArea = { (side : Int) -> Int in
    return  side*side
}
//  calling the closure
let result = calculateSquareArea(5)
print("square area \(result)")

//  Closures as Function Parameter

//  In Swift we can create a function that accepts a closure as its parameter

func grabLunch( search : ()->() ){
    print("Let's go out for lunch")
    //closure call
    search()
}
/*  where
    search      :   function parameter
    () -> ()    :   represents the type of the closure
    search()    :   call closure from the inside of the function
*/

//  calling the closure
grabLunch(search: {
    print("Phillip is really hungry")
})

// Trailing Closure

// In trailing closure, if a function accepts a closure as its last parameter,
// we can call the function by passing closure as a function body without mentioning the name of the parameter.
// For instance the previous function has a trailing closure, therefore we could call it like this:

grabLunch {
    print("Phillip is really hungry after working with trailing closure")
}

// Now let's see trailing closures with more than 1 parameters, let's define this function:

func grabDinner(message: String , search : () -> ()){
    print(message)
    search()
}

// Calling the closure

grabDinner(message: "I skipped lunch") {
    print("Let's eat chicken parmi")
}


// defining an empty closure
var myClosure : () -> () = {}

var computeDamage: (Int) -> Int = { argument in
    return argument * 4
}

print(computeDamage(25))

//********************************************************************************************************************
//  Classes
//********************************************************************************************************************

print("**************************** Classes ******************************")
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

//Subclassing

class Force {
    var strength : Int
    var essence : String //Dark Side , Light Side
    
    init(strength: Int, essence: String) {
        self.strength = strength
        self.essence = essence
    }
    
    func printValues(){
        print("strength: \(self.strength), essence: \(self.essence)")
    }
}

class Sith : Force {
    
    var name : String
    var rank : String // Master, Apprentice
    var lightning : Bool
    var weapon: String
    
    init(name: String, rank: String, lightning: Bool, strength : Int, weapon : String) {
        self.name = name
        self.rank = rank
        self.lightning = lightning
        self.weapon = weapon
        super.init(strength: strength, essence: "DarkSide")
    }
    
    override func printValues() {
        print("Sith : \(self.name), rank: \(self.rank), lightning: \(self.lightning), strength: \(self.strength), essence: \(self.essence)")
    }

}

var darthSidious = Sith(name: "Sheev Palpatine", rank: "Master", lightning: true, strength: 100, weapon: "Lightsaber")
darthSidious.printValues()


// Extending String
extension String {
    func myOwnStringFunction(){
        print("I have this capability now")
    }
}

//Extending String Optionals
extension Optional where Wrapped == String {
    
    var isBlank : Bool {

        return self?.trimmingCharacters(in:.whitespaces).isEmpty ?? true
    }

}

var name123 : String = "John"
name.myOwnStringFunction()


var testnil : String? = ""    //defaults to nil
if testnil.isBlank {
    print("is blank")
}else{
    print("it has a value")
}






