//
//  main.swift
//  swifttraining
//
//  Created by alex on 19/9/2022.

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
let maxTemperature : Int = 200
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
print("**************************** Type Conversions (Differnt than type casting) ******************************")
var currentGoldDouble = 5.654

var currentGoldInteger : Int = Int(currentGoldDouble)
print(currentGoldInteger)

var currentGoldString = String(currentGoldDouble)
print(currentGoldString)



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
var stonePrices : [String : Double] = [ "Opal":1000.0 ,
                                   "Topaz":553.33 ,
                                   "Sapphire":332.32 ]

//accessing and modifying values
var opalPrice = stonePrices["Opal"]
print(opalPrice)
//modifying a value in a dictionary
stonePrices["Opal"] = 2000.0
print(stonePrices["Opal"])

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
//function with multiple return values
func createUser(firstname : String, lastname: String) -> (fullname : String, password : String){
    let temp = firstname + " " + lastname
    let pass = UUID().uuidString
    return ( temp, pass)
}
var details = createUser(firstname: "John", lastname: "Doe")
print(details)

print("**************************** External & Internal Parameter names in Swift functions ******************************")
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
//  Optionals
//********************************************************************************************************************
print("**************************** Optionals ******************************")
// If we declare a variable and try to print it (the next 2 instructions), Swift will stop us and tell us : Varible 'itemGathered' used before being initialized
var itemGathered : String
//Uncomment this line to show how the compiler prevents a crash, marking this line as error.
//print(itemGathered.count)


// =====>  Optionals to the rescue
// To avoid this issue, we need declare the variable as Optional by adding the symbol ? after the datatype, and Swift
// will let us proceed but the variable will have nil as value

var myName :  String? = "Dr Pepper"
print(myName)
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

let totalLetters = text?.count //test what happens if we remove the null check operator : ? -> the app crashes

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
 
    Closures are anonymoys functions, lambdas, and blocks in other programming languages.
 */

//  Closure without parameters

var greet = { () -> Void in
    print("Hello World")
}
//  Here we have defined a closure and assigned to a variable called greet, notice : the closure does not have any parameters and return type.
//  To execute this closure, we need to call it. Here is how we can call the closure
//  notice that the print statement inside the closure is executed
greet()
// since there are not parameters then we could remove the parameter's parenthesis
// also since we return nothing we could omit the return statement  -> Void
// plus the reserve word in is optional
// so we could redefine the previous function as:

greet = {
    print("hello World")
}


//********************************************************************************************************************
// Empty closure
//********************************************************************************************************************
var myClosure : () -> () = {}

//********************************************************************************************************************
//  Closure without parameters
//********************************************************************************************************************

let simpleClosure: () -> Void = {
    print("Hello World")
}
//calling the closure:
simpleClosure()

//********************************************************************************************************************
//  Closure with 1 parameter
//  the parameter called "myName" is specified, and we will refer to this String parameter using this name in the closure
//********************************************************************************************************************
print("***************** Closure with 1 parameter returning nothing *****************")
//defining a closure
let greetUserClosure: (String) -> Void = {  (myName)  in
    print("Hello \(myName)")
}
//calling the closure:
greetUserClosure("Michael")

//assigning the closure to a constant, here we assign the BODY of the closure, since it's the body we don't know
//anything about the parameters, or the return datatype, so we have to specify it inside of the body
let greetUser = {  (anotherName:  String) in
    print("Hello \(anotherName)")
}
//  calling the closure
greetUser("Curly lemon peel")
//  notice: Unlike functions, we call the closure without mentioning the parameter name.



//********************************************************************************************************************
//  Closure with parameter returning a value
//********************************************************************************************************************
print("***************** Closure with 1 parameter returning a value *****************")
let calculateSquareAreaClosure: (Int) -> Int = { (side) in
    return  side*side
}
//  calling the closure
let result = calculateSquareAreaClosure(5)
print("square area \(result)")


//var computeDamage: (Int) -> Int = { argument in
//    return argument * 4
//}
//
//print(computeDamage(25))

//********************************************************************************************************************
//  Closure with multiple parameters returning a value
//********************************************************************************************************************
print("***************** Closure with 2 parameters returning a value *****************")
let calculateRectangleAreaClosure: (Double, Double) -> Double = { (length, width)  in // the parenthesis for the parameters names are optional, you can remove it
    return length * width
}
//calling the closure
let recArea = calculateRectangleAreaClosure(3,2)
print("rectangle area: \(recArea)")

//********************************************************************************************************************
//  Closures as Function Parameter
//********************************************************************************************************************
//  In Swift we can create a function that accepts a closure as its parameter
print("***************** Closure with a closure parameter *****************")
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
                    print("Carl is also hungry")
                  }
         )

