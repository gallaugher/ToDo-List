import UIKit

// Keep track of heroes:
var heroName: String
var alias: String
var age: Int

// We can update these values
heroName = "Wonder Woman"
alias = "Diana Prince"
age = 5000

// And we can create a function with these three values
func tellAboutHero(name: String, alias: String, age: Int) {
    print("\(name) has the alias \(alias) and is \(age) years old.")
}

// And we can call it three times.
//tellAboutHero(name: heroName, alias: alias, age: age)
//tellAboutHero(name: "Black Widow", alias: "Natasha Romanoff", age: 36)
//tellAboutHero(name: "Iron Man", alias: "Tony Stark", age: 48)

// We can also create three arrays to hold hero info, but we'll have to be sure to keep the indexes in sync
var heroNames: [String] = ["Wonder Woman", "Black Widow", "Iron Man"]
var aliases = ["Diana Prince", "Natasha Romanoff", "Tony Stark"]
var ages = [5000, 36, 48]

//tellAboutHero(name: heroNames[1], alias: aliases[1], age: ages[1])

//for index in 0..<aliases.count{
//    tellAboutHero(name: heroNames[index], alias: aliases[index], age: ages[index])
//}

heroNames.remove(at: 2)
heroNames.remove(at: 1)
//for index in 0..<aliases.count{
//    tellAboutHero(name: heroNames[index], alias: aliases[index], age: ages[index])
//}
// Fatal error: Index out of range
//print(heroNames.count, aliases.count, ages.count)

// Now create a single Type to hold three properties or attributes of a hero
struct Hero {
    var name: String
    var alias: String
    var age: Int
}

var hero = Hero(name: "Wonder Woman", alias: "Diana Prince", age: 5000)
//print("Who is \(hero.name)? That's \(hero.alias)")

// With a struct, we can pass a single struct value instead of three seperate parameters.

func heroInfo(hero: Hero) {
    print("\(hero.name) has the alias \(hero.alias) and is \(hero.age) years old.")
}

//heroInfo(hero: hero)

// Even better - we can make the function a method of the struct like this:
struct SuperHero {
    var name: String
    var alias: String
    var age: Int
    
    func info() {
        print("\(name) has the alias \(alias) and is \(age) years old.")
    }
}

var superHero = SuperHero(name: "Black Widow", alias: "Natasha Romanoff", age: 36)

//superHero.info()

// You can also create an array of structs, so all properties are synced in a single array, rather than spread across three arrays
var superHeroes: [SuperHero] = []
superHeroes.append(SuperHero(name: "Wonder Woman", alias: "Diana Prince", age: 5000))
var newHero = SuperHero(name: "Black Widow", alias: "Natasha Romanoff", age: 36)
superHeroes.append(newHero)
superHeroes.append(SuperHero(name: "Iron Man", alias: "Tony Stark", age: 48))

//for index in 0..<superHeroes.count {
//    superHeroes[index].info()
//}

//for index in 0..<superHeroes.count {
//    print("Who is \(superHeroes[index].alias)? Oh that's \(superHeroes[index].name)")
//}

//for superHero in superHeroes {
//    superHero.info()
//}

superHeroes.remove(at: 2)
superHeroes.remove(at: 1)

for superHero in superHeroes {
    superHero.info()
}

print(superHeroes.count)
