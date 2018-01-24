//: Playground - noun: a place where people can play

import UIKit

// Optionals
var maybeInt: Int?
maybeInt = 5
maybeInt = nil

// Why use an Optional?
class Person {
    
    var name: String
    var petName: String?
    
    init(name: String, petName: String?) {
        self.name = name
        self.petName = petName
    }
    
    func sayHello() {
        print("Hello, World!")
    }
    
}

let kevin = Person(name: "Kevin", petName: "Barkley")
let shannon = Person(name: "Shannon", petName: nil)

// Force unwrapping - brute force. Crash the program if there's nothing there.
func printNames(person: Person) {
    
    let name = person.name
    let petName = person.petName!
    
    print("\(name) has a pet named \(petName).")

}

printNames(person: kevin)
// printNames(person: shannon) Crash!

// Optional chaining - gracefully fail.
let flakyTeamMember: Person? = nil
flakyTeamMember?.sayHello()

// Optional Binding - be safe.
func safePrintNames(person: Person) {
    
    let name = person.name
    
    if let petName = person.petName {
        print("\(name) has a pet named \(petName).")
    }
    
    else {
        print("\(name) has no pets.")
    }
    
}

safePrintNames(person: kevin)
safePrintNames(person: shannon)