//********************************************************************************************************************
// Trailing Closure
//********************************************************************************************************************

/* In trailing closure:
    If a function accepts a closure as its last parameter
    When a function takes a trailing closure, you can omit the parenthesis when calling the function. (we can call the function by passing closure as a function body without mentioning the name of the parameter.)
 For instance the previous function has a trailing closure, therefore we could call it like this:
*/
print("***************** Trailing Closure *****************")
grabLunch {
    print("Phillip is really hungry after working with trailing closures")
}

// Now let's see trailing closures with more than 1 parameters, let's define this function:
print("***************** Function with a parameter and a Trailing Closure *****************")
func grabDinner(message: String , search : () -> ()){
    print(message)
    search()
}

// Calling the trailing closure (because the last parameter is a closure) with the code (closure) inside curly braces
grabDinner(message: "I skipped lunch") {
    print("Let's eat chicken parmi")
}


//********************************************************************************************************************
// Function with parameter, Trailing Closure, returning a value
//********************************************************************************************************************
print("***************** Function with parameter, Trailing Closure, returning a value *****************")
// This function returns an array of "n" random characters from the alphabet
// By default, the closure passed in the function as a parameter is a non-escaping parameter, which means the closure will execute during the execution of the function.
// Escaping Closure is Asynchronous and Non-Escaping Closure is Synchronous


func findAlphabetLettersNonEscaping(number n : Int, completion : () -> Void ) -> [Character] {
    var selectedCharacters : [Character] = []
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY"
    var selectedChar : Character
    for _ in 1...n {
        selectedChar = letters.randomElement()!
        selectedCharacters.append(selectedChar)
    }
    completion()
    return selectedCharacters
}

var someChars : [Character] = []
someChars = findAlphabetLettersNonEscaping(number: 9){
    print("The selected characters are: ")
}
print(someChars)


// Escaping Closures: When a closure is passed as an argument to the function but that closure is called after the function returns, then such type of closure is known as escaping closure.
print("**************************** Escaping Closure ******************************")
func exampleEscapingClosure(number n : Int, completion : @escaping (String) -> Void ) {
    print("Escaping Closure start")
    let test = "ABCD"
    completion(test)  // we execute the block of code received as closure, but also we passed a value (test) to the caller
    print("Escaping Closure end")
}


//calling the escaping closure,
var myLocalValue = ""
exampleEscapingClosure(number: 3) { (value) in // here value is the String parameter received by the closure
    myLocalValue = value // we can do whatever we want with the parameter, for instance: assign it to a local variable
    print(myLocalValue + myLocalValue)
}

print("After calling the escaping closure")



//********************************************************************************************************************
//  Classes
//********************************************************************************************************************
print("**************************** Classes ******************************")
class Car {
    var brand : String
    var model : String
    var year  : Int
    var isNew : Bool
    var km    : Int64
    
    init(brand: String, model: String, year: Int, isNew : Bool, km: Int64) {
        self.brand = brand
        self.model = model
        self.year = year
        self.isNew = isNew
        self.km = km
    }
    
    convenience init(brand: String, model: String, year: Int) {
        self.init(brand: brand, model: model, year: year, isNew: true, km: 0)
    }
    
    func printValues(){
        print("brand: \(brand), model: \(model), year: \(year), isNew: \(isNew), km: \(km)")
    }
}
var car = Car(brand: "Toyota", model: "Yaris", year: 2025)
car.printValues()



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

class Jedi : Force {
    var name : String
    var rank : String  //Apprentice, Knight, Master
    var weapon  : String
    
    // designated initializer
    init(name: String, rank: String, strength: Int, weapon: String) {
        self.name = name
        self.rank = rank
        self.weapon = weapon
        super.init(strength: strength, essence: "LightSide")
    }
    
    // convenience  initializers
    convenience init(name : String) {
        self.init(name: name, rank : "Apprentice", strength: 20, weapon: "Lightsaber")
    }
    
    override func printValues(){
        print("Jedi: \(self.name), rank: \(self.rank), strength: \(strength), essence: \(essence)")
    }
}
//Using a class:
var anakin = Jedi(name: "Anankin Skywalker", rank: "Knight", strength: 80, weapon: "Lightsaber" )
anakin.printValues()
var dooku = Jedi(name: "Count Dooku", rank: "Master", strength: 100, weapon: "Lightsaber")
dooku.printValues()
//watch out with assigning objects, objects are references
var unknown = dooku;
unknown.name = "Unknown"
unknown.printValues()
dooku.printValues()



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

