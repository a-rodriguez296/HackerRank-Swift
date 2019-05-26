//: Playground - noun: a place where people can play


func alternatingCharacters(s: String) -> Int {
    
    var counter = 0
    var previousLetter:Character? = nil
    
    
    for letter in s {
        
        if previousLetter == letter {
            counter += 1
        }
        previousLetter = letter
    }
    return counter
}