//********************************************************************************************************************
//  Extensions
//********************************************************************************************************************

print("**************************** Extensions ******************************")

// Extending String
extension String {
    func myOwnStringFunction(){
        print("I have this capability now")
    }
}

//Extending String Optionals
extension Optional where Wrapped == String {
    
    var isBlank : Bool {
        //if we manage to unwrap it then it means is not nil, else is nil
        guard let notNilBool = self else {
            // as it is nil, we consider nil as blank string
            return true
        }
        //at this point nilBool is not null
        return notNilBool.trimmingCharacters(in:.whitespaces).isEmpty
        
    
    }

}

var name123 : String = "John"
name.myOwnStringFunction()


var testnil : String?   //defaults to nil
if testnil.isBlank {
    print("is blank")
}else{
    print("it has a value")
}




//********************************************************************************************************************
//  Type Casting Syntax
//********************************************************************************************************************

print("**************************** Type Casting ******************************")
/*
 In swift type casting is implemented with the "is" and "as" operators
    is  for Type Checking
    as? for Optional Downcasting
    as! for force Downcasting
    as for Upcasting
 */

// Defining a Class Hierarchy for Type Casting

class TVShow{
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: TVShow{
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class TalkShow: TVShow{
    var host: String
    init(name: String, host: String) {
        self.host = host
        super.init(name: name)
    }
}

let theBucketList = Movie(name: "The Bucket List", director: "Rob Reiner")
let interstellar = Movie(name: "Interstellar", director: "Christopher Nolan")
let theTonightShow = TalkShow(name: "The Tonight Show Starring Jimmy Fallon", host: "Jimmy Fallon")

let tvSchedule = [theBucketList, interstellar, theTonightShow]
// tvSchedule must have only one type. This is TVShow because it is a common base class.

//Type Checking, "is", checks which class an instance belongs to. The expression returns a value of type Bool.
//For example, we want to find out how many movies and how many talk shows are in today’s schedule with type checking.

// Checking Type
var movieCount = 0
var talkShowCount = 0

for item in tvSchedule{
    if item is Movie{               // Checking Type with 'is'
        movieCount += 1
    }else if item is TalkShow{
        talkShowCount += 1
    }
}
print("Today, there is/are \(movieCount) Movie(s), \(talkShowCount) Talk Show(s)")
// Today, there is/are 2 Movie(s), 1 Talk Show(s)

/*
 
 Optional Downcasting
 Optional Downcasting, as?, returns an optional value of the type that you are trying to downcast to.

 Use the conditional form of the type cast operator when you are not sure if the downcast will succeed.
 */

var myMovie = tvSchedule[0] as? Movie
print(myMovie?.name)
// Optional("The Bucket List")

var myTalkShow = tvSchedule[0] as? TalkShow
print(myTalkShow?.name)
// Nothing Happens. Because 0-index item is not a TalkShow object

/*
 Actually “as?” Asks a question: “Is this object derived from this class?”.

 If Yes, it returns an Optional object. Properties are also optional. Unwrapping is required to use the values.
 If No, nothing happens and this part of the code is skipped.
 */
 
/*
 Force Downcasting
 The forced form, as!, attempts the downcast and force-unwraps the result as a single compound action.

 Use the forced form of the type cast operator (as!) only when you are sure that the downcast will always succeed.
 */

var myMovieForce = tvSchedule[0] as! Movie
print(myMovieForce.name)
// The Bucket List

//Uncomment when teaching
/*
var myTalkShowForce = tvSchedule[0] as! TalkShow
print(myTalkShowForce.name)
// CRASHED!
*/
/*
 Force Downcasting means “I know what I’m doing. I’m sure of the type of this object.”

 If True, it returns an unwrapped object.
 If False.. The code will be crashed.
 */

/*
 Upcasting
 With Upcasting, a class is requested to behave like its base class. Since the derived class will already have base class properties, no error will occur.
 */

var myTVShow = interstellar as TVShow
print(myTVShow.name)
// Interstellar

/*
 Since the Movie class is already derived from the TVShow class, we may want it to behave as TVShow, and we may not prefer some override functions.

 Type Casting behaves completely hierarchically. So, it is necessary to know the Swift class hierarchy. (Any ⊃ AnyObject ⊃ NSObject)
 */

/*
Summary
To sum up, Optional Downcasting and Force Downcasting are more commonly used in Type Casting.
*/

let myNameAny: Any = "Harvey"
let nameX = myNameAny as? String
print(nameX)
// Optional("Harvey")
print(type(of: nameX))
// Optional<String>

let myNameY = myNameAny as! String
print(myNameY)
// Harvey
print(type(of: myNameY))
